boolean startScreen= true;
String text;
float ballX=500;
float ballY=375;
float changeX = random(1, 2);
float changeY = random(1, 2);
int score1 = 0;
int score2 = 0;
float p1X=50;
float p1Y=375;
float p2X=920;
float p2Y=375;
int countL;
int countR;
paddles p;
ball b;
start s;
endScreen e;
void setup() {
  size(1000, 750);
  background(0);
  text="";

  p= new paddles();
  b=new ball();
  s= new start();
  e= new endScreen();
}

void keyPressed() {
  if (key==CODED)
    if (keyCode== UP)
      startScreen= false;
}


void draw() {

  noStroke();
  background(0);
  if (startScreen)
    s.startScreen();

  if (!startScreen) {
    p.p1(p1X, p1Y, 50, 90);
    p.p2(p2X, p2Y, 50, 90);

    if (keyPressed) {
      if (false==p1Y<=0)
        if (key=='w')
          p1Y-=6;
      if (false==p1Y>=height-90)
        if (key=='s')
          p1Y+=6;
      if (false==p2Y<=0)
        if (key=='i')
          p2Y-=6;
      if (false==p2Y>=height-90)
        if (key=='k')
          p2Y+=6;
    }
    b.ball(ballX, ballY, 20, 20);
    if (ballX > width) {
      changeX = -changeX;
      countR++;
    }
    if (ballX < 0) {
      changeX = -changeX;
      countL++;
    }
    if (ballY > height) {
      changeY = -changeY;
    }
    if (ballY < 0) {
      changeY = -changeY;
    }
    ballX = ballX + changeX;
    ballY = ballY + changeY;
  }
  if (abs(ballX- (p1X+50))<3 && ballY >p1Y && ballY<p1Y+90) {
    float x = changeX*-1;
    changeX=-changeY;
    changeY= -x;
  }
  if (abs(ballX- p2X)<3 && ballY >p2Y && ballY<p2Y+90) {
    float x = changeX*-1;
    changeX=-changeY;
    changeY= -x;
  }
  if (ballX<0) {
    score1=score1+1;
    ballX=500;
    ballY=375;
  }
  if (ballX>1000) {
    score2=score2+1;
    ballX=500;
    ballY=375;
  }
  fill(0, 650, 375);
  textSize(30);
  text(score1, 200, 75);

  fill(255, 0, 187);
  textSize(30);
  text(score2, 700, 75);
}
