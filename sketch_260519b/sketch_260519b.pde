import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Pong!

int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;
final int SPECIAL = 4;
final int WIN = 5;
final int OPTIONS = 6;

int timer;
int rightScore = 0, leftScore = 0;

float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;
boolean wkey, skey, upkey, downkey;
float vx, vy;
float aioffset;

PImage casinoNight;
PFont arcade;
boolean singleplayer;
boolean rightwin, leftwin;

void setup() {
  size(1900, 1000);
  textAlign(CENTER, CENTER);

  casinoNight = loadImage("casinonight.png");
  casinoNight.resize(2000, 1042);

  arcade = createFont("ARCADECLASSIC.TTF", 100);

  leftx = 0;
  lefty = height/2;
  leftd = 150;
  rightx = width;
  righty = height/2;
  rightd = 150;
  ballx = width/2;
  bally = height/2;
  balld = 30;
  vx = random(-5, -10);
  vy = 0;
  timer = 50;
  aioffset = random(-1, 1);

  wkey = skey = upkey = downkey = false;
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
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == SPECIAL) {
    special();
  } else {
    println ("Error : Mode =" + mode);
  }
}
