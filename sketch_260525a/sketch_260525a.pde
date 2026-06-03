import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//mode framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int WIN = 4;


PImage happySonic, sadSonic;
PImage [] introgif;
int nofFrames;
int f;
int n;

int [] x;
int [] y;
boolean [] alive;
int tempx, tempy;

PFont arcade;
boolean akey, dkey;

int timer = 50;
int score;
int lives;

// brick and paddles
int brickx, bricky, brickd, ballx, bally, balld, paddlex, paddley, paddled;

int bx, by, px, py;

//minim
Minim minim;
AudioPlayer intro, game, hit, win, lose;

void setup() {
  size(1000, 1000);
  textAlign(CENTER);

  sadSonic = loadImage("sadSonic.png");
  sadSonic.resize(85, 120);

  happySonic = loadImage("happySonic.png");
  happySonic.resize(117, 120);

  minim = new Minim(this);
  intro = minim.loadFile("special.mp3");
  game = minim.loadFile("game.mp3");
  hit = minim.loadFile("hit.mp3");
  lose = minim.loadFile("gameover.mp3");
  win = minim.loadFile("stageclear.mp3");

  nofFrames = 30;
  introgif = new PImage [nofFrames];

  int i = 0;
  while (i < nofFrames) {
    introgif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    i++;
  }

  tempx = 100;
  tempy = 100;
  brickd = 50;
  ballx = width/2;
  bally = 700;
  balld= 20;
  paddlex = width/2;
  paddley = 1000;
  paddled = 100;
  bx = 0;
  by = 7;
  score = 0;
  lives = 5;

  n = 54;
  x = new int[n];
  y = new int[n];
  alive = new boolean [n];

  int b = 0;
  while (b < n) {
    x[b] = tempx;
    y[b] = tempy;
    alive[b] = true;
    tempx = tempx + 100;
    if ( tempx == width) {
      tempy = tempy + 100;
      tempx = 100;
    }
    b++;
  }

  arcade = createFont("ARCADECLASSIC.TTF", 100);
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == WIN) {
    win();
  } else {
    println ("Error : Mode =" + mode);
  }
}
