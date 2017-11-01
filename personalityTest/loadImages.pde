//some numbers are skipped in file names because I removed those images

PImage image1;
PImage image2;
PImage image6;
PImage image9;
PImage image10;
PImage image11;
PImage image12;
PImage image13;
PImage image14;
PImage image15;
PImage image16;
PImage image17;
PImage image18;
PImage image19;
PImage image20;
PImage image21;
PImage image22;
PImage image23;
PImage image24;
PImage image25;
PImage image26;
PImage image27;
PImage image28;
PImage image29;
PImage image30;
PImage image31;
PImage image32;
PImage image33;
PImage image34;
PImage image35;
PImage image36;
PImage image37;
PImage image38;
PImage image39;
PImage image40;
PImage image41;

PImage[] images = {image1, image2, image6, image9, image10, image11, image12, image13, image14, image15, image16, image17, image18, image19, image20, image21, image22, image23, image24, image25, image26, image27, image28, image29, image30, image31, image32, image33, image34, image35, image36, image37, image38, image39, image40, image41};
int[] imageResponse = {};
int[][] imageData = {{2, 1, 2, 1},
                     {2, 2, 1, 1},
                     {1, 2, 2, 1},
                     {1, 2, 1, 1},
                     {1, 1, 2, 2},
                     {2, 1, 2, 1},
                     {2, 2, 0, 2},
                     {2, 1, 1, 2},
                     {1, 2, 1, 2},
                     {1, 2, 1, 1},
                     {2, 2, 1, 2},
                     {2, 1, 1, 0},
                     {2, 1, 2, 2},
                     {2, 1, 2, 2},
                     {1, 2, 2, 1},
                     {1, 2, 1, 1},
                     {2, 1, 2, 1},
                     {2, 1, 1, 1},
                     {2, 2, 1, 1},
                     {1, 2, 1, 2},
                     {1, 2, 1, 2},
                     {2, 1, 0, 2},
                     {1, 1, 2, 1},
                     {1, 1, 2, 1},
                     {1, 1, 2, 1},
                     {2, 2, 1, 0},
                     {2, 2, 1, 2},
                     {1 ,2, 2, 1},
                     {2, 2, 2, 1},
                     {2, 2, 1, 2},
                     {2, 1, 0, 2},
                     {1, 1, 2, 2},
                     {1, 1, 2, 2},
                     {1, 1, 2, 2},
                     {1, 1, 1, 1},
                     {1, 2, 1, 2}};

void loadImages() {
  for (int i = 0; i < images.length; i++) {
    imageResponse = append(imageResponse, 0);
  }
  
  image1 = loadImage("image1.jpg");
  image2 = loadImage("image2.jpg");
  image6 = loadImage("image6.jpg");
  image9 = loadImage("image9.jpg");
  image10 = loadImage("image10.jpg");
  image11 = loadImage("image11.png");
  image12 = loadImage("image12.jpg");
  image13 = loadImage("image13.jpg");
  image14 = loadImage("image14.jpg");
  image15 = loadImage("image15.jpg");
  image16 = loadImage("image16.jpg");
  image17 = loadImage("image17.jpg");
  image18 = loadImage("image18.jpg");
  image19 = loadImage("image19.jpg");
  image20 = loadImage("image20.jpg");
  image21 = loadImage("image21.jpg");
  image22 = loadImage("image22.jpg");
  image23 = loadImage("image23.jpg");
  image24 = loadImage("image24.jpg");
  image25 = loadImage("image25.jpg");
  image26 = loadImage("image26.jpg");
  image27 = loadImage("image27.jpg");
  image28 = loadImage("image28.jpg");
  image29 = loadImage("image29.jpg");
  image30 = loadImage("image30.jpg");
  image31 = loadImage("image31.jpg");
  image32 = loadImage("image32.jpg");
  image33 = loadImage("image33.jpg");
  image34 = loadImage("image34.jpg");
  image35 = loadImage("image35.jpg");
  image36 = loadImage("image36.png");
  image37 = loadImage("image37.jpg");
  image38 = loadImage("image38.jpg");
  image39 = loadImage("image39.jpg");
  image40 = loadImage("image40.jpg");
  image41 = loadImage("image41.jpg");
  
  images[0] = image1;
  images[1] = image2;
  images[5] = image6;
  images[8] = image9;
  images[9] = image10;
  images[10] = image11;
  images[11] = image12;
  images[12] = image13;
  images[13] = image14;
  images[14] = image15;
  images[15] = image16;
  images[16] = image17;
  images[17] = image18;
  images[18] = image19;
  images[19] = image20;
  images[20] = image21;
  images[21] = image22;
  images[22] = image23;
  images[23] = image24;
  images[24] = image25;
  images[25] = image26;
  images[26] = image27;
  images[27] = image28;
  images[28] = image29;
  images[2] = image30;
  images[3] = image31;
  images[4] = image32;
  images[6] = image33;
  images[7] = image34;
  images[29] = image35;
  images[30] = image36;
  images[31] = image37;
  images[32] = image38;
  images[33] = image39;
  images[34] = image40;
  images[35] = image41;
}