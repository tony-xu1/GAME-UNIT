void game() {

  intro.pause();
  game.play();
  win.pause();
  lose.pause();

  fill(#24201A);
  rect(0, 0, width, height);
  fill(255);
  textSize(30);
  text("lives " + lives, 100, 950);
  text("score " + score, 100, 970);

  strokeWeight(7);
  fill(Pause);
  stroke(pause);
  square(50, 50, 70);
  line(75, 70, 75, 95);
  line(95, 70, 95, 95);
  noStroke();

  int b = 0;
  while (b < n) {
    if (alive[b] == true) {
      manageBricks(b);
    }
    b++;
  }

  fill(255);
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

  if (by == 0) by = (int)random(1, 2);

  if (dist(paddlex, paddley, ballx, bally) < paddled/2 + balld/2) {
    bx = (ballx-paddlex)/6;
    by = (bally- paddley)/6;
    hit.rewind();
    hit.play();
  }

  if (bally > 1050) {
    timer = 50;
    ballx = width/2;
    bally = 700;
    balld= 20;
    paddlex = width/2;
    paddley = 1000;
    paddled = 100;
    bx = 0;
    by = 7;
    lives -=1;
  }

  if (lives <= 0) mode = GAMEOVER;

  if (score >= n) mode = WIN;

  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120) {
    pause = 255;
    Pause = 0;
  } else {
    pause = 0;
    Pause = 255;
  }
}

void gameClicks() {
  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120) {
    mode = PAUSE;
  }
}


void manageBricks(int b) {
  if (y[b] == 100) fill(#DB0000);
  if (y[b] == 200) fill(#A700DB);
  if (y[b] == 300) fill(#0200DB);
  if (y[b] == 400) fill(#0097DB);
  if (y[b] == 500) fill (#00DB34);
  if (y[b] == 600) fill (#DB5400);
  alive[b] = true;
  circle(x[b], y[b], brickd);
  if (dist(x[b], y[b], ballx, bally) < brickd/2 + balld/2) {
    bx = (ballx - x[b])/4;
    by = (bally - y[b])/4;
    alive[b] = false;
    score = score + 1;
    hit.rewind();
    hit.play();
  }
}
