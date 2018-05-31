void setup() {
  size(800, 800);
}

void draw() {
  background(188, 211, 214);
  
  for (int i = 0; i <= 80; i ++) {
    
    float endX = i * mouseX;
    float endX2 = map(i, 0, 800, 800, 0);
    
    float r = map(i, 0, 800, mouseX, 80);
    float g = map(i, 0, 800, 255, 100);
    float b = map(i, 0, 800, mouseY, 255);
    
    stroke(r, g, b);
    
    line(0, 800, endX, 0);
    line(800, 800, endX2, 0);
  }
}
