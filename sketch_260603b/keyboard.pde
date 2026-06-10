void keyPressed() {
  if (keyCode == LEFT && rightkey == false) {
    leftkey = true;
  }
  if (keyCode == RIGHT && leftkey == false) {
    rightkey = true;
  }
  if (keyCode == LEFT && rightkey == true) {
    leftkey = true;
    rightkey = false;
  }
  if (keyCode == RIGHT && leftkey == true) {
    rightkey = true;
    leftkey = false;
  }
}

void keyReleased() {
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
}
