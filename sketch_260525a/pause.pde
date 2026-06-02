color exit = 255;
color Pause;
color pause;

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

  if (mouseX > 430 && mouseX < 570 && mouseY > 590 && mouseY < 650) {
    exit = 0;
  } else {
    exit = 255;
  }

}

void pauseClicks() {
  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120) {
    mode = GAME;
  }

  if (mouseX > 430 && mouseX < 570 && mouseY > 590 && mouseY < 650) {
    mode = INTRO;
    ballx = width/2;
    bally = 700;
    balld= 20;
    paddlex = width/2;
    paddley = 1000;
    paddled = 100;
    bx = 0;
    by = 7;
    score = 0;
    lives = 5;
  }
}
