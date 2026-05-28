void game() {

  fill(#24201A);
  rect(0, 0, width, height);

  int b = 0;

  while (b < 54) {
    fill(255);
    circle(x[b], y[b], brickd);
    b++;
  }

  circle(paddlex, paddley, paddled);
  circle(ballx, bally, balld);

  if (akey == true && paddlex > paddled/2) paddlex = paddlex - 5;
  if (dkey == true && paddlex < width - paddled/2) paddlex = paddlex + 5;


  timer = timer - 1;

  if (timer < 0) {
    ballx = ballx + bx;
    bally = bally + by;
  }

  if (bally < balld/2) {
    by = -1 * by;
  }
  
  if (ballx > width - balld/2 || ballx < balld/2) bx = -1 * bx;

  if (dist(paddlex, paddley, ballx, bally) < paddled/2 + balld/2) {
    bx = (ballx-paddlex)/8;
    by = (bally- paddley)/8;
  }  
}

  void gameClicks() {
  }
