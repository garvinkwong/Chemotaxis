bacteria[] davyn;

void setup() {
  size(500, 500);
  davyn = new bacteria[25];
  for (int i = 0; i < davyn.length; i++) {
    davyn[i] = new bacteria();
  }
}

void draw() {
  background(#a9cdd9);
  for (int i = 0; i < davyn.length; i++) {
    davyn[i].show();
    davyn[i].move();
  }
}

class bacteria {
  int myX, myY, myColor;
  bacteria() {
    myX=20;
    myY=250;
    myColor=(int)(Math.random()*255)+50;
  }

  void move() {
    if (mouseX > myX) {
      myX = myX + (int)(Math.random()*7)-2;
    } else {
      myX = myX + (int)(Math.random()*7)-4;
    }

    if (mouseY > myY) {
      myY = myY + (int)(Math.random()*7)-2;
    } else {
      myY = myY + (int)(Math.random()*7)-4;
    }
  }
    void show() {
      noStroke();
      fill(0, 0, myColor);
      ellipse(myX, myY, myX/4, myX/4);
    }
  }



