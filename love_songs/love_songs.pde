PImage bg, old_man, old_woman, man, woman, boy, girl; 

Male male;
Female female;

int groundHeight = 365; //height from top of screen to "ground" in the image

void setup() {
  size(displayWidth, displayHeight);

  bg = loadImage("anime_bg_widescreen.jpg");
  woman = loadImage("woman.png");
  man = loadImage("man.png");
  girl = loadImage("girl.png");
  boy = loadImage("boy.png");
  old_woman = loadImage("old_woman.png");
  old_man = loadImage("old_man.png");
  
  female = new Female(60, groundHeight);
  male = new Male(800, groundHeight);
  
}

void draw() {

  image(bg, 0, 0);
  
  female.display();
  male.display();
}

void keyPressed(){
  female.keyReleased();
  male.keyReleased();
  
  switch(key){
    case '1':
    female.changeState(0);
    male.changeState(0);
    break;
    
    case '2':
    female.changeState(1);
    male.changeState(1);
    break;
    
    case '3':
    female.changeState(2);
    male.changeState(2);
    break;
  }
}
