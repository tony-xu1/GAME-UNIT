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
}

void introClicks() {
}
