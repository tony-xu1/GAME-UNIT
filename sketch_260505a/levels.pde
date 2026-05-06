void levels() {
  noStroke();
  image(oilOcean, -223, 0);

  fill(#000000, 100);
  rect(0, 0, 1000, 1000);

  textSize(100);
  fill(#FFFFFF, 200);
  text ("LEVELS", 505, 105);
  fill(#0060A8);
  text ("LEVELS", 500, 100);
  
  fill(225);
  strokeWeight(10);
  stroke(#0060A8);
  square(150, 400, 150);
  square(425, 400, 150);
  square(700, 400, 150);
}

void levelsClicks() {
}
