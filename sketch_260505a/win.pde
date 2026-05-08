void win() {
  fill(#D8B609, 10);
  rect(0, 0, 1000, 1000);

  textFont(arcade);
  fill(255);
  textSize(150);
  text("YOU WIN", 500, 300);

  textSize(60);

  fill(again);
  text("next level", 500, 640);

  fill(exit);
  text("exit", 500, 700);
}

void winClicks() {
}
