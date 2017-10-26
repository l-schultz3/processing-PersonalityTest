PFont mono;

boolean pressed; //prevents the program from running code multiple times when the mouse is pressed
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

int currentImage;
int responseCount;

int[] responses = {0, 0, 0, 0};

void setup() {
  size(1000, 800);
  background(0);
  fill(255);
  text("LOADING...", 0, 50);
  
  mono = createFont("Monospaced", 50);
  textFont(mono); //uses a monospace font for easier coordinates
  
  loadImages();
  
  currentImage = int(random(0, images.length - 1)); //start program with random image
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
  text(str(currentImage), buttonFiveX + 80, buttonY +45);
  
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
    if (responseCount == 0) {
      background(255);
      text("Images with appear infront of you.\nRate them from 1 to 5.\n1 being the worst,\n5 being the best.", 0, 50);
      noFill();
      rect(425, buttonY, 150, buttonSize, 3);
      text("start", 425, buttonY + 45);
    } else {
      background(255);
      text("end", 0, 50);
    }
  }
}

void nextImage() { //function to move to next image
  if (responseCount == imageResponse.length) { //if the program has gone through all images
    getResults();
    print(str(responses));
    start = false;
  } else { //if there are more images to show
    currentImage = int(random(0, images.length)); //select random image
    if (imageResponse[currentImage] != 0) { //if that image has been show before
      while (imageResponse[currentImage] != 0) { //this makes sure that it won't change to another image that has been shown
        currentImage = int(random(0, images.length - 1)); //select another random image
      }
    }
  }
}

void getResults() { //gets the results at the end of the game
  for (int i = 0; i < imageData.length; i++) {
    for (int j = 0; j < imageData[i].length; j++) {
      if (imageData[i][j] == 1) {
        responses[j] += imageResponse[i];
      } else if (imageData[i][j] == 2) {
        responses[j] -= imageResponse[i];
      }
    }
  }
}