import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ScreenSaver extends PApplet {

float x, y, strokeW, pointCount;
int frameCheck = 0;

public void setup() {
  
  background(128, random(255), 128);
  x = random(width);
  y = random(height);
}

public void draw() {
  frameCheck++;
  int rand = PApplet.parseInt(random(100));
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

public void moveRight(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX+i, startY);
    x = startX+i;
  }
}

public void moveLeft(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX-i, startY);
    x = startX-i;
  }
}

public void moveUp(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY-i);
    y = startY-i;
  }
}

public void moveDown(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY+i);
    y = startY+i;
  }
}
  public void settings() {  size(700, 700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ScreenSaver" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
