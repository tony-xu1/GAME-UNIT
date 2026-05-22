void game() {
  intro.pause();
  game.play();
  win.pause();
  lose.pause();

  noStroke();
  fill(#090831);
  rect(0, 0, 2000, 1000);

  fill(Pause);
  stroke(pause);
  square(50, 50, 70);
  line(75, 70, 75, 95);
  line(95, 70, 95, 95);

  noFill();
  stroke(255);
  strokeWeight(10);
  line(950, 0, 950, 1000);

  fill(#090831);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  strokeWeight(5);
  circle(ballx, bally, balld);

  textFont(arcade);
  fill(255);
  textSize(100);
  text(leftScore, width/4, 100);
  text(rightScore, 3 * width/4, 100);

  if (wkey == true && lefty > leftd/2) lefty = lefty - 5;
  if (skey == true && lefty < height - leftd/2) lefty = lefty + 5;


  if (singleplayer == false) {
    if (upkey == true && righty > rightd/2) righty = righty - 5;
    if (downkey == true && righty < height - rightd/2) righty = righty + 5;
  } else if (singleplayer == true) {
    righty = bally + 25 * aioffset;
  }

  if (righty < rightd/2) righty = rightd/2;
  if (righty > height - rightd/2) righty = height - rightd/2;
  if (bally < balld/2) bally = balld/2;
  if (bally > height - balld/2) bally = height - balld/2;


  timer = timer - 1;

  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  if (bally < balld/2 || bally > height - balld/2) {
    vy = -1 * vy;
  }

  if (dist(leftx, lefty, ballx, bally) < leftd/2 + balld/2) {
    vx = ballx/8;
    vy = (bally - lefty)/8;
    hit.rewind();
    hit.play();
  }

  if (dist(rightx, righty, ballx, bally) < rightd/2 + balld/2) {
    vx = (ballx-width)/8;
    vy = (bally - righty)/8;
    hit.rewind();
    hit.play();
  }

  if (ballx > width + 50) {
    leftScore = leftScore + 1;
    leftx = 0;
    lefty = height/2;
    leftd = 150;
    rightx = width;
    righty = height/2;
    rightd = 150;
    ballx = width/2;
    bally = height/2;
    balld = 30;
    vx = random(-5, -10);
    vy = 0;
    timer = 50;
    aioffset = random(-1, 1);
  }

  if (ballx < -50) {
    rightScore = rightScore + 1;
    leftx = 0;
    lefty = height/2;
    leftd = 150;
    rightx = width;
    righty = height/2;
    rightd = 150;
    ballx = width/2;
    bally = height/2;
    balld = 30;
    vx = random(-5, -10);
    vy = 0;
    timer = 50;
    aioffset = random(-1, 1);
  }

  if (rightScore >= 10 && singleplayer == false) {
    mode = WIN;
    rightwin = true;
    leftwin = false;
  } else if (rightScore >= 10 && singleplayer == true) {
    mode = GAMEOVER;
  }

  if (leftScore >= 10) {
    mode = WIN;
    leftwin = true;
    rightwin = false;
  }

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
