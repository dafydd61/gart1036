

void setup() {
  size(800, 800);
  noStroke();
  float r = random(255);
  float g = random(255);
  float b = random(255);
  background(r, g, b);
}

void draw() {
  float r = random(255);
  float g = random(255);
  float b = random(255);
  fill(r, g, b, 180);
  float diameter = dist(mouseX, mouseY, pmouseX, pmouseY);
  ellipse(mouseX, mouseY, diameter, diameter);
}

void keyPressed() {
  switch(key) {
    case ' ':
      float r = random(255);
      float g = random(255);
      float b = random(255);
      background(r, g, b);
      break;
    default:
      break;
  }
}
