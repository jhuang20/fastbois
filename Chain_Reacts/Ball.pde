class Ball {

  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  
  final float CHANGE_FACTOR = .25;
  final float MAX_RADIUS = 50;
  
  color ballColor;
  float rad;
  float speedx;
  float speedy;
  float xpos;
  float ypos;
  int state;

  Ball() { 
    ballColor= color(random(0, 255), random(0, 255), random(0, 255));  
    speedx=random(0, 15);
    speedy=random(0, 15);
    rad = 25;
    state = 0;
  }
  
  Ball(float xcor, float ycor) {
    this();
    xpos = xcor;
    ypos = ycor;
    rad = 0;
    state = 1;
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
    ellipse(xpos, ypos, rad, rad);
  }
}