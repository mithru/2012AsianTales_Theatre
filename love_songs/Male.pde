class Male {

  float xPos, yPos;
  int ID; // ID: 0 = young, 1 = middle age, 2 = old

  float stepSize; // size of position change for each step (in pixels)
  int jumpSize;
  
  Male(float xPos, float yPos) {
    this.xPos = xPos;
    this.yPos = yPos;
    
    stepSize = 10;
    jumpSize = -1;
    ID = 0;
  }  

  void display() {
    switch(ID) {
    case 0: 
      image(boy, xPos, yPos);
      break;

    case 1: 
      image(man, xPos, yPos);
      break;

    case 2: 
      image(old_man, xPos, yPos);
      break;
    }
  }

  void keyReleased() {
    switch(key) {
    case 'o':
      xPos -= stepSize;
      yPos += (stepSize*jumpSize);
      jumpSize = -jumpSize;
      break; 

    case 'p':
      xPos += stepSize;
      yPos += (stepSize*jumpSize);
      jumpSize = -jumpSize;
      break;
    }
  }
  
  
  void changeState(int ID) {
    this.ID = ID;
    xPos = 800;
  }
}
