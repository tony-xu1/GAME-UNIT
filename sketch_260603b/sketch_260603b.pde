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

boolean leftkey, rightkey;

int[] cbumperx;
int[] cbumpery;
int cbumperd;
int tempx, tempy;
int a;


cloud[] myCloud;
int n = 10;

void setup() {
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  size(700, 1000);

  pinball = loadImage("spinball.jpg");
  pinball.resize(1955, 1100);

  spindash = loadImage("spindash.png");
  spindash.resize(50, 50);


  myCloud = new cloud[n];
  int i = 0;
  while (i < n) {
    myCloud[i] = new cloud();
    i++;
  }

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
  a = 10;
  cbumperx = new int[a];
  cbumpery = new int[a];
  tempx = 50;
  tempy = 50;

  int b = 0;
  while (b < a) {
    cbumperx[b] = tempx;
    cbumpery[b] = tempy;
    tempx = tempx + (int) random(50, 100);
    if ( tempx == width) {
      tempy = tempy + (int) random(50, 100);
      tempx = (int) random(100, 500);
    }
    b++;
  }
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
