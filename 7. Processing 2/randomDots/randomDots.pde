void setup() {
  size(800, 600);
  setRandomBackground();
  noStroke();
}

void draw() {
  
  float x = random(width);
  float y = random(height);
  setRandomFill();
  
  ellipse(x, y, 30, 30);
}

void setRandomFill() {
  float r = random(255);
  float g = random(255);
  float b = random(255);
  fill(r, g, b, 100);
}

void setRandomBackground() {
  float r = random(255);
  float g = random(255);
  float b = random(255);
  background(r, g, b);
}
