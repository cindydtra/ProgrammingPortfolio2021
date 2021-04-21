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

public class EtchASketch extends PApplet {

// Global Variables
int x, y;

public void setup() {
  
  frameRate(10);
  x = 10;
  y = 10;
}

public void draw() {
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

public void mouseClicked() {
  saveFrame("image-######.png");
}

public void keyPressed() {
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

public void drawName() {
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
public void moveRight(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x + i, y);
  }
  x = x + rep;
}

public void moveLeft(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x - i, y);
  }
  x = x - rep;
}

public void moveDown(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x, y + i);
  }
  y = y + rep;
}

public void moveUp(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x, y - i);
  }
  y = y - rep;
}

public void moveRightUp(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x + i, y - i);
  }
  x = x + rep;
  y = y - rep;
}

public void moveRightDown(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x + i, y + i);
  }
  x = x + rep;
  y = y + rep;
}

public void moveLeftDown(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x - i, y + i);
  }
  x = x - rep;
  y = y + rep;
}

public void moveLeftUp(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x - i, y - i);
  }
  x = x - rep;
  y = y - rep;
}
  public void settings() {  size(400, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "EtchASketch" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
