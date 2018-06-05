float posX = 0;
float posY = 0;

int speedX = 4;
int speedY = 4;

float r, g, b;

void setup() {
  size(800, 600);
  noStroke();
  // set initial fill
  setRandomFill();
}

void setRandomFill() {
  r = random(255);
  g = random(255);
  b = random(255);
  fill(r, g, b);
}

void draw() {
  posX += speedX;
  posY += speedY;
  
  if (posX >= width || posX <= 0) {
    speedX = -speedX;
    setRandomFill();
  }
  if (posY >= height || posY <= 0) {
    speedY = -speedY;
    setRandomFill();
  }
  
  background(255);

  ellipse(posX, posY, 100, 100);
}
