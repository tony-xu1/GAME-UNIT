void game() {
  noStroke();
  fill(#090831);
  rect(0, 0, 2000, 1000);

  stroke(255);
  strokeWeight(10);
  line(950, 0, 950, 1000);

  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  circle(ballx, bally, balld);

  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;

  if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  
  
}

void gameClicks() {
}
