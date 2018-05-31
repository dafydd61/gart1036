PImage photo1;
PImage photo2;

boolean showPhoto2 = false;

void setup() {
  size(800, 800);
  
  photo1 = loadImage("p-dino.jpg");
  photo2 = loadImage("p-croswell.jpg");
}

void draw() {
  background(255);
  tint(206, 50, 250);
  image(photo1, 0, 0, width / 2, height / 2);
  tint(255, 170, 10);
  image(photo1, width / 2, 0, width / 2, height / 2);
  tint(230, 123, 78);
  image(photo1, 0, height / 2, width / 2, height / 2);
  tint(209, 255, 31);
  image(photo1, width / 2, height / 2, width / 2, height / 2);
  
  if (showPhoto2) {
    tint(255, 255);
    image(photo2, 0, 0, width, height);
  }
}

void mouseReleased() { // (also, keyReleased)
  
  showPhoto2 = !showPhoto2;
  
  /* Long version:
  if (showPhoto2) {
    showPhoto2 = false;
  } else {
    showPhoto2 = true;
  }
  */
}
