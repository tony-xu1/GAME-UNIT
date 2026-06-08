color start = #0060A8;

void intro () {

  image(pinball, width/2, height/2);

  int i = 0;
  while (i < n) {
    myCloud[i].act();
    myCloud[i].show();
    i++;
  }

  fill(#052046, 150);
  rect(0, 0, 700, 1000);


  textFont(sega);
  textSize(128);
  fill(0);
  text("pinball", width/2 + 5, 205);
  fill(#0060A8);
  text("pinball", width/2, 200);

  textFont(arcade);
  textSize(70);
  fill(0);
  text("start", width/2 + 5, 605);
  fill(start);
  text("start", width/2, 600);

  //tactile
  if (mouseX > 250 && mouseX < 440 && mouseY > 580 && mouseY < 620) {
    start = #FFDD52;
  } else {
    start = #0060A8;
  }
}

void introClicks() {

  if (mouseX > 250 && mouseX < 440 && mouseY > 580 && mouseY < 620) {
    mode = GAME;
  }
}
