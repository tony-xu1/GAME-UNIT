void game () {

  fill(#090831);
  rect(0, 0, 2000, 1000);

  int b = 0;
  while (b < a) {
    manageBricks(b);
    b++;
  }

  fill(255, 0);
  circle(bx, by, bd);
  image(spindash, bx, by);

  fill(#FF0000);
  circle(width, 0, 200);

  fill(#E8E0C5);
  triangle(0, 750, 250, 850, 0, 850);
  triangle(700, 750, 450, 850, 700, 850);

  fill(255);
  circle(lx, ly, ld);
  circle(rx, ry, rd);

  fill(#E8DAAB);
  stroke(0);
  strokeWeight(10);
  rect(0, 850, width, height);
  noStroke();

  bx = bx + vx;
  by = by + vy;

  if (G == false) {
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

  if (by > height + 100) {
    lives = lives - 1;
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
    timer = 40;
  }


  if (lives <= 0) {
    mode = GAMEOVER;
  }


  if (dist(width, 0, bx, by) < 100 + bd/2) {
    vx = (bx - width)/7;
    vy = (by - 0)/7;
  }

  if (rightkey == true && ry > 830) {
    ry = ry - 7;
    rx = rx - 5;
  }
  if (rightkey == false && ry < 870) {
    ry = ry + 7;
    rx = rx + 5;
  }

  if (leftkey == true && ly > 830) {
    ly = ly - 7;
    lx = lx + 5;
  }
  if (leftkey == false && ly < 870) {
    ly = ly + 7;
    lx = lx - 5;
  }

  if (dist(lx, ly, bx, by)< ld/2 + bd/2) {
    vx = (bx - lx)/3;
    vy = (by - ly)/3;
  }

  if (dist(rx, ry, bx, by)< rd/2 + bd/2) {
    vx = (bx - rx)/3;
    vy = (by - ry)/3;
  }

  println(timer);
  println(G);
  println(clicked);
}

void gameClicks() {

  if (dist(mouseX, mouseY, bx, by) < bd/2 && clicked == false) {
    G = true;
    clicked = true;
    vx = random(-1.5, 1.5);
    vy = -1 * (40 - timer);
  }
}

void manageBricks(int b) {
  fill(#0060A8);
  circle(cbumperx[b], cbumpery[b], cbumperd);
  if (dist(cbumperx[b], cbumpery[b], bx, by) < cbumperd/2 + bd/2) {
    vx = (bx - cbumperx[b])/4;
    vy = (by - cbumpery[b])/4;
    score = score + 1;
  }
}
