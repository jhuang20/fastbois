Ball[] ballArray = new Ball[35];

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
    ballArray[i].moveBall();
  }
  
}

void mouseClicked() {
  Ball b = new Ball(mouseX, mouseY);
  b.drawBall();
}