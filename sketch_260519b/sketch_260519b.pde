import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Pong!


//mode framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;
final int WIN = 4;
final int OPTIONS = 5;

int timer;
int rightScore = 0, leftScore = 0;

//ball and paddles

float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;
boolean wkey, skey, upkey, downkey;
float vx, vy;
float aioffset;

//texture

PImage casinoNight;
PFont arcade;
boolean singleplayer;
boolean rightwin, leftwin;
color pause = 255, Pause ;
color exit;
PImage sadSonic;
PImage happySonic;

Minim minim;
AudioPlayer hit, intro, game, win, lose;

void setup() {
  size(1900, 1000);
  textAlign(CENTER, CENTER);

  casinoNight = loadImage("casinonight.png");
  casinoNight.resize(2000, 1042);

  arcade = createFont("ARCADECLASSIC.TTF", 100);

  sadSonic = loadImage("sadSonic.png");
  sadSonic.resize(85, 120);

  happySonic = loadImage("happySonic.png");
  happySonic.resize(117, 120);

  minim = new Minim(this);
  intro = minim.loadFile("casinonight.mp3");
  game = minim.loadFile("game.mp3");
  hit = minim.loadFile("hit.mp3");
  lose = minim.loadFile("gameover.mp3");
  win = minim.loadFile("stageclear.mp3");

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
  } else {
    println ("Error : Mode =" + mode);
  }
}
