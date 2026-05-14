color again = 255;
color exit = 255;

void gameover() {

  GreenHill.pause();
  westopolisost.pause();
  deatheggost.pause();
  win.pause();
  optionsost.pause();
  levelost.pause();
  arkost.pause();
  infiniteost.pause();
  gameover.play();
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

  if (mouseX > 350 && mouseX < 650 && mouseY > 610 && mouseY < 650) {
    again = #0060A8;
  } else {
    again = 255;
  }

  if (mouseX > 450 && mouseX < 550 && mouseY > 680 && mouseY < 720) {
    exit = #0060A8;
  } else {
    exit = 255;
  }
}

void gameoverClicks() {

  if (mouseX > 350 && mouseX < 650 && mouseY > 610 && mouseY < 650 && deathegg == true) {
    mode = DEATHEGG;
    score = 0;
    lives = 5;
    x = 500;
    y = 500;
    d = 200;
    vx = random(-5, 5);
    vy = random(-5, 5);
  } else if (mouseX > 350 && mouseX < 650 && mouseY > 610 && mouseY < 650 && Westopolis == true) {
    mode = WESTOPOLIS;
    score = 0;
    lives = 5;
    x = 500;
    y = 500;
    d = 200;
    vx = random(-7, 7);
    vy = random(-7, 7);
  } else if (mouseX > 350 && mouseX < 650 && mouseY > 610 && mouseY < 650 && Ark == true) {
    mode = ARK;
    score = 0;
    lives = 5;
  } else if (mouseX > 350 && mouseX < 650 && mouseY > 610 && mouseY < 650 && infinite == true) {
    mode = GAME;
    score = 0;
    lives = 5;
    d = map(rX, 150, 650, 50, 200);
  }


  if (mouseX > 450 && mouseX < 550 && mouseY > 680 && mouseY < 720) {
    mode = INTRO;
  }
}
