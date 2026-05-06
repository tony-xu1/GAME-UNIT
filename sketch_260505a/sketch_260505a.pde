// clicker game--------------------------

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int LEVELS = 4;

PImage greenHill;
PFont sega;
PImage oilOcean;

cloud[] myCloud;
int n = 10;


void setup() {
  greenHill = loadImage("greenhill.jpg");
  greenHill.resize(1780, 1000);
  
  oilOcean = loadImage("oilocean.jpg");
  oilOcean.resize(1446, 1000);

  size(1000, 1000);
  mode = INTRO;

  myCloud = new cloud[n];
  int i = 0;
  while (i < n) {
    myCloud[i] = new cloud();
    i++;
  }
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == LEVELS) {
    levels();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println ("Error : Mode =" + mode);
  }
}
