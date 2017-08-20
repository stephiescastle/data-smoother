# Data Smoothing in Processing

Originally developed to work with an arduino using the StandardFirmata library as detailed on http://playground.arduino.cc/Interfacing/Processing

To use it with an arduino, set up an Arduino object as described above, and assign the pin data to the rawData variable in the draw() loop. 
`rawData = myArduino.analogRead(0);`

Using the Smoother class requires the following:

1. initializing the object. 

    `Smoother foo;`

2. instantiating the object in the `setup()` function 

    `foo = new Smoother(resolution);`

3. setting your data source in the `draw()` loop 

    `rawData = DATA_SOURCE`

4. to smooth your data, use the `average(rawData)` method

    `smoothedValue = foo.average(rawData);`
   
Note: The example data in this demo is randomized data between 0-1000. The smoothed data should appear to waver around the midpoint (500).

------

## Future Development

* add other data smoothing methods