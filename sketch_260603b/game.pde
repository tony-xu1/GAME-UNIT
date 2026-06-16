color left;
color right;

void game () {

  fill(#090831);
  rect(0, 0, 2000, 1000);

  int b = 0;
  while (b < 5) {
    manageBricks(b);
    b++;
  }

  fill(#FF0000);
  circle(width, 0, 200);

  fill(#0000FF);
  circle(width/2, 400, 150);
  fill(255);
  text("500", width/2, 400);

  fill(#FF0000);
  circle(120, 350, 100);
  fill(255);
  textSize(25);
  text("speed!", 120, 350);
  textSize(70);

  fill(#1C810D);
  circle(200, 100, 170);
  fill(255);
  text("1000", 200, 100);

  fill(#4AD8D5);
  circle(450, 60, 100);
  circle(20, 680, 100);
  fill(255);
  textSize(20);
  text("TP " + tptimer, 450, 60);
  text("TP " + tptimer, 25, 680);
  textSize(70);

  fill(255, 0);
  circle(bx, by, bd);
  tint(255, 255);
  image(spindash, bx, by);

  boolean hit1 = polyCircle1(lslope, bx, by, bd);
  boolean hit2 = polyCircle2(rslope, bx, by, bd);

  fill(#E8E0C5);
  beginShape();
  for (PVector v : lslope) {
    vertex(v.x, v.y);
  }
  endShape();

  beginShape();
  for (PVector v : rslope) {
    vertex(v.x, v.y);
  }
  endShape();

  fill(255);
  circle(lx, ly, ld);
  circle(rx, ry, rd);

  fill(#E8DAAB);
  stroke(0);
  strokeWeight(10);
  rect(0, 850, width, height);
  noStroke();

  fill(0);
  textAlign(LEFT);
  textSize(35);
  text("score " + score, 20, 950);
  text("lives " + lives, 20, 980);
  textSize(70);
  textAlign(CENTER, CENTER);

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

  if (tptimer > 0) {
    tptimer = tptimer - 1;
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
    G = false;
    clicked = false;
    timer = 40;
    tptimer = 300;
  }

  //if (bx > width/2 - bd/2) bx = width - bd/2;
  //if (bx < bd/2) bx = bd/2;
  //if (by < bd/2) bx = bd/2;

  if (lives <= 0) {
    mode = GAMEOVER;
  }

  if (dist(width/2, 400, bx, by) < 75 + bd/2) {
    vx = (bx - width/2)/6;
    vy = (by - 400)/6;
    score = score + 500;
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
    score = score + 1;
  }

  if (dist(rx, ry, bx, by)< rd/2 + bd/2) {
    vx = (bx - rx)/3;
    vy = (by - ry)/3;
    score = score + 1;
  }

  if (hit1 == true) {
    vx = 10;
    vy = -7;
  }

  if (hit2 == true) {
    vx = -10;
    vy = -7;
  }

  if (by + bd/2 > 0.4*bx + 750 && hit1 == true) {
    by = 0.4*bx + 750 - bd/2;
    hit1 = false;
  }

  if (by + bd/2 > -0.4*bx + 750 && hit2 == true) {
    by = -0.4*bx + 1030 - bd/2;
    hit2 = false;
  }

  if (dist(120, 350, bx, by) < 50 + bd/2) {
    vx = 1.1 * vx;
    vy = 1.1 * vy;
  }


  if (dist(200, 100, bx, by)< 85 + bd/2) {
    vx = (bx - 200)/5;
    vy = (by - 100)/5;
    score = score + 1000;
  }

  if (dist(450, 60, bx, by)< 50 + bd/2 && tptimer == 0) {
    bx = 25;
    by = 680;
    tptimer = 300;
  }

  if (dist(25, 680, bx, by)< 50 + bd/2 && tptimer == 0) {
    bx = 450;
    by = 60;
    tptimer = 300;
  }
  
  tint(255, 200);
  image(vhs, width/2, height/2); 
}



//https://www.jeffreythompson.org/collision-detection/poly-circle.php
boolean polyCircle1 ( PVector[] lslope, float bx, float by, float bd) {
  int next = 0;
  for (int current=0; current<lslope.length; current++) {
    next = current+1;
    if (next == lslope.length) next = 0;

    PVector lc = lslope[current];
    PVector ln = lslope[next];

    boolean collision1 = lineCircle(lc.x, lc.y, ln.x, ln.y, bx, by, bd/2);
    if (collision1) return true;
  }
  return false;
}

boolean polyCircle2 ( PVector[] rslope, float bx, float by, float bd) {
  int next = 0;
  for (int current=0; current<rslope.length; current++) {
    next = current+1;
    if (next == rslope.length) next = 0;

    PVector rc = rslope[current];
    PVector rn = rslope[next];

    boolean collision2 = lineCircle(rc.x, rc.y, rn.x, rn.y, bx, by, bd/2);
    if (collision2) return true;
  }
  return false;
}

boolean lineCircle(float x1, float y1, float x2, float y2, float bx, float by, float bd) {
  boolean inside1 = pointCircle(x1, y1, bx, by, bd/2);
  boolean inside2 = pointCircle(x2, y2, bx, by, bd/2);
  if (inside1 || inside2) return true;

  float distX = x1 - x2;
  float distY = y1 - y2;
  float len = sqrt( (distX*distX) + (distY*distY) );

  float dot = ( ((bx-x1)*(x2-x1)) + ((by-y1)*(y2-y1)) ) / pow(len, 2);

  float closestX = x1 + (dot * (x2-x1));
  float closestY = y1 + (dot * (y2-y1));

  boolean onSegment = linePoint(x1, y1, x2, y2, closestX, closestY);
  if (!onSegment) return false;

  distX = closestX - bx;
  distY = closestY - by;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  if (distance <= bd/2) {
    return true;
  }
  return false;
}

boolean linePoint(float x1, float y1, float x2, float y2, float px, float py) {
  float d1 = dist(px, py, x1, y1);
  float d2 = dist(px, py, x2, y2);
  float lineLen = dist(x1, y1, x2, y2);

  float buffer = 0.1;

  if (d1+d2 >= lineLen-buffer && d1+d2 <= lineLen+buffer) {
    return true;
  }
  return false;
}

boolean pointCircle(float px, float py, float bx, float by, float bd) {
  float distX = px - bx;
  float distY = py - by;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  if (distance <= bd/2) {
    return true;
  }
  return false;
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
  fill(#D8924A);
  circle(cbumperx[b], cbumpery[b], cbumperd);
  fill(255);
  //text(b, cbumperx[b], cbumpery[b]);
  if (dist(cbumperx[b], cbumpery[b], bx, by) < cbumperd/2 + bd/2) {
    vx = (bx - cbumperx[b])/5;
    vy = (by - cbumpery[b])/5;
    score = score + 10;
  }
}
