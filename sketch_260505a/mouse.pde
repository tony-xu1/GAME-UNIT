void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == LEVELS) {
    levelsClicks();
  } else if (mode == DEATHEGG) {
    deathEggClicks();
  } else if (mode == WESTOPOLIS) {
    westopolisClicks();
  } else if (mode == ARK) {
    arkClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode ==WIN) {
    winClicks();
  } else if (mode == OPTIONS) {
    optionsClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else {
    println ("Error : Mode =" + mode);
  }
  if (mode == OPTIONS) {
    controlSlider();
  }
}

void mouseDragged() {
  if (mode == OPTIONS) {
    controlSlider();
  }
}
