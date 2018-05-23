Ball[] ballArray = new Ball[35];

void setup() {
  size(600, 600);
  for (int i=0; i<ballArray.length; i++) {
    ballArray[i] = new Ball();
  }
}

void draw() {
  background(0);
  for (int i=0; i<ballArray.length; i++) {
    ballArray[i].drawBall();
    ballArray[i].moveBall();
  }
}
