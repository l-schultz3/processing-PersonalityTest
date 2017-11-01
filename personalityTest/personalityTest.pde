PFont mono;

void setup() {
  size(1000, 800);
  mono = createFont("Monospaced", 50);
  textFont(mono); //uses a monospace font for easier coordinates
  
  loadImages();
  currentImage = int(random(0, images.length)); //start program with random image
}

void draw() {
  drawShapes();
  
  if (mousePressed) { 
    mouseButton();
  } else {
    pressed = false;
  }
  
  if (!start) {
    startDisplay();
  }
}