color lineColor1;
color lineColor2;
color lineColor3;

float lineWidth1;
float lineWidth2;
float lineWidth3;

float speed1;
float speed2;
float speed3;

void setup() {
  fullScreen();

  float r = random(255);
  float g = random(255);
  float b = random(255);
  lineColor1 = color(r, g, b);

  r = random(255);
  g = random(255);
  b = random(255);
  lineColor2 = color(r, g, b);

  r = random(255);
  g = random(255);
  b = random(255);
  lineColor3 = color(r, g, b);

  lineWidth1 = random(80, 200);
  lineWidth2 = random(80, 200);
  lineWidth3 = random(80, 200);
  
  noStroke();
}

void draw() {
  background(255);
  
  float offset1 = map(mouseX, 0, width, -100, 100);
  float offset2 = map(mouseX, 0, width, -200, 200);
  float offset3 = map(mouseX, 0, width, -400, 400);
  
  drawLines(lineWidth1, lineColor1, offset1);
  drawLines(lineWidth2, lineColor2, offset2);
  drawLines(lineWidth3, lineColor3, offset3);
}

void drawLines(float lineWidth, color lineColor, float offset) {
  fill(lineColor);
  for (float xPos = -100; xPos < width + 100; xPos += lineWidth * 2) {
    rect(xPos + offset, 0, lineWidth, height);
  }
}
