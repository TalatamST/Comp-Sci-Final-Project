float left=375;
float right=375;
float x=500;
float xspeed=1;
float yspeed=1;

void setup() {
  size(1000, 750);
  background(0);

}

void draw() {
  background(0);
  noStroke();
  rect(50, left, 50, 90);
  fill(255, 0, 187);

  rect(920, right, 50, 90);
  fill(255, 255, 187);
 x+=xspeed;
  ellipse((int)(Math.random()*1000), (int)(Math.random()*750), 15, 15);
  fill(255, 255, 255);
   
  //x=x+5;
  if(x>width){
    xspeed*=-1;
  }


  if (keyPressed==true && key=='s') {
    left=left+6;
  }
  if (keyPressed==true && key=='w') {
    left=left-6;
  }
  if (keyPressed==true && key=='k') {
    right=right+6;
  }
  if (keyPressed==true && key=='i') {
    right=right-6;
  }
  
}

void move(){
  
}
