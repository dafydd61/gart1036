int mode = 0;

float walkX, walkY;

void setup() {
  fullScreen();
  background(0);
  noStroke();
  walkX = width / 2;
  walkY = height / 2;
}

void draw() {
  float walkDX = random(-2, 2);
  float walkDY = random(-2, 2);
  
  walkX += walkDX;
  walkY += walkDY;
  
  float walkR = random(255);
  float walkG = random(255);
  float walkB = random(255);
  
  fill(walkR, walkG, walkB);
  ellipse(walkX, walkY, 10, 10);
}
