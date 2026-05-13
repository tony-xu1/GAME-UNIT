void westopolis() {

  fin = false;
  deathegg = false;
  Westopolis = true;
  Ark = false;

  image(westopolis1, -420, 0);
  fill(#000000, 120);
  rect(0, 0, 1000, 1000);

  fill(Pause);
  stroke(pause);
  square(50, 50, 70);
  line(75, 70, 75, 95);
  line(95, 70, 95, 95);

  fill(#ffffff, 0);
  noStroke();
  circle(x, y, d);
  image(blackArm, x - 105, y - 100);

  arcade = createFont ("ARCADECLASSIC.TTF", 100);
  textFont (arcade);
  fill(255);
  textSize(50);
  text("Score " + score, 500, 100);
  text("Lives " + lives, 500, 150);

  x = x + vx;
  y = y + vy;

  if (x < d/2 || x > width - d/2) {
    vx = -1 * vx;
  }
  if (y < d/2 || y > height - d/2) {
    vy = -1 * vy;
  }

  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120) {
    pause = 255;
    Pause = 0;
  } else {
    pause = 0;
    Pause = 255;
  }
}

void westopolisClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    vx = 1.05 * vx;
    vy = 1.05 * vy;
  } else  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
  }
  if (lives < 0) {
    mode = GAMEOVER;
    if (score >= highScore) {
      highScore = score;
    }
    score = 0;
    lives = 5;
    x = 500;
    y = 500;
    d = 200;
    vx = random(-7, 7);
    vy = random(-7, 7);
  }
  if (score > 50) {
    mode = WIN;
    if (score >= highScore) {
      highScore = score;
    }
    fin = false;
    deathegg = false;
    Westopolis = false;
    Ark = true;
    x = 500;
    y = 500;
    d = 200;
    vx = random(-10, 10);
    vy = random(-10, 10);
  }
  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120) {
    mode = PAUSE;
  }
}
