void setup() {
  size(800, 800);
  colorMode(HSB);
}

void draw() {
  background(186, 12, 100);
  
  for (int i = 0; i <= 80; i ++) {
    
    float spacing = map(mouseX, 0, width, 0, 50);
    float endX = i * spacing;
    float endX2 = width - endX;
    
    float h = map(mouseY, 0, 800, 0, 255);
    float s = 255;
    float b = 255;
    
    stroke(h, s, b);
    
    line(0, 800, endX, 0);
    line(800, 800, endX2, 0);
  }
}
