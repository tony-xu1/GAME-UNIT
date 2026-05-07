// clicker game--------------------------

int mode;
final int INTRO = 0;
final int PAUSE = 1;
final int GAMEOVER = 2;
final int LEVELS = 3;
final int DEATHEGG = 4;
final int WESTOPOLIS = 5;
final int ARK = 6;

PImage greenHill;
PFont sega;
PImage oilOcean;
PImage deathEgg;
PImage westopolis;
PImage ark;

cloud[] myCloud;
int n = 10;


void setup() {
  greenHill = loadImage("greenhill.jpg");
  greenHill.resize(1780, 1000);

  oilOcean = loadImage("oilocean.jpg");
  oilOcean.resize(1446, 1000);
  
  deathEgg = loadImage("deathegg.jpg");
  deathEgg.resize(150, 150);
  
  westopolis = loadImage("Westopolis.png");
  westopolis.resize(150, 150);
  
  ark = loadImage("ark.jpg");
  ark.resize(150, 150);

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
  } else if (mode == DEATHEGG) {
    deathEgg();
  } else if (mode == WESTOPOLIS) {
    westopolis();
  } else if (mode == ARK) {
    ark();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println ("Error : Mode =" + mode);
  }
}
