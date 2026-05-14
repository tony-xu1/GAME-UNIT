color next = 255;
color leave = 255;

void win() {

  GreenHill.pause();
  westopolisost.pause();
  deatheggost.pause();
  gameover.pause();
  infiniteost.pause();
  optionsost.pause();
  levelost.pause();
  arkost.pause();
  win.play();
  fill(#D8B609, 10);
  rect(0, 0, 1000, 1000);

  image(happySonic, 430, 450);


  textFont(arcade);
  fill(255);
  textSize(150);
  text("YOU WIN", 500, 300);

  textSize(60);

  fill(next);
  text("next level", 500, 630);

  fill(leave);
  text("exit", 500, 700);

  fill(255);
  text("high score" + highScore, 500, 800);

  if (mouseX > 350 && mouseX < 650 && mouseY > 610 && mouseY < 650) {
    next = #0060A8;
  } else {
    next = 255;
  }

  if (mouseX > 450 && mouseX < 550 && mouseY > 680 && mouseY < 720) {
    leave = #0060A8;
  } else {
    leave = 255;
  }
}

void winClicks() {
  if (mouseX > 350 && mouseX < 650 && mouseY > 610 && mouseY < 650 && Westopolis == true) {
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
  } else if (mouseX > 350 && mouseX < 650 && mouseY > 610 && mouseY < 650 && fin == true) {
    mode = INTRO;
    score = 0;
    lives = 5;
  }

  if (mouseX > 450 && mouseX < 550 && mouseY > 680 && mouseY < 720) {
    mode = INTRO;
    score = 0;
    lives = 5;
  }
}
