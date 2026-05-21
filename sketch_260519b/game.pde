void game() {
  noStroke();
  fill(#090831);
  rect(0, 0, 2000, 1000);

  stroke(255);
  strokeWeight(10);
  line(950, 0, 950, 1000);

  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  strokeWeight(5);
  circle(ballx, bally, balld);

  textFont(arcade);
  fill(255);
  textSize(100);
  text(leftScore, width/4, 100);
  text(rightScore, 3 * width/4, 100);

  if (wkey == true && lefty > leftd/2) lefty = lefty - 5;
  if (skey == true && lefty < height - leftd/2) lefty = lefty + 5;


  if (singleplayer == false) {
    if (upkey == true && righty > rightd/2) righty = righty - 5;
    if (downkey == true && righty < height - rightd/2) righty = righty + 5;
  } else if (singleplayer == true && righty > rightd/2 && righty < height - rightd/2) {
    righty = bally + 10 * aioffset;
  }

  timer = timer - 1;

  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  if (bally < balld/2 || bally > height - balld/2) {
    vy = -1 * vy;
  }

  if (dist(leftx, lefty, ballx, bally) < leftd/2 + balld/2) {
    vx = ballx/8;
    vy = (bally - lefty)/8;
  }

  if (dist(rightx, righty, ballx, bally) < rightd/2 + balld/2) {
    vx = (ballx-width)/8;
    vy = (bally - righty)/8;
  }

  if (ballx > width) {
    leftScore = leftScore + 1;
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
  }
  
    if (ballx < 0) {
    rightScore = rightScore + 1;
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
  }
  
  if (rightScore >= 10){
   mode = WIN; 
   rightwin = true;
   leftwin = false;
  } 
  
    if (leftScore >= 10){
   mode = WIN; 
   leftwin = true;
   rightwin = false;
  } 
  
}

void gameClicks() {
}
