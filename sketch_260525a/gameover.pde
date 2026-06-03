color again = 255;

void gameover() {
  
  intro.pause();
  game.pause();
  win.pause();
  lose.play();

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
