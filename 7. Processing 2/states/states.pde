float walkX, walkY;

void setup() {
  size(800, 600);
  walkX = width / 2;
  walkY = height / 2;
  setRandomBackground();
  noStroke();
}

void draw() {  
  float dX = random(-2, 2.2);
  float dY = random(-2, 2);
  
  walkX += dX;
  walkY += dY;
  
  setRandomFill();
  
  ellipse(walkX, walkY, 30, 30);
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
