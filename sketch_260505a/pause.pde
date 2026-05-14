void pause() {
  fill(#0060A8, 10);
  rect(0, 0, 1000, 1000);

  fill(255);
  textSize(128);
  text("PAUSED", 500, 500);

  textSize(70);
  fill(exit);
  text("exit", 500, 630);

  fill(Pause);
  stroke(pause);
  square(50, 50, 70);
  line(75, 70, 75, 95);
  line(95, 70, 95, 95);
  noStroke();


  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120) {
    pause = 255;
    Pause = 0;
  } else {
    pause = 0;
    Pause = 255;
  }

  if (mouseX > 450 && mouseX < 550 && mouseY > 610 && mouseY < 650) {
    exit = 0;
  } else {
    exit = 255;
  }
}

void pauseClicks() {
  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120 && deathegg == true) {
    mode = DEATHEGG;
  } else if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120 && Westopolis == true) {
    mode = WESTOPOLIS;
  } else if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120 && Ark == true) {
    mode = ARK;
  } else if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120 && infinite == true) {
    mode = GAME;
  }

  if (mouseX > 450 && mouseX < 550 && mouseY > 610 && mouseY < 650) {
    mode = INTRO;
    score = 0;
    lives = 5;
  }
}
