void options() {
  image(angelIsland, -215, 0);

  fill(#0060A8, 100);
  rect(0, 0, 1000, 1000);

  fill(0);
  text("BACK", 503, 903);
  fill(back);
  text("BACK", 500, 900);
}

void optionsClicks() {
  
    
  if (mouseX > 460 && mouseX < 540 && mouseY > 885 && mouseY < 915) {
    mode = INTRO;
  }
}
