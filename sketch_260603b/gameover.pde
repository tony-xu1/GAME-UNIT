color again = 255;
color exit = 255;

void gameover() {
  
  intro.pause();
  game.pause();
  gameover.play();
  
 if (gameover.position() >= gameover.length()){
    gameover.rewind();
    gameover.play();
  } 


  fill(#981919, 10);
  rect(0, 0, 1000, 1000);

  image(sadSonic, width/2, 450);

  textFont(arcade);
  fill(255);
  textSize(128);
  text("GAME OVER", 350, 300);

  textSize(60);

  fill(again);
  text("try again", 350, 630);

  fill(exit);
  text("exit", 350, 700);

  fill(255);
  text("high score " + highScore, 350, 800);

  if (mouseX > 200 && mouseX < 500 && mouseY > 610 && mouseY < 650) {
    again = #0060A8;
  } else {
    again = 255;
  }

  if (mouseX > 250 && mouseX < 400 && mouseY > 680 && mouseY < 720) {
    exit = #0060A8;
  } else {
    exit = 255;
  }

  tint(255, 30);
  image(crt, width/2, height/2);
}

void gameoverClicks() {
  if (mouseX > 200 && mouseX < 500 && mouseY > 610 && mouseY < 650) {
    mode = GAME;
    score = 0;
    lives = 5;
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
  }


  if (mouseX > 250 && mouseX < 400 && mouseY > 680 && mouseY < 720) {
    mode = INTRO;
    score = 0;
    lives = 5;
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
  }
}
