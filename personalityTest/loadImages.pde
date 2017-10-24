PImage imageOne;
PImage imageTwo;
PImage imageThree;
PImage imageFour;
PImage imageFive;
PImage imageSix;
PImage imageSeven;
PImage imageEight;
PImage imageNine;
PImage imageTen;
PImage imageEleven;
PImage imageTwelve;

PImage[] images = {imageOne, imageTwo, imageThree, imageFour, imageFive, imageSix, imageSeven, imageEight, imageNine, imageTen, imageEleven, imageTwelve};
int[] imageResponse = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

void loadImages() {
  imageOne = loadImage("imageOne.jpg");
  imageTwo = loadImage("imageTwo.jpg");
  imageThree = loadImage("imageThree.jpg");
  imageFour = loadImage("imageFour.jpg");
  imageFive = loadImage("imageFive.jpg");
  imageSix = loadImage("imageSix.jpg");
  imageSeven = loadImage("imageSeven.jpg");
  imageEight = loadImage("imageEight.jpg");
  imageNine = loadImage("imageNine.jpg");
  imageTen = loadImage("imageTen.jpg");
  imageEleven = loadImage("imageEleven.png");
  imageTwelve = loadImage("imageTwelve.jpg");
  
  images[0] = imageOne;
  images[1] = imageTwo;
  images[2] = imageThree;
  images[3] = imageFour;
  images[4] = imageFive;
  images[5] = imageSix;
  images[6] = imageSeven;
  images[7] = imageEight;
  images[8] = imageNine;
  images[9] = imageTen;
  images[10] = imageEleven;
  images[11] = imageTwelve;
}