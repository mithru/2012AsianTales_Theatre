float theta;  

float theHeight = 5;

float degreeOfChange = 10;

float theStartOfTree = 0;

float shrinkAmount = 0.65;

int minimumHeight = 2;

float angleMagnify = 2;

float ellipseShrink = 5;

float XVAL = 0;
float YVAL = 0;

void setup() {
  size(displayWidth, displayHeight);
  //smooth();
  noCursor();
}

int increment = 5;
int incrementY = 5;

void draw() {
  
  XVAL += increment;
  YVAL += incrementY;
  
  if(XVAL > displayWidth){
    increment*= -1;
  } else if(XVAL < 0){
    increment *= -1;
  }
  if(YVAL > displayHeight){
    incrementY*= -1;
  } else if(YVAL < 0){
    incrementY *= -1;
  }
  
  background(0);
 // frameRate(30);
  stroke(255);

  theStartOfTree = YVAL/2;

  float a = ((XVAL*2) / (float) width) * 90f;
  theta = radians(a);
  translate(width/2, height);
  //line(0, 0, 0, -theStartOfTree);
  translate(0, -theStartOfTree);
  //ellipse(0, 0, 5, 5);

  theHeight = YVAL / 2;
  branch(theHeight);
  println(theHeight);
}



void branch(float h) {
  h *= shrinkAmount;

  if (h > minimumHeight) {
    pushMatrix();    
    rotate(theta*angleMagnify); 
    noStroke();
    ellipse(0, 0, h/ellipseShrink, h/ellipseShrink);
    translate(0, -h); 
    branch(h);       
    popMatrix();     
    

    pushMatrix();
    rotate(-theta*angleMagnify);  
    stroke(h);
    noStroke();
    ellipse(0, 0, h/ellipseShrink, h/ellipseShrink);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}

void mouseClicked()
{
  saveFrame("img####.png");
}
