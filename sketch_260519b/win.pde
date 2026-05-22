color next = 255;
color leave = 255;

void win() {
    intro.pause();
  game.pause();
  win.play();
  lose.pause();
  
  fill(#16496F, 10);
  rect(0, 0, width, height);

  image(happySonic, width/2 - 70, 450);


  textFont(arcade);
  fill(255);
  textSize(150);

  if (rightwin == true) {
    text("RIGHT WINs!", width/2, 300);
  } else if (leftwin == true) {
    text("LEFT WINs!", width/2, 300);
  }

  textSize(60);

  fill(next);
  text("play again", width/2, 630);

  fill(leave);
  text("exit", width/2, 700);


  if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > 610 && mouseY < 650) {
    next = #0060A8;
  } else {
    next = 255;
  }

  if (mouseX > width/2 - 80 && mouseX < width/2 + 50 && mouseY > 680 && mouseY < 720) {
    leave = #0060A8;
  } else {
    leave = 255;
  }
}

void winClicks() {
  if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > 610 && mouseY < 650) {
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
