color level1 = #0060A8;
color level2 = #0060A8;
color level3 = #0060A8;


void levels() {
  noStroke();
  image(oilOcean, -223, 0);

  fill(#000000, 100);
  rect(0, 0, 1000, 1000);

  textSize(100);
  fill(#FFFFFF, 200);
  text ("LEVELS", 505, 105);
  fill(#0060A8);
  text ("LEVELS", 500, 100);

  fill(225);
  strokeWeight(10);
  stroke(level1);
  square(150, 400, 150);
  image(deathEgg, 150, 400);
  stroke(level2);
  square(425, 400, 150);
  image(westopolis, 425, 400);
  stroke(level3);
  square(700, 400, 150);
  image(ark, 700, 400);

  textSize(25);
  fill(0);
  text("DEATH EGG", 228, 583);
  fill(level1);
  text("DEATH EGG", 225, 580);

  fill(0);
  text("WESTOPOLIS", 503, 583);
  fill(level2);
  text("WESTOPOLIS", 500, 580);

  fill(0);
  text("SPACE COLONY ARK", 778, 583);
  fill(level3);
  text("SPACE COLONY ARK", 775, 580);

  //tactile
  if (mouseX > 150 && mouseX < 300 && mouseY > 400 && mouseY < 550 || mouseX > 150 && mouseX < 300 && mouseY > 565 && mouseY < 595) {
    level1 = #ffffff;
  } else {
    level1 = #0060A8;
  }

  if (mouseX > 425 && mouseX < 575 && mouseY > 400 && mouseY < 550 || mouseX > 405 && mouseX < 595 && mouseY > 565 && mouseY < 595) {
    level2 = #ffffff;
  } else {
    level2 = #0060A8;
  }
  
    if (mouseX > 700 && mouseX < 850 && mouseY > 400 && mouseY < 550 || mouseX > 640 && mouseX < 910 && mouseY > 565 && mouseY < 595) {
    level3 = #ffffff;
  } else {
    level3 = #0060A8;
  }
}

void levelsClicks() {
  if (mouseX > 150 && mouseX < 300 && mouseY > 400 && mouseY < 550 || mouseX > 150 && mouseX < 300 && mouseY > 565 && mouseY < 595) {
    mode = DEATHEGG;
  } else if (mouseX > 425 && mouseX < 575 && mouseY > 400 && mouseY < 550 || mouseX > 405 && mouseX < 595 && mouseY > 565 && mouseY < 595) {
    mode = WESTOPOLIS;
  } else if (mouseX > 700 && mouseX < 850 && mouseY > 400 && mouseY < 550 || mouseX > 640 && mouseX < 910 && mouseY > 565 && mouseY < 595) {
    mode = ARK;
  }
}
