color Infinite;
color level;
float rX = 400;


void options() {

  GreenHill.pause();
  westopolisost.pause();
  deatheggost.pause();
  gameover.pause();
  win.pause();
  optionsost.play();
  infiniteost.pause();
  levelost.pause();
  arkost.pause();
  image(angelIsland, -215, 0);

  noStroke();
  fill(#0060A8, 100);
  rect(0, 0, 1000, 1000);

  fill(0);
  textSize(70);
  text("BACK", 503, 903);
  fill(back);
  text("BACK", 500, 900);

  fill(0);
  textSize(100);
  text("OPTIONS", 503, 123);
  fill(255);
  text("OPTIONS", 500, 120);

  fill(#CCD8E0, 200);
  rect(100, 250, 800, 550);

  fill(0);
  textFont(arcade);
  textSize(40);
  text("GAMEMODE", 220, 300);

  fill(0);
  text("levels", 453, 303);
  fill(level);
  text("levels", 450, 300);

  fill(0);
  text("infinite", 683, 303);
  fill(Infinite);
  text("infinite", 680, 300);



  //strokeWeight(20);
  //stroke(255);
  //line(150, 500, 650, 500);

  //fill(255);
  //stroke(#0060AB);
  //strokeWeight(5);
  //circle(rX, 500, 50);

  //circle(780, 500, d);

  //noStroke();

  if (infinite == false) {
    level = #0060AB;
    Infinite = 255;
  } else if (infinite == true) {
    level = 255;
    Infinite = #0060AB;

    fill(0);
    text("size", 183, 450);

    strokeWeight(20);
    stroke(255);
    line(150, 500, 650, 500);

    fill(255);
    stroke(#0060AB);
    strokeWeight(5);
    circle(rX, 500, 50);

    circle(780, 500, d);

    noStroke();
  }


  if (mouseX > 380 && mouseX < 520 && mouseY > 290 && mouseY < 310) {
    level = #0060AB;
  } else if (infinite == true) {
    level = 255;
  }

  if (mouseX > 600 && mouseX < 770 && mouseY > 290 && mouseY < 310) {
    Infinite = #0060AB;
  } else if (infinite == false) {
    Infinite = 255;
  }


  if (mouseX > 400 && mouseX < 600 && mouseY > 870 && mouseY < 930) {
    back = #0060AB;
  } else {
    back = 255;
  }
}

void controlSlider() {
  if (mouseX > 150 && mouseX < 650 && mouseY > 450 && mouseY < 550 && infinite == true) {
    rX = mouseX;
  }
  if (infinite == true) {
    d = map(rX, 150, 650, 50, 200);
    ring.resize((int)d, (int)d);
  } else if (infinite == false) {
    d = 200;
  }
}




void optionsClicks() {


  if (mouseX > 400 && mouseX < 600 && mouseY > 870 && mouseY < 930) {
    mode = INTRO;
  }

  if (mouseX > 380 && mouseX < 520 && mouseY > 290 && mouseY < 310) {
    level = #0060AB;
    infinite = false;
  }

  if (mouseX > 600 && mouseX < 770 && mouseY > 290 && mouseY < 310) {
    Infinite = #0060AB;
    infinite = true;
  }
}
