class start {
  public start() {
  }
  void startScreen() {
    background(0);

    fill(0, 650, 375);
    textSize(85);
    text("PongPong", 275, 250);
    textSize(25);
    text("Two Player", 400, 350);

    rect(50, 375, 20, 75);
    rect(920, 375, 20, 75);

    fill(0);
    rect(rectX, rectY, rectSizeX, rectSizeY);
    fill(0, 650, 375);
    text("Click here to Start", 350, 620);
  
  }
}
