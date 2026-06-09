void game () {

  fill(#090831);
  rect(0, 0, 2000, 1000);

  circle(bx, by, bd);
  image(spindash, bx, by);
  
  fill(#E8DAAB);
  rect(0, 830, width, height);
  
  fill(#FF0000);
  circle(width, 0, 200);

  bx = bx + vx;
  by = by + vy;
  
  if (G == false){
   gravity = 0;
  } else {
    gravity = 0.5;
  }

  if (mousePressed && dist(mouseX, mouseY, bx, by) < 50 && G == false && clicked == false && timer > 0) {
    timer = timer - 1;
  }
  

  if ( by < bd/2) vy = -1 * vy;
  if ( bx < bd/2 || bx > width - bd/2) vx = -1 * vx;
  
   vy = vy + gravity;
  
  if (by < bd/2) by = bd/2;
  
  if (by > height + 100) lives = lives - 1;

  
  if (lives <= 0){
   mode = GAMEOVER; 
  }
  
  
  if (dist(width, 0, bx, by) < 100 + bd/2) {
    vx = (bx - width)/7;
    vy = (by - 0)/7;
  }

  println(timer);
  println(G);
}

void gameClicks() {
  
  if (dist(mouseX, mouseY, bx, by) < bd/2){
    G = true;
    clicked = true;
  }
}
