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


PImage [] introgif;
int nofFrames;
int f;

PFont arcade;

void setup() {
  size(1000, 1000);
  textAlign(CENTER);

  nofFrames = 30;
  introgif = new PImage [nofFrames];

  int i = 0;
  while (i < nofFrames) {
    introgif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    i++;
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
