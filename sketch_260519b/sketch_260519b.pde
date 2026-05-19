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

PImage casinoNight;
PFont arcade;

void setup(){ 
  size(2000, 1000);
  
  casinoNight = loadImage("casinonight.png");
  casinoNight.resize(2000, 1042);
}

void draw(){
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
  } else if (mode == OPTIONS){
    options();
  } else if (mode == SPECIAL) {
    special();
  } else {
    println ("Error : Mode =" + mode);
  }
}
