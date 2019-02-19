//Movement Example Code
//Please note, what I have here is not the only method to complete this assignment. If you would like to scrap it, you may.

//variables for position
float xPos =0;
float yPos = 0;

//Booleans for movement
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false; 

void setup() {
  //window modifications
  size(1000, 800);
  background(255);

  //initial position
  xPos = width/2;
  yPos = height/2;

  //shape properties
  noStroke();
  fill(0, 0, 255);
}

void draw() {
  //wipe
  background(255);
  

  //xPos++;
  //update position
  if (left && xPos>10) {
    xPos = xPos - 7;
  }
  if ( right && xPos<width -10) {
    xPos = xPos + 7;
  }
  if (up && yPos>10) {
    yPos = yPos - 7;
  }
  if (down && yPos<height-10) {
    yPos = yPos + 7; 
  }
  //draw shape
  translate(xPos,yPos);
  
  ellipse(0, 0, 20, 20);
}

void keyPressed() {
  if (key == 'a' ) {
    left = true;
  }
  if ( key == 'd') {
    right = true ;
  }
  if (key == 'w' ) {
    up = true;
  }

  if (key == 's' ) {
    down = true;
  }
}
void keyReleased() {
    if (key == 'a') {
    left = false;
  }
  if ( key == 'd') {
    right = false ;
  }
  if (key == 'w') {
    up = false;
  }

  if (key == 's') {
    down = false;
  }
}
