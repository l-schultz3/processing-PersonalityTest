PImage image1;
PImage image2;
PImage image3;
PImage image4;
PImage image5;
PImage image6;
PImage image7;
PImage image8;
PImage image9;
PImage image10;
PImage image11;
PImage image12;

PImage[] images = {image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11, image12};
int[] imageResponse = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int[][] imageData = {{2, 1, 2, 2, 2, 1}, 
                     {2, 2, 1, 1, 1, 1}, 
                     {1, 1, 2, 2, 1, 1}, 
                     {1, 1, 1, 2, 2, 1},
                     {1, 1, 2, 2, 2, 1},
                     {1, 2, 1, 2, 2, 1},
                     {1, 1, 2, 2, 2, 1},
                     {1, 1, 2, 2, 2, 1},
                     {1, 2, 1, 1, 2, 2},
                     {1, 1, 1, 2, 1, 2},
                     {2, 1, 1, 2, 1, 1},
                     {2, 2, 1, 0, 1, 2}}; //3,1,3,3,3,3,3,3,2,3,4,0

void loadImages() {
  image1 = loadImage("image1.jpg");
  image2 = loadImage("image2.jpg");
  image3 = loadImage("image3.jpg");
  image4 = loadImage("image4.jpg");
  image5 = loadImage("image5.jpg");
  image6 = loadImage("image6.jpg");
  image7 = loadImage("image7.jpg");
  image8 = loadImage("image8.jpg");
  image9 = loadImage("image9.jpg");
  image10 = loadImage("image10.jpg");
  image11 = loadImage("image11.png");
  image12 = loadImage("image12.jpg");
  
  images[0] = image1;
  images[1] = image2;
  images[2] = image3;
  images[3] = image4;
  images[4] = image5;
  images[5] = image6;
  images[6] = image7;
  images[7] = image8;
  images[8] = image9;
  images[9] = image10;
  images[10] = image11;
  images[11] = image12;
}