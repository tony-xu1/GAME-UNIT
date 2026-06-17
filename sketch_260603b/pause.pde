void pause() {
  fill(#0060A8, 10);
  rect(0, 0, 700, 1000);

  fill(255);
  textSize(128);
  text("PAUSED", 350, 500);

  textSize(70);
  fill(exit);
  text("exit", 350, 630);

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

  if (mouseX > 280 && mouseX < 420 && mouseY > 590 && mouseY < 650) {
    exit = 0;
  } else {
    exit = 255;
  }

  tint(255, 50);
  image(crt, width/2, height/2);
}

void pauseClicks() {
  if (mouseX > 50 && mouseX < 120 && mouseY > 50 && mouseY < 120) {
    mode = GAME;
  }

  if (mouseX > 280 && mouseX < 420 && mouseY > 590 && mouseY < 650) {
    mode = INTRO;
    bx = 635;
    by = 740;
    bd = 50;
    lx = 250;
    ly = 870;
    rx = 450;
    ry = 870;
    ld = 100;
    rd = 100;
    vx = 0;
    vy = 0;
    G = false;
    clicked = false;
    timer = 40;
    tptimer = 300;
    score = 0;
    lives = 5;
  }
}
