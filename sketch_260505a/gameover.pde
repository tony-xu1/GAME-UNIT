color again = 255;
color exit = 255;

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

  text("high score" + highScore, 500, 750);

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
  } else if (mouseX > 350 && mouseX < 650 && mouseY > 610 && mouseY < 650 && Westopolis == true) {
    mode = WESTOPOLIS;
  } else if (mouseX > 350 && mouseX < 650 && mouseY > 610 && mouseY < 650 && Ark == true) {
    mode = ARK;
  }

  if (mouseX > 450 && mouseX < 550 && mouseY > 680 && mouseY < 720) {
    mode = INTRO;
  }
}
