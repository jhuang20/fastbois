class Ball {

  color ballColor;
  float speedx;
  float speedy;
  float xpos;
  float ypos;

  Ball() { 
    ballColor= color(random(0, 255), random(0, 255), random(0, 255));  
    speedx=random(0, 25);
    speedy=random(0, 25);
  }

  void moveBall() {
    xpos+=speedx;
    ypos+=speedy;
    if (xpos>600 || xpos<0) {
      speedx=-speedx;
    }
    if (ypos>600 || ypos<0) {
      speedy=-speedy;
    }
  }

  void drawBall() {
    fill(ballColor);
    ellipse(xpos, ypos, 25, 25);
  }
}
