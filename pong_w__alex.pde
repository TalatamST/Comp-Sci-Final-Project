float left=375;
float right=375;
float ballX=500;
float ballY=375;
float changeX = random(1,5);
float changeY = random(1,5);
String text;

float score1 = 0;
float score2 = 0;
void setup(){
 size(1000,750);
 background(0);
 text="";
}

void draw(){
  noStroke();
  background(00000);
  rect(50,left,50,90);
  fill(255, 0, 187);
  
  rect(920,right,50,90);
  fill(255, 255, 187);
  
  ellipse(ballX,ballY,15,15);
  fill(255,255,255);

if(ballX > width){
  changeX = -changeX;
}
if(ballX < 0){
  changeX = -changeX;
}
if(ballY > height){
  changeY = -changeY;
}
if(ballY < 0){
  changeY = -changeY;
}
ballX = ballX + changeX;
ballY = ballY + changeY;
  
if(left < 660){
 if(keyPressed==true && key=='s'){
    left=left+6;
  }
}
if(left >= 0){
  if(keyPressed==true && key=='w'){
    left=left-6;
  }
}
if(right < 660){
  if(keyPressed==true && key=='k'){
    right=right+6;
  }
}
if(right >= 0){
  if(keyPressed==true && key=='i'){
    right=right-6;
  }
  if(ballX<0){
    score2=score2+1; 
    ballX=500;
    ballY=375;
  }
  if(ballX>1000){
    score1=score1+1; 
    ballX=500;
    ballY=375;
  }
}
}

void display(){
  fill(#FFFFFF);
  textSize(40);
  text(score1,200,75);
}
  
  
  // if(ball > 1000){
  // score1 ++;
//   System.out.println(score1);
  // ball = 500;
// }
 //if(ball < 0){
   //score2 ++;
  // System.out.println(score2);
 //  ball = 500;
//void move(){
