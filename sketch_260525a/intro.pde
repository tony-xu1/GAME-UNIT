color start = 255;

void intro() {

  intro.play();
  game.pause();
  win.pause();
  lose.pause();
  
  image(introgif[f], 0, 0, width, height);
  f++;
  if (f == nofFrames) f = 0;

  fill(#10096A, 150);
  rect(0, 0, width, height);


  textFont(arcade, 180);
  fill(0);
  text("BREAKOUT!", width/2 + 25, 265);
  fill(255);
  text("BREAKOUT!", width/2 + 20, 260);

  textSize(100);
  fill(0);
  text("START", width/2 + 25, 605);
  fill(start);
  text("START", width/2 + 20, 600);

  //tactile------------
  if (mouseX > 370 && mouseX < 630 && mouseY > 540 && mouseY < 600) {
    start = #FFDD52;
  } else {
    start = 255;
  }
}



void introClicks() {
  if (mouseX > 370 && mouseX < 630 && mouseY > 540 && mouseY < 600) {
    mode = GAME;
  }
}
