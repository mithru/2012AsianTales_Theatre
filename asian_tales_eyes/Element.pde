class Element
{
  int pictureNumber, personID;
  int xPosition, yPosition;

  Element(int xPos, int yPos, int picNum, int ID)
  {
    xPosition = xPos;
    yPosition = yPos;
    pictureNumber = picNum;
    personID = ID;
  }

  void display()
  {
    //image(img[int(random(0, (numberOfImages-1)))], (i*imageWidth)+i*space, (j*imageHeight)+j*space);

    if (personID < numberOfPeople) {
      image(img[(personID * 10) + pictureNumber], xPosition, yPosition);
    }
    if (personID >= numberOfPeople) {
      rect(xPosition, yPosition, imageWidth, imageHeight);
    }

    //text(personID ,xPosition + 10, yPosition + 10);
    //    filter(GRAY);
  }

  void eyesRandom() 
  {
    pictureNumber = int(random(2, numberOfImages));
  }

  void eyesClose()
  {
    pictureNumber = 0;
  }  

  void eyesOpen()
  {
    pictureNumber = 1;
  }
}

