color again = 255;
color exit = 255;

void gameover(){
  fill(#981919, 10);
  rect(0, 0, 1000, 1000);
  
  image(sadSonic, 450, 450);
  
  textFont(arcade);
  fill(255);
  textSize(150);
  text("GAME OVER", 500, 300);
  
  textSize(60);
  
  fill(again);
  text("try again", 500, 640);
  
  fill(exit);
  text("exit", 500, 700);
  
}

void gameoverClicks(){
  
}
