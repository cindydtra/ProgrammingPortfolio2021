class Button {
  // Member Variables
  int x, y, w, h;
  String val;
  boolean hover, isNumber;
  color c1, c2, c3, c4, c5, c6;

  // Constructor
  Button(int tempX, int tempY, int tempW, int tempH, String tempVal, boolean isNumber) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    val = tempVal;
    hover = false;
    c1 = #0CA9F7;
    c2 = #0066CC;
    c3 = #009900;
    c4 = #0DFF04;
    c5 = #0056AB;
    c6 = #004487;
    this.isNumber = isNumber;
  }

  // Display the Button
  void display() {
    if (isNumber == true) { // number buttons
      if (hover) {
        fill (c1);
      } else {
        fill (c2);
      }
      //rectMode(CENTER);
      rect(x, y, w, h);
      fill(255);
      textAlign(CENTER);
      text(val, x+w/2, y+40);
    } else if (val.equals(".")) {
      if (hover) {
        fill (c1);
      } else {
        fill (c2);
      }
      //rectMode(CENTER);
      rect(x, y, w, h);
      fill(255);
      textAlign(CENTER);
      text(val, x+w/2, y+40);
    } else if (val.equals("C")) {
      if (hover) {
        fill (c5);
      } else {
        fill (c6);
      }
      //rectMode(CENTER);
      rect(x, y, w, h);
      fill(255);
      textAlign(CENTER);
      text(val, x+w/2, y+40);
    } else if (val.equals("±")) {
      if (hover) {
        fill (c5);
      } else {
        fill (c6);
      }
      //rectMode(CENTER);
      rect(x, y, w, h);
      fill(255);
      textAlign(CENTER);
      text(val, x+w/2, y+40);
    } else if (val.equals("%")) {
      if (hover) {
        fill (c5);
      } else {
        fill (c6);
      }
      //rectMode(CENTER);
      rect(x, y, w, h);
      fill(255);
      textAlign(CENTER);
      text(val, x+w/2, y+40);
    } else if (val.equals("√")) {
      if (hover) {
        fill (c5);
      } else {
        fill (c6);
      }
      //rectMode(CENTER);
      rect(x, y, w, h);
      fill(255);
      textAlign(CENTER);
      text(val, x+w/2, y+40);
    } 
    else { // non-number buttons
      if (hover) {
        fill (c4);
      } else {
        fill (c3);
      }
      //rectMode(CENTER);
      rect(x, y, w, h);
      fill(255);
      textAlign(CENTER);
      text(val, x+w/2, y+40);
    }
  }

  // Edge Detection
  void hover() {
    hover = mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h;
  }
}
