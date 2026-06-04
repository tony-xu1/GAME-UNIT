class cloud {

  float cloudX, cloudY, cloudS, cloudT;


  cloud() {
    cloudX = random(0, 800);
    cloudY = random(0, 400);
    cloudS = random(0.3, 1.5);
    cloudT = random(150, 200);
  }

  void show() {
    pushMatrix();
    translate(cloudX, cloudY);
    fill(#810D0D, cloudT);
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
    cloudX = cloudX + random(1, 3);
    if (cloudX > 1100) {
      cloudX = -100;
      cloudY = random(0, 200);
    }
  }
}
