void pause() {
  fill(#0060A8, 10);
  rect(0, 0, width, height);

  fill(255);
  textSize(128);
  text("PAUSED", width/2, 500);

  textSize(70);
  fill(exit);
  text("exit", width/2, 630);

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

  if (mouseX > width/2 - 90 && mouseX < width/2 + 60 && mouseY > 610 && mouseY < 650) {
    exit = 0;
  } else {
    exit = 255;
  }
}

void pauseClicks() {
  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120) {
    mode = GAME;
  }

  if (mouseX > width/2 - 90 && mouseX < width/2 + 60 && mouseY > 610 && mouseY < 650) {
    mode = INTRO;
    rightScore = 0;
    leftScore = 0;
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
}
