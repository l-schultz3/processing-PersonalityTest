PImage imageOne;
PImage imageTwo;
PImage imageThree;
PImage imageFour;
PImage imageFive;
PImage imageSix;
PImage imageSeven;
PImage imageEight;

PImage[] images = {imageOne, imageTwo, imageThree, imageFour, imageFive, imageSix, imageSeven, imageEight};
int[] imageResponse = {0, 0, 0, 0, 0, 0, 0, 0};

void loadImages() {
  imageOne = loadImage("imageOne.jpg");
  imageTwo = loadImage("imageTwo.jpg");
  imageThree = loadImage("imageThree.jpg");
  imageFour = loadImage("imageFour.jpg");
  imageFive = loadImage("imageFive.jpg");
  imageSix = loadImage("imageSix.jpg");
  imageSeven = loadImage("imageSeven.jpg");
  imageEight = loadImage("imageEight.jpg");
  
  images[0] = imageOne;
  images[1] = imageTwo;
  images[2] = imageThree;
  images[3] = imageFour;
  images[4] = imageFive;
  images[5] = imageSix;
  images[6] = imageSeven;
  images[7] = imageEight;
}