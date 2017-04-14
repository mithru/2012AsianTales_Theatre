Element[] theElement;

color bg = color(0);

PImage[] img;

int imageWidth = 80;
int imageHeight = 60;

int numberOfImages = 10;

//int imagesPerPerson = 10;
int numberOfPeople = 12;
int numberOfRandom = 0;

int numberHorizontal = 20;
int numberVertical = 20;

int space = 0;

//int displayW = imageWidth*numberVertical;
//int displayH = imageHeight*numberHorizontal;
int numberOfElements = numberHorizontal*numberVertical;

void setup()
{
   size(displayWidth, displayHeight);
  //size(800, 600);
  background(bg);
  img = new PImage[numberOfImages*numberOfPeople];
  for (int i = 0; i < numberOfImages; i++) {
    for (int j = 0; j < numberOfPeople; j++) {
      img[int((j*10)+i)] = loadImage(j+"_"+i+".jpg");
    }
  }

  theElement = new Element[numberOfElements];
  
  

  for (int i = 0; i < numberHorizontal; i++) {
    for (int j = 0; j < numberVertical; j++) {
      theElement[((i*(numberHorizontal-1))+(i+j))] = new Element(((i*imageWidth)+i*space), ((j*imageHeight)+j*space), 0, int(random(0, (numberOfPeople+numberOfRandom))));

      //      println((i*(numberHorizontal-1))+(i+j));
      //      text(""+((i*(numberHorizontal-1))+(i+j)), 15+(i*35), 15+(j *35));
    }
  }
}

int count = 0;

void draw() 

{
  count++;
  for (int i = 0; i<numberOfElements; i++) {
   // theElement[i].eyesRandom();
    theElement[i].display();
  }
//   theElement[count%(numberHorizontal*numberVertical )].eyesRandom();
   theElement[int(random(numberHorizontal*numberVertical) )].eyesRandom();

}

void mouseClicked() {
  saveFrame("eyes-######.jpg");
}

void keyPressed()
{
  if (key == 'z') {
    for (int i = 0; i<numberOfElements; i++) {
      theElement[i].eyesClose();
    }
  }
  if (key == 'a') {
    for (int i = 0; i<numberOfElements; i++) {
      theElement[i].eyesOpen();
    }
  }
  if (key == ' ') {
    for (int i = 0; i<numberOfElements; i++) {
      theElement[i].eyesRandom();
    }
  }


  println(key);
}

