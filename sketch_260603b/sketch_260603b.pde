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
PFont arcade, sega;

cloud[] myCloud;
int n = 10;

void setup() {
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  size(700, 1000);

  pinball = loadImage("spinball.jpg");
  pinball.resize(1955, 1100);


  myCloud = new cloud[n];
  int i = 0;
  while (i < n) {
    myCloud[i] = new cloud();
    i++;
  }
  
  arcade = createFont ("ARCADECLASSIC.TTF", 100);

  sega = createFont ("SEGA.TTF", 100);

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
