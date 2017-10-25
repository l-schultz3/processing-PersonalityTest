PImage image1;
PImage image2;
PImage image3;
//PImage image4;
PImage image5;
PImage image6;
PImage image7;
PImage image8;
PImage image9;
PImage image10;
//PImage image11;
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

PImage[] images = {image1, image2, image3, /*image4,*/ image5, image6, image7, image8, image9, image10, /*image11,*/ image12, image13, image14, image15, image16, image17, image18, image19, image20, image21, image22, image23, image24, image25, image26, image27, image28, image29, image30};
int[] imageResponse = {};
int[][] imageData = {{2, 1, 2, 2, 2, 1}, //1
                     {2, 2, 1, 1, 1, 1}, //2
                     {1, 1, 2, 2, 1, 1}, //3
                     //{1, 1, 1, 2, 2, 1}, //4
                     {1, 1, 2, 2, 2, 1}, //5
                     {1, 2, 1, 2, 2, 1}, //6
                     {1, 1, 2, 2, 2, 1}, //7
                     {1, 1, 2, 2, 2, 1}, //8
                     {1, 2, 1, 1, 2, 2}, //9
                     {1, 1, 1, 2, 1, 2}, //10
                     //{2, 1, 1, 2, 1, 1}, //11
                     {2, 2, 1, 0, 1, 2}, //12
                     {2, 1, 1, 1, 1, 2}, //13
                     {1, 2, 1, 1, 1, 2}, //14
                     {1, 2, 1, 1, 1, 2}, //15
                     {2, 2, 0, 1, 1, 1}, //16
                     {2, 1, 1, 2, 1, 0}, //17
                     {2, 1, 1, 2, 1, 2}, //18
                     {2, 1, 1, 2, 1, 2}, //19
                     {1, 2, 2, 2, 2, 1}, //20
                     {1, 2, 1, 1, 2, 1}, //21
                     {2, 1, 2, 2, 1, 1}, //22
                     {2, 1, 1, 1, 1, 1}, //23
                     {2, 2, 1, 1, 1, 1}, //24
                     {1, 2, 1, 1, 1, 2}, //25
                     {1, 2, 1, 1, 1, 2}, //26
                     {2, 2, 1, 0, 1, 2}, //27 WRONG
                     {2, 2, 1, 0, 1, 2}, //28
                     {2, 2, 1, 0, 1, 2}}; //3,1,3,3,3,3,3,3,2,3,4,0

void loadImages() {
  for (int i = 0; i < images.length; i++) {
    imageResponse = append(imageResponse, 0);
  }
  
  image1 = loadImage("image1.jpg");
  image2 = loadImage("image2.jpg");
  image3 = loadImage("image3.jpg");
  //image4 = loadImage("image4.jpg");
  image5 = loadImage("image5.jpg");
  image6 = loadImage("image6.jpg");
  image7 = loadImage("image7.jpg");
  image8 = loadImage("image8.jpg");
  image9 = loadImage("image9.jpg");
  image10 = loadImage("image10.jpg");
  //image11 = loadImage("image11.png");
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
  
  images[0] = image1;
  images[1] = image2;
  images[2] = image3;
  //images[3] = image4;
  images[4] = image5;
  images[5] = image6;
  images[6] = image7;
  images[7] = image8;
  images[8] = image9;
  images[9] = image10;
  //images[10] = image11;
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
  images[3] = image27; //26
  images[10] = image28; //27
  images[26] = image29; //28
  images[27] = image30; //29
};