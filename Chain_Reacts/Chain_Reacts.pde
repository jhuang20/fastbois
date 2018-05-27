Ball[] ballArray = new Ball[36];
int counter = 0;

void setup() {
  size(600, 600);
  for (int i=0; i<ballArray.length; i++) {
    ballArray[i] = new Ball();
  }
  mouseClicked();
}

void draw() {
  background(0);
  for (int i=0; i<ballArray.length; i++) {
    ballArray[i].drawBall();
    if (ballArray[i].state == 0) {
      ballArray[i].moveBall();
    }
    if (ballArray[i].state == 1 || ballArray[i].state == 2) {
      for (int j=0; j<ballArray.length; j++) {
        if (i != j) {
          ballArray[i].checkCollision(ballArray[j]);
        }
      }
    }
  }
}

void mouseClicked() {
  counter++;
  if (counter > 1) {
    Ball b = new Ball(mouseX, mouseY);
    ballArray[ballArray.length-1] = b;
  }
}
