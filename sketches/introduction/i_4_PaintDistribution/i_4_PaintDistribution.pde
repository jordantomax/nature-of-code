import java.util.Random;

Random generator;

void setup() {
  size(640, 360);
  generator = new Random();
}

void draw() {
  generator.nextGaussian();
}
