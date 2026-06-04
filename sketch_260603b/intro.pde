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
}

void introClicks() {
}
