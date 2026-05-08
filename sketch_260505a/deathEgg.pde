void deathEgg() {
  image(space, -300, 0);
  fill(#000000, 120);
  rect(0, 0, 1000, 1000);

  fill(#ffffff, 0);
  circle(x, y, d);
  image(egg, x - 105, y - 110);

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
}

void deathEggClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    vx = 1.05 * vx;
    vy = 1.05 * vy;
  } else {
    lives = lives - 1;
  }
  if (lives < 0) {
    mode = GAMEOVER;
  }
  if (score > 25) {
    mode = WIN;
  }
}
