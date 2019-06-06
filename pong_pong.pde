boolean startScreen= true;
String text;
float ballX=500;
float ballY=375;
float changeX = random(1, 4);
float changeY = random(1, 4);
int score1 = 0;
int score2 = 0;
float p1X=50;
float p1Y=375;
float p2X=920;
float p2Y=375;
int rectX=260;
int rectY=600;
int rectSizeX=475;
int rectSizeY=90;
paddles p;
ball b;
start s;
end e;
void setup() {
  size(1000, 750);
  background(0);
  text="";



  p= new paddles();
  b=new ball();
  s=new start();
  e=new end();
}

void keyPressed() {
  if (key==CODED)
    if (keyCode== UP)
      startScreen= false;
}

void mousePressed() {
  if ( overRect(rectX, rectY, rectSizeX, rectSizeY) ) {
    startScreen = false;
  }
}


void draw() {

  noStroke();
  background(0);
  if (startScreen)
  {
    s.startScreen();
  }
  //update(mouseX, mouseY);

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
    }
    if (ballX < 0) {
      score2 ++;
      ballX=500;
      ballY=375;
    }
    fill(255, 0, 187);
    textSize(30);
    text("Player Two: " + score2, 700, 75);
  }
  if (ballX > 1000) {
    score1++;
    ballX=500;
    ballY=375;
  }
  fill(255, 0, 187);
  textSize(30);
  text("Player One:" + score1, 175, 75);

  if (score1==10) {
    e.endP1Screen();
  } else if (score2==10) {
    e.endP2Screen();
  }

  if (ballX < 0) {
    changeX = -changeX;
  }
  if (ballY > height) {
    changeY = -changeY;
  }
  if (ballY < 0) {
    changeY = -changeY;
  }
  ballX = ballX + changeX;
  ballY = ballY + changeY;

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
}
void update(int x, int y) {
  if ( overRect(x, y, rectSizeX, rectSizeY) ) {
    startScreen = false;
  }
}
boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
    mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
