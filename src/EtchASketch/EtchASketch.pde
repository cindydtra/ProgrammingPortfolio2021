// Global Variables
int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  x = 10;
  y = 10;
}

void draw() {
  fill(0);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      moveUp(10);
    }if (key == 'a' || key == 'A') {
      moveLeft(10);
    }if (key == 's' || key == 'S') {
      moveDown(10);
    }if (key == 'd' || key == 'D') {
      moveRight(10);
    }
  }
  // drawName();
}

void mouseClicked() {
  saveFrame("image-######.png");
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight(10);
    } else if (keyCode == LEFT) {
      moveLeft(10);
    } else if (keyCode == UP) {
      moveUp(10);
    } else if (keyCode == DOWN) {
      moveDown(10);
    }
  }
}

void drawName() {
  moveRight(50);
  moveDown(100);
  moveUp(60);
  moveRightUp(20);
  moveRight(50);
  moveRightDown(20);
  moveLeftUp(20);
  moveLeft(50);
  moveLeftDown(20);
  moveDown(60);
  moveRightDown(20);
  moveRight(50);
  moveRightUp(20);
  moveLeftDown(20);
  moveRight(120);
  moveLeft(60);
  moveUp(100);
  moveLeft(50);
  moveRight(100);
  moveLeft(50);
  moveDown(100);
  moveRight(80);
  moveUp(100);
  moveRightDown(100);
  moveUp(100);
}

// method to draw a line to the right
void moveRight(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x + i, y);
  }
  x = x + rep;
}

void moveLeft(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x - i, y);
  }
  x = x - rep;
}

void moveDown(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x, y + i);
  }
  y = y + rep;
}

void moveUp(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x, y - i);
  }
  y = y - rep;
}

void moveRightUp(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x + i, y - i);
  }
  x = x + rep;
  y = y - rep;
}

void moveRightDown(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x + i, y + i);
  }
  x = x + rep;
  y = y + rep;
}

void moveLeftDown(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x - i, y + i);
  }
  x = x - rep;
  y = y + rep;
}

void moveLeftUp(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x - i, y - i);
  }
  x = x - rep;
  y = y - rep;
}
