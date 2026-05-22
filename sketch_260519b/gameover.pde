color again = 255;

void gameover() {
  intro.pause();
  game.pause();
  win.pause();
  lose.play();

  fill(#981919, 10);
  rect(0, 0, width, height);

  image(sadSonic, width/2 - 50, 450);

  textFont(arcade);
  fill(255);
  textSize(150);
  text("GAME OVER", width/2, 300);

  textSize(60);

  fill(again);
  text("try again", width/2, 630);

  fill(exit);
  text("exit", width/2, 700);


  if (mouseX > width/2 - 180 && mouseX < width/2 + 150 && mouseY > 610 && mouseY < 650) {
    again = #0060A8;
  } else {
    again = 255;
  }

  if (mouseX > width/2 - 80 && mouseX < width/2 + 50 && mouseY > 680 && mouseY < 720) {
    exit = #0060A8;
  } else {
    exit = 255;
  }
}

void gameoverClicks() {
  if (mouseX > width/2 - 180 && mouseX < width/2 + 150 && mouseY > 610 && mouseY < 650) {
    mode = GAME;
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

  if (mouseX > width/2 - 80 && mouseX < width/2 + 50 && mouseY > 680 && mouseY < 720) {
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
