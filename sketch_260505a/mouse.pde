void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  }else if (mode == LEVELS){
    levelsClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else {
    println ("Error : Mode =" + mode);
  }
}
