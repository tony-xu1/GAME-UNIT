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
  } else {
    println ("Error : Mode =" + mode);
  }
}
