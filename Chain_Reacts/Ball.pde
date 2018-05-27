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
    speedx=random(0, 10);
    speedy=random(0, 10);
    rad = 10;
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

    if (this.state==1) {
      if (rad==MAX_RADIUS) {
        this.state=2;
      }
      fill(ballColor);
      ellipse(xpos, ypos, rad*2, rad*2);

      rad+=CHANGE_FACTOR;
    } else if (this.state==2) {
      if (rad<0) {
        this.state=3;
      }
      fill(ballColor);
      ellipse(xpos, ypos, rad*2, rad*2);

      rad-=CHANGE_FACTOR;
    } else {
      fill(ballColor);
      ellipse(xpos, ypos, rad*2, rad*2);
    }
  }

  void checkCollision(Ball other) {
    if (dist(this.xpos, this.ypos, other.xpos, other.ypos) < this.rad + other.rad) {
      if (other.state == 0) {
        other.state = 1;
      }
    }
  }
}
