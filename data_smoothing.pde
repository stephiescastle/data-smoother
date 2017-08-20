// initialize smoother object
Smoother foo;

int rawData;
int smoothedValue;

void setup() {
  
  // instantiate smoother and set resolution
  foo = new Smoother(40);  
  
}

void draw() {
  
  // read data
  rawData = int(random(1000));                    // replace with your data source
  
  // smooth data
  smoothedValue = foo.average(rawData);    // use smoothed value
  println(smoothedValue);                           // print value to console

}