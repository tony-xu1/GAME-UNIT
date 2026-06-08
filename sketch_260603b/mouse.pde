void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == WIN) {
    winClicks();
  } else {
    println ("Error : Mode =" + mode);
  }
    vx = 0;
    vy = -1 * (40 - timer);
  }
