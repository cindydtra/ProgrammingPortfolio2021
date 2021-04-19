/*////////////////////////////////////
 2020 Calculator for Programming 1
 Cindy Tra | November 2020
 ///////////////////////////////////*/

// Globals
Button[] numButtons = new Button[10];
Button[] opButtons = new Button[13];
String dVal, op;
boolean left;
float l, r, result;

void setup() {
  size (310, 510);
  dVal = "0";
  op = "";
  left = true;
  l = 0.0;
  r = 0.0;
  result = 0.0;

  numButtons[0] = new Button(40, 430, 115, 55, "0", true);
  numButtons[1] = new Button(40, 370, 55, 55, "1", true);
  numButtons[2] = new Button(100, 370, 55, 55, "2", true);
  numButtons[3] = new Button(160, 370, 55, 55, "3", true);
  numButtons[4] = new Button(40, 310, 55, 55, "4", true);
  numButtons[5] = new Button(100, 310, 55, 55, "5", true);
  numButtons[6] = new Button(160, 310, 55, 55, "6", true);
  numButtons[7] = new Button(40, 250, 55, 55, "7", true);
  numButtons[8] = new Button(100, 250, 55, 55, "8", true);
  numButtons[9] = new Button(160, 250, 55, 55, "9", true);

  opButtons[0] = new Button(40, 190, 55, 55, "sin", false);
  opButtons[1] = new Button(100, 190, 55, 55, "cos", false);
  opButtons[2] = new Button(160, 190, 55, 55, "x²", false);
  opButtons[3] = new Button(160, 430, 55, 55, ".", false);
  opButtons[4] = new Button(220, 430, 55, 55, "=", false);
  opButtons[5] = new Button(220, 370, 55, 55, "+", false);
  opButtons[6] = new Button(220, 310, 55, 55, "-", false);
  opButtons[7] = new Button(220, 250, 55, 55, "x", false);
  opButtons[8] = new Button(220, 190, 55, 55, "÷", false);
  opButtons[9] = new Button(40, 130, 55, 55, "C", false);
  opButtons[10] = new Button(100, 130, 55, 55, "±", false);
  opButtons[11] = new Button(160, 130, 55, 55, "%", false);
  opButtons[12] = new Button(220, 130, 55, 55, "√", false);
}

void draw() {
  background(127);
  fill(#00003D);
  rect(10, 10, 290, 490, 50);
  textSize(25);

  // Show Calculator Display
  updateDisplay();

  // Display and Hover Buttons
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover();
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover();
  }
}

void updateDisplay() {
  rectMode(CORNER);
  fill(#06254A);
  rect(40, 30, width-75, 80);

  fill(255);
  textAlign(RIGHT);

  // Render Scaling Text
  if (dVal.length()<13) {
    textSize(30);
  } else if (dVal.length()<14) {
    textSize(27);
  } else if (dVal.length()<15) {
    textSize(25);
  } else if (dVal.length()<17) {
    textSize(22);
  } else if (dVal.length()<19) {
    textSize(20);
  } else if (dVal.length()<21) {
    textSize(18);
  } else if (dVal.length()<23) {
    textSize(16);
  } else if (dVal.length()<25) {
    textSize(15);
  } else {
    textSize(13);
  }
  text(dVal, width-38, 85);
}

void mouseReleased() {
  println("L:" + l + " R:" + r + " Op:" + op);
  println("Result:" + result + " Left:" + left);

  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].hover && dVal.length()<20) {
      handleEvent(numButtons[i].val, true);
    }
  }

  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].hover) {
      handleEvent(opButtons[i].val, false);
    }
  }
}

void keyPressed() {
  println("KEY:" + key + " keyCode:" + keyCode);

  if (key == '0') {
    handleEvent("0", true);
  } else if (key == '1') {
    handleEvent("1", true);
  } else if (key == '2') {
    handleEvent("2", true);
  } else if (key == '3') {
    handleEvent("3", true);
  } else if (key == '4') {
    handleEvent("4", true);
  } else if (key == '5') {
    handleEvent("5", true);
  } else if (key == '6') {
    handleEvent("6", true);
  } else if (key == '7') {
    handleEvent("7", true);
  } else if (key == '8') {
    handleEvent("8", true);
  } else if (key == '9') {
    handleEvent("9", true);
  } else if (key == '+') {
    handleEvent("+", false);
  } else if (key == '-') {
    handleEvent("-", false);
  } else if (key == '*') {
    handleEvent("x", false);
  } else if (key == '/') {
    handleEvent("÷", false);
  } else if (key == '.') {
    handleEvent(".", false);
  } else if (key == 'C') {
    handleEvent("C", false);
  } else if (key == 10) {
    if (keyCode == ENTER || keyCode == RETURN) {
      handleEvent("=", false);
    }
  }
}

String handleEvent(String val, boolean num) {
  if (left && num) { 
    if (dVal.equals("0")) {
      dVal = val;
      l = float(dVal);
    } else {
      dVal += val;
      l = float(dVal);
    }
  } else if (!left && num) { 
    if (dVal.equals("+") || dVal.equals("-") || dVal.equals("x") || dVal.equals("÷")) {
      dVal = val;
      r = float(dVal);
    } else {
      dVal += val;
      r = float(dVal);
    }
  } else if (val.equals("C")) {
    dVal = "0";
    op = "";
    left = true;
    l = 0.0;
    r = 0.0;
    result = 0.0;
  } else if (val.equals("+")) {
    if (!left) {
      performCalc();
    } else {
      op = "+";
      left = false;
      dVal = "+";
    }
  } else if (val.equals("-")) {
    if (!left) {
      performCalc();
    } else {
      op = "-";
      left = false;
      dVal = "-";
    }
  } else if (val.equals("x")) {
    if (!left) {
      performCalc();
    } else {
      op = "x";
      left = false;
      dVal = "x";
    }
  } else if (val.equals("÷")) {
    if (!left) {
      performCalc();
    } else {
      op = "÷";
      left = false;
      dVal = "÷";
    }
  } else if (val.equals("±")) {
    if (left) {
      l *= -1;
      dVal = str(l);
    } else {
      r *= -1;
      dVal = str(r);
    }
  } else if (val.equals(".") && !dVal.contains(".")) {
    if (left) {
      dVal += (val);
      l = float(dVal);
    } else {
      dVal += (val);
      r = float(dVal);
    }
  } else if (val.equals("=")) {
    performCalc();
  } else if (val.equals("%")) {
    if (left) {
      l *= 0.1;
      dVal = str(l);
    } else {
      r *= 0.1;
      dVal = str(r);
    }
  } else if (val.equals("x²")) {
    if (left) {
      l = sq(l);
      dVal = str(l);
    } else {
      r = sq(r);
      dVal = str(r);
    }
  } else if (val.equals("√")) {
    if (left) {
      l = sqrt(l);
      dVal = str(l);
    } else {
      r = sqrt(r);
      dVal = str(r);
    }
  } else if (val.equals("sin")) {
    if (left) {
      l = sin(radians(l));
      dVal = str(l);
    } else {
      r = sin(radians(r));
      dVal = str(r);
    }
  } else if (val.equals("cos")) {
    if (left) {
      l = cos(radians(l));
      dVal = str(l);
    } else {
      r = cos(radians(r));
      dVal = str(r);
    }
  }
  return val;
}

void performCalc() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("x")) {
    result = l * r;
  } else if (op.equals("÷")) {
    result = l / r;
  }
  l = result;
  dVal = str(result);
  left = true;
}
