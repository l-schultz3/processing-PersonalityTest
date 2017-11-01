void drawShapes() { //funtion to draw the shapes and images
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
}

void mouseButton() { //function to respond to mouse presses
  if (start) { //if the images are being displayed, look for mouse pressing buttons 1-5
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
  } else { //checks if the start button has been pressed
    if (((mouseX >= 425) && (mouseX <= 425 + 150)) && ((mouseY >= buttonY) && (mouseY <= buttonY + buttonSize)) && (!pressed)) {
      start = true;
      pressed = true;
    }
  }
}