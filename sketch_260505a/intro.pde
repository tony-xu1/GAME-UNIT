void intro(){
  greenHill = loadImage("greenhill.jpg");
  image(greenHill, -390, 0, 1780, 1000);
  
  
    int i = 0;
  while (i < n) {
    myCloud[i].act();
    myCloud[i].show();
    i++;
  }
}
