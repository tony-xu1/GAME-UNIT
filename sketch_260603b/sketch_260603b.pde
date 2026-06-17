//self selected project--------------------------------------

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

PImage pinball;
PImage spindash;
PImage crt;
PImage sadSonic;
PFont arcade, sega;

//ball and paddle
float bx, by, bd, lx, ly, ld, rx, ry, rd;
float vx, vy;
int timer = 40;
float gravity = 0.5;
int lives = 5;
int score = 0;
boolean G;
boolean clicked;

int time;

boolean leftkey, rightkey;

int tptimer = 300;
int highScore;

int[] cbumperx = new int[5];
int[] cbumpery = new int [5];
int cbumperd;
int tempx, tempy;

PVector[] lslope = new PVector[3];
PVector[] rslope = new PVector[3];



cloud[] myCloud;
int n = 10;

Minim minim;
AudioPlayer intro, game, hit, gameover;


void setup() {
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  size(700, 1000);

  pinball = loadImage("spinball.jpg");
  pinball.resize(1955, 1100);

  spindash = loadImage("spindash.png");
  spindash.resize(50, 50);

  crt = loadImage("vhs.png");
  crt.resize(1333, 1000);

  sadSonic = loadImage("sadSonic.png");
  sadSonic.resize(85, 120);

  myCloud = new cloud[n];
  int i = 0;
  while (i < n) {
    myCloud[i] = new cloud();
    i++;
  }

  minim = new Minim(this);
  intro = minim.loadFile("intro.mp3");
  game = minim.loadFile("toxicCaves.mp3");
  hit = minim.loadFile("hit.mp3");
  gameover = minim.loadFile("gameover.mp3");

  lslope[0] = new PVector(0, 750);
  lslope[1] = new PVector(250, 850);
  lslope[2] = new PVector(0, 850);

  rslope[0] = new PVector(700, 750);
  rslope[1] = new PVector(450, 850);
  rslope[2] = new PVector(700, 850);

  arcade = createFont ("ARCADECLASSIC.TTF", 100);

  sega = createFont ("SEGA.TTF", 100);


  bx = 635;
  by = 740;
  bd = 50;
  lx = 250;
  ly = 870;
  rx = 450;
  ry = 870;
  ld = 100;
  rd = 100;
  vx = 0;
  vy = 0;
  lives = 5;
  G = false;
  clicked = false;
  cbumperd = 20;
  //tempx = (int) random(50, 100);
  //tempy = (int) random(50, 100);
  //int b = 0;
  //while (b < a) {
  //  cbumperx[b] = tempx;
  //  cbumpery[b] = tempy;
  //  tempx = tempx + (int) random(50, 100);
  //  if ( tempx >= width) {
  //    tempy = tempy + (int) random(50, 100);
  //    tempx = (int) random(100, 500);
  //  }
  //  b++;
  //}


  cbumperx[0] = 370;
  cbumperx[1] = 175;
  cbumperx[2] = 550;
  cbumperx[3] = 100;
  cbumperx[4] = 480;

  cbumpery[0] = 550;
  cbumpery[1] = 650;
  cbumpery[2] = 500;
  cbumpery[3] = 540;
  cbumpery[4] = 620;
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
  } else {
    println ("Error : Mode =" + mode);
  }
}
