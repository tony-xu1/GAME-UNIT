// clicker game--------------------------

int mode;
final int INTRO = 0;
final int PAUSE = 1;
final int GAMEOVER = 2;
final int LEVELS = 3;
final int DEATHEGG = 4;
final int WESTOPOLIS = 5;
final int ARK = 6;
final int WIN = 7;

//texture---------------------------------

PImage greenHill;
PFont sega;
PImage oilOcean;
PImage deathEgg;
PImage westopolis;
PImage ark;
PImage space;
PImage egg;
PFont arcade;
PImage sadSonic;
//target----------------------------------

float x, y, d;
float vx, vy;

int score, lives;

cloud[] myCloud;
int n = 10;


void setup() {

  textAlign(CENTER, CENTER);

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

  space = loadImage("space.jpg");
  space.resize(1600, 1000);

  egg = loadImage("egg.png");
  egg.resize(220, 220);
  
  sadSonic = loadImage("sadSonic.png");
  sadSonic.resize(85, 120);

  size(1000, 1000);
  mode = INTRO;

  myCloud = new cloud[n];
  int i = 0;
  while (i < n) {
    myCloud[i] = new cloud();
    i++;
  }

  x = 500;
  y = 500;
  d = 200;
  vx = random(-5, 5);
  vy = random(-5, 5);

  score = 0;
  lives = 5;
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
  } else if (mode ==WIN) {
    win();
  } else {
    println ("Error : Mode =" + mode);
  }
}
