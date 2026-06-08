void game () {

  noStroke();
  fill(#090831);
  rect(0, 0, 2000, 1000);

  fill(255, 0);
  circle(bx, by, bd);
  image(spindash, bx, by);

  bx = bx + vx;
  by = by + vy;

  if (mousePressed && dist(mouseX, mouseY, bx, by) < 50) {
    timer = timer - 1;
    if ( timer <= 0) {
      timer = 0;
    }
  }

  if ( by < bd/2 || by > height - bd/2) vy = -1 * vy;
  if ( bx < bd/2 || bx > width - bd/2) vx = -1 * vx;
  
   vy = vy + gravity;
  
  if (by < bd/2) by = bd/2;
  if (by > height - bd/2) by = height - bd/2;

  println(timer);
}

void gameClicks() {
}
