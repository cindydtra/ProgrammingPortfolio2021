float x, y, strokeW, pointCount;
int frameCheck = 0;

void setup() {
  size(700, 700);
  background(128, random(255), 128);
  x = random(width);
  y = random(height);
}

void draw() {
  frameCheck++;
  int rand = int(random(100));
  strokeW = random(1, 6);
  pointCount = random(2, 20);
  stroke(random(50), random(50), random(255));
  //reset every 500 frames
  if (frameCheck < 1000) {
    if (x>width || x<0 || y>height || y<0) {
      x = random(width);
      y = random(height);
    } else {
      strokeWeight(strokeW);
      if (rand>75) {
        moveRight(x, y, pointCount);
      } else if (rand>65) {
        moveUp(x, y, pointCount);
      } else if (rand>45) {
        moveLeft(x, y, pointCount);
      } else if (rand>35) {
        moveDown(x, y, pointCount);
      } 
    }
  } else {
    frameCheck = 0;
    background(128, random(255), 128);
  }
}

void moveRight(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX+i, startY);
    x = startX+i;
  }
}

void moveLeft(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX-i, startY);
    x = startX-i;
  }
}

void moveUp(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY-i);
    y = startY-i;
  }
}

void moveDown(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY+i);
    y = startY+i;
  }
}
