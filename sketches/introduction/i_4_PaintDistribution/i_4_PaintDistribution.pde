// Create a Gaussian distribution of dots, also colored with a Gaussian distribution

import java.util.Random;

Random generator;
int i;
int hueMax = 360;

void setup() {
  size(640, 360);
  background(25, 25, 25);
  colorMode(HSB, hueMax, 100, 100);
  generator = new Random();
}

void draw() {
  if (i == 1000) noLoop();
  // nextGaussian returns a normal distribution of random numbers with a mean of zero and a standard deviation of 1
  float num = (float) generator.nextGaussian();
  float sd = 60;
  float mean = 320;
  float x = sd * num + mean;

  noStroke();
  fill(hueMax*num*(sd/width)+(mean/width), 100, 100);
  ellipse(x, 180, 16, 16);

  i++;
}
