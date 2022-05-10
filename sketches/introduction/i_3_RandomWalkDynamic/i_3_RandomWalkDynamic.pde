
class Walker {
  int x;
  int y;

  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display () {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    float choice = random(1);
    float mouseWeight = 1.5;
    boolean xPrefRight = x < mouseX; // negative is mouse right
    boolean yPrefBottom = y < mouseY; // negative is mouse bottom
    
    
    if (choice  < 0.25 * (xPrefRight ? mouseWeight : 1)) {
      x++;
    } else if (choice < 0.5 * (!xPrefRight ? mouseWeight : 1)) {
      x--;
    } else if (choice < 0.75 * (yPrefBottom ? mouseWeight : -1 * mouseWeight)) {
      y++;
    } else {
      y--;
    }
  }  
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
