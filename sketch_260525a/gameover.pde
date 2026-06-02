color again = 255;

void gameover() {


  fill(#981919, 10);
  rect(0, 0, 1000, 1000);

  image(sadSonic, 450, 450);

  textFont(arcade);
  fill(255);
  textSize(150);
  text("GAME OVER", 500, 300);

  textSize(60);

  fill(again);
  text("try again", 500, 630);

  fill(exit);
  text("exit", 500, 700);

  fill(255);
  text("high score" + highScore, 500, 800);

  if (mouseX > 340 && mouseX < 640 && mouseY > 580 && mouseY < 620) {
    again = #0060A8;
  } else {
    again = 255;
  }

  if (mouseX > 435 && mouseX < 550 && mouseY > 650 && mouseY < 700) {
    exit = #0060A8;
  } else {
    exit = 255;
  }
}

void gameoverClicks() {

  if (mouseX > 340 && mouseX < 640 && mouseY > 580 && mouseY < 620) {
    mode = GAME;
    score = 0;
    lives = 5;
    int b = 0;
    while (b < n) {
      alive[b] = true;
      b++;
    }
  }

  if (mouseX > 435 && mouseX < 550 && mouseY > 650 && mouseY < 700) {
    mode = INTRO;
    score = 0;
    lives = 5;
    int b = 0;
    while (b < n) {
      alive[b] = true;
      b++;
    }
  }
}
