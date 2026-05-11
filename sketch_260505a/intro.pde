color start = #0060A8;
color options = #0060A8;

void intro() {
  image(greenHill, -390, 0);


  int i = 0;
  while (i < n) {
    myCloud[i].act();
    myCloud[i].show();
    i++;
  }

  fill(255, 255, 255, 100);
  rect(0, 0, 1000, 1000);

  sega = createFont ("SEGA.TTF", 100);
  textFont (sega);
  fill(0);
  text ("SONIC CLICKER", 507, 257);
  fill(#0060A8);
  text ("SONIC CLICKER", 500, 250);

  textSize(60);
  fill(0);
  text("START", 505, 605);
  fill(start);
  text("START", 500, 600);

  fill(0);
  text("OPTIONS", 505, 705);
  fill(options);
  text("OPTIONS", 500, 700);

  //tactile
  if (mouseX > 390 && mouseX < 610 && mouseY > 570 && mouseY < 630) {
    start = #FFFFFF;
  } else {
    start =  #0060A8;
  }

  if (mouseX > 350 && mouseX < 650 && mouseY > 670 && mouseY < 730) {
    options = #FFFFFF;
  } else {
    options =  #0060A8;
  }
}

void introClicks() {
  if (mouseX > 390 && mouseX < 610 && mouseY > 570 && mouseY < 630) {
    mode = LEVELS;
  }
  
   if (mouseX > 350 && mouseX < 650 && mouseY > 670 && mouseY < 730) {
    mode = OPTIONS;
  } 
}
