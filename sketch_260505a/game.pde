void game() {
  fin = false;
  deathegg = false;
  Westopolis = false;
  Ark = false;

  GreenHill.pause();
  westopolisost.pause();
  deatheggost.pause();
  gameover.pause();
  win.pause();
  optionsost.pause();
  levelost.pause();
  arkost.pause();
  infiniteost.play();
  image(space, -300, 0);
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
  imageMode(CENTER);
  image(ring, x, y);
  imageMode(CORNER);

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

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    point.rewind();
    point.play();
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
    vx = random(-5, 5);
    vy = random(-5, 5);
  }
  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120) {
    mode = PAUSE;
  }
}
