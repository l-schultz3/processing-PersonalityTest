PFont mono;

boolean pressed;
boolean start = false;

int imageX = 50;
int imageY = 10;
int imageW = 900;
int imageH = 650;
int buttonSize = 60;
int buttonY = 700;
int buttonOneX = 340;
int buttonTwoX = 405;
int buttonThreeX = 470;
int buttonFourX = 535;
int buttonFiveX = 600;

int currentImage = 0;
int responseCount = 0;

int[] responses = {0, 0, 0, 0, 0, 0};

void setup() {
  size(1000, 800);
  mono = createFont("Monospaced", 50);
  textFont(mono);
  
  loadImages();
  
  //currentImage = int(random(0, images.length - 1));
}

void draw() {
  background(255);
  stroke(60);
  strokeWeight(3);
  fill(255);
  rect(imageX, imageY, imageW - 1, imageH - 1);
  image(images[currentImage], imageX, imageY, imageW, imageH);
  
  rect(buttonOneX, buttonY, buttonSize, buttonSize, 3);
  rect(buttonTwoX, buttonY, buttonSize, buttonSize, 3);
  rect(buttonThreeX, buttonY, buttonSize, buttonSize, 3);
  rect(buttonFourX, buttonY, buttonSize, buttonSize, 3);
  rect(buttonFiveX, buttonY, buttonSize, buttonSize, 3);
  
  fill(60);
  text("1", buttonOneX + 15, buttonY + 45);
  text("2", buttonTwoX + 15, buttonY + 45);
  text("3", buttonThreeX + 15, buttonY + 45);
  text("4", buttonFourX + 15, buttonY + 45);
  text("5", buttonFiveX + 15, buttonY + 45);
  text(str(currentImage), buttonFiveX + 60, buttonY);
  
  if ((mousePressed) && (start)) { 
    if (((mouseX >= buttonOneX) && (mouseX <= buttonOneX + buttonSize)) && ((mouseY >= buttonY) && (mouseY <= buttonY + buttonSize)) && (!pressed)) {
      imageResponse[currentImage] = 1;
      responseCount += 1;
      nextImage();
      pressed = true;
    } else if (((mouseX >= buttonTwoX) && (mouseX <= buttonTwoX + buttonSize)) && ((mouseY >= buttonY) && (mouseY <= buttonY + buttonSize)) && (!pressed)) {
      imageResponse[currentImage] = 2;
      responseCount += 1;
      nextImage();
      pressed = true;
    } else if (((mouseX >= buttonThreeX) && (mouseX <= buttonThreeX + buttonSize)) && ((mouseY >= buttonY) && (mouseY <= buttonY + buttonSize)) && (!pressed)) {
      imageResponse[currentImage] = 3;
      responseCount += 1;
      nextImage();
      pressed = true;
    } else if (((mouseX >= buttonFourX) && (mouseX <= buttonFourX + buttonSize)) && ((mouseY >= buttonY) && (mouseY <= buttonY + buttonSize)) && (!pressed)) {
      imageResponse[currentImage] = 4;
      responseCount += 1;
      nextImage();
      pressed = true;
    } else if (((mouseX >= buttonFiveX) && (mouseX <= buttonFiveX + buttonSize)) && ((mouseY >= buttonY) && (mouseY <= buttonY + buttonSize)) && (!pressed)) {
      imageResponse[currentImage] = 5;
      responseCount += 1;
      nextImage();
      pressed = true;
    }
  } else if ((mousePressed) && (!start)) {
    if (((mouseX >= 425) && (mouseX <= 425 + 150)) && ((mouseY >= buttonY) && (mouseY <= buttonY + buttonSize)) && (!pressed)) {
      start = true;
      pressed = true;
    }
  } else {
    pressed = false;
  }
  
  if (!start) {
    background(255);
    text("Images with appear infront of you.\nRate them from 1 to 5.\n1 being the worst,\n5 being the best.", 0, 50);
    noFill();
    rect(425, buttonY, 150, buttonSize);
    text("start", 425, buttonY + 45);
  }
}

void nextImage() {
  if (responseCount == imageResponse.length) {
    getResults();
    print(str(responses));
  } else {
    currentImage += 1;
    /*currentImage = int(random(0, images.length));
    if (imageResponse[currentImage] != 0) {
      while (imageResponse[currentImage] != 0) {
        currentImage = int(random(0, images.length - 1));
      }
    }*/
  }
}

void getResults() {
  for (int i = 0; i < responses.length; i++) {
    for (int j = 0; j < imageData.length; j++) {
      for (int k = 0; k < imageData[j].length; k++) {
        if (imageData[j][k] == 1) {
          responses[i] += imageResponse[j];
        } else {
          responses[i] -= imageResponse[j];
        }
      }
    }
  }
}