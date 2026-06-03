color next = 255;
color leave = 255;

void win() {

  intro.pause();
  game.pause();
  win.play();
  lose.pause();

  fill(#D8B609, 10);
  rect(0, 0, 1000, 1000);

  image(happySonic, 430, 450);


  textFont(arcade);
  fill(255);
  textSize(150);
  text("YOU WIN", 500, 300);

  textSize(60);

  fill(next);
  text("try again", 500, 630);

  fill(leave);
  text("exit", 500, 700);


  if (mouseX > 340 && mouseX < 640 && mouseY > 580 && mouseY < 620) {
    next = #0060A8;
  } else {
    next = 255;
  }

  if (mouseX > 435 && mouseX < 550 && mouseY > 650 && mouseY < 700) {
    leave = #0060A8;
  } else {
    leave = 255;
  }
}

void winClicks() {
  if (mouseX > 340 && mouseX < 640 && mouseY > 580 && mouseY < 620) {
    mode = GAME;
    brickd = 50;
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
    int b = 0;
    while (b < n) {
      alive[b] = true;
      b++;
    }
  }

  if (mouseX > 435 && mouseX < 550 && mouseY > 650 && mouseY < 700) {
    mode = INTRO;
    brickd = 50;
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
    int b = 0;
    while (b < n) {
      alive[b] = true;
      b++;
    }
  }
}
