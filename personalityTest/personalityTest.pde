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

int resultDisplay;

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
  print("\n" + str(imageResponse));
  
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
      showResults();
    }
  }
}

void nextImage() { //function to move to next image
  if (responseCount == imageResponse.length) { //if the program has gone through all images
    getResults();
    resultDisplay = 0;
    start = false;
  } else { //if there are more images to show
    currentImage = int(random(0, images.length - 1)); //select random image
    if (imageResponse[currentImage] != 0) { //if that image has been show before
      while (imageResponse[currentImage] != 0) { //this makes sure that it won't change to another image that has been shown
        currentImage = int(random(0, images.length - 1)); //select another random image
      }
    }
  }
}

void getResults() { //gets the results at the end
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

void showResults() {
  if (resultDisplay == 0) {
    if (responses[0] <= 1 && responses[0] >= -1) {
      text("You seem to have no preference\nwhether someone is alone or not", 0, 50);
    } else if (responses[0] < 0) {
      text("You're quite social!\nYou love it when people are in\ngroups!", 0, 50);
    } else {
      text("You must like being one on one.\nYou rated images higher\nwhen there was only one person in\nthem", 0, 50);
    }
    nextResultButton();
  } else if (resultDisplay == 1) {
    if (responses[1] <= 1 && responses[1] >= -1) {
      text("You're completely neutral when it\ncomes to peoples skin colour!", 0, 50);
    } else if (responses[1] < 0) {
      text("You prefer POC.\nNot sure I can blame you", 0, 50);
    } else {
      text("Hmm...\nYou rated white people higher\nthan others", 0, 50);
    }
    nextResultButton();
  }  else if (resultDisplay == 2) {
    if (responses[2] <= 1 && responses[2] >= -1) {
      text("You don't care how old\nsomeone is!", 0, 50);
    } else if (responses[2] < 0) {
      text("Don't like kids? That's fair", 0, 50);
    } else {
      text("Kids are the best", 0, 50);
    }
    nextResultButton();
  }  else if (resultDisplay == 3) {
    if (responses[3] <= 1 && responses[3] >= -1) {
      text("It doesn't matter which gender\nsomeone is to you", 0, 50);
    } else if (responses[3] < 0) {
      text("You rated females higher\nthan males", 0, 50);
    } else {
      text("You rated males higher\nthan females", 0, 50);
    }
  }
}

void nextResultButton() {
  noFill();
  rect(925, 375, buttonSize, buttonSize, 10);
  text(">", 925 + 15, 375 + 45);
  
  if ((mousePressed) && ((mouseX > 925 && mouseX < 975) && (mouseY > 375 && mouseY < 425)) && (!pressed)) {
    resultDisplay += 1;
    pressed = true;
  }
}