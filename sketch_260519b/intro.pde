color single = 255;
color multi = 255;

void intro() {
  intro.play();
  game.pause();
  win.pause();
  lose.pause();
  
  image(casinoNight, -50, -21);
  fill(#10096A, 150);
  rect(0, 0, 2000, 1000);

  textFont(arcade);
  textSize(200);
  fill(0);
  text("PONG!", 958, 208);
  fill(#ffffff);
  text("PONG!", 950, 200);

  textSize(60);
  fill(0);
  text("singleplayer", 705, 505);
  fill(single);
  text("singleplayer", 700, 500);

  fill(0);
  text("multiplayer", 1165, 505);
  fill(multi);
  text("multiplayer", 1160, 500);


  //tactile

  if (mouseX > 500 && mouseX < 900 && mouseY > 480 && mouseY < 520) {
    single = #FFDD52;
  } else {
    single = 255;
  }

  if (mouseX > 970 && mouseX < 1350 && mouseY > 480 && mouseY < 520) {
    multi = #FFDD52;
  } else {
    multi = 255;
  }
}

void introClicks() {
    if (mouseX > 500 && mouseX < 900 && mouseY > 480 && mouseY < 520) {
    mode = GAME;
    singleplayer = true;
  } 
   if (mouseX > 970 && mouseX < 1350 && mouseY > 480 && mouseY < 520) {
    mode = GAME;
    singleplayer = false;
  }
}
