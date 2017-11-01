void nextImage() { //function to move to next image
  if (responseCount == imageResponse.length) { //if the program has gone through all images
    getResults();
    resultDisplay = 0;
    start = false;
  } else { //if there are more images to show
    currentImage = int(random(0, images.length)); //select random image
    if (imageResponse[currentImage] != 0) { //if that image has been show before
      while (imageResponse[currentImage] != 0) { //this makes sure that it won't change to another image that has been shown
        currentImage = int(random(0, images.length)); //select another random image
      }
    }
  }
}

void getResults() { //function to get the results at the end
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

void showResults() { //function to display the results at the end
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
    
    text("done!", 425, buttonY + 45);
  }
}

void nextResultButton() { //function for the next button when displaying results
  noFill();
  rect(925, 375, buttonSize, buttonSize, 10);
  text(">", 925 + 15, 375 + 45);
  
  if ((mousePressed) && ((mouseX > 925 && mouseX < 975) && (mouseY > 375 && mouseY < 425)) && (!pressed)) {
    resultDisplay += 1;
    pressed = true;
  }
}

void startDisplay() { //function for displaying when the test isn't running
  if (responseCount == 0) { //at the start of the program
    background(255);
    text("Images with appear infront of you.\nRate them from 1 to 5.\n1 being the worst,\n5 being the best.", 0, 50);
    noFill();
    rect(425, buttonY, 150, buttonSize, 3);
    text("start", 425, buttonY + 45);
  } else { //at the end of the program
    background(255);
    showResults();
  }
}