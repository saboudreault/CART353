class Background {

  int d;  // diameter
  int r, g, b, a;  // colors
  int gray; // color

  Background(int newD, int newA, int newG) {
    d = newD;
    a = newA;
    gray = newG;
  }

  void update() {
    noStroke();
    fill(r, g, b, a);
    ellipse(random(0, width), random(0, height), d, d);
  }

  void randomize() {
    r = int(random(0, 255));
    g = int(random(0, 255));
    b = int(random(0, 255));
  }
  
  void monochrome(){
    r = gray;
    g = gray;
    b = gray;
  }
}