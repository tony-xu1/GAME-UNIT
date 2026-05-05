class cloud {

  float cloudX, cloudY, cloudS, cloudT;


  cloud() {
    cloudX = random(0, 800);
    cloudY = random(0, 400);
    cloudS = random(0.3, 1.5);
    cloudT = random(200, 225);
  }

  void show() {
    pushMatrix();
    translate(cloudX, cloudY);
    fill(#FFFFFF, cloudT);
    noStroke();
    circle(-10, -25, 100);
    circle(40, -15, 80);
    circle(-50, 0, 60);
    circle(-30, -13, 80);
    circle(16, 0, 60);
    circle(60, 12, 40);
    popMatrix();
  }

  void act() {
    cloudX = cloudX + random(1, 5);
    if (cloudX > 1100) {
      cloudX = -100;
      cloudY = random(0, 200);
    }
  }
}
