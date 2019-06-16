boolean end=false;
float y1=300;
float y2=295;
float y3=315;
float velocity=0;
float gravity=.98;
float pipeX=800;
float pipeY= 400;
int score= 0;
void setup() {
  size(400, 600);
}
void draw() {
  if (end==true) {
    fill(0, 0, 0);
    rect(0, 0, 1000, 1000);
    fill(255, 255, 255);
    text("YOU SUCK", 150, 300);
  } else {
    background(0, 191, 255);
    fill(0, 0, 0);
    text(score, 10, 10);
    fill(255, 255, 0);
    stroke(255, 255, 0);
    ellipse(100, y1, 50, 50);
    fill(0, 0, 0);
    stroke(0, 0, 0);
    ellipse(100, y1, 5, 10);
    fill(255, 165, 0);
    stroke(255, 165, 0);
    triangle(120, y2, 120, y3, 145, y2);
    fill(0, 100, 0);
    stroke(0, 0, 0);
    rect(pipeX, pipeY-650, 75, 500);
    rect(pipeX, pipeY, 75, 500);
    if (pipeX==-250) {
      pipeX=400;
      pipeY=random(300)+200;
    }
    if (pipeX==100) {
      score++;
    }
    if (y1==0) {
    }
    pipeX=pipeX-5;
    y1=y1+velocity;
    y2=y2+velocity;
    y3=y3+velocity;
    velocity=velocity+gravity;
    if (mousePressed) {
      velocity=-10;
    }
    if (y1<0 || y1>600 || intersectsPipes()==true) {
      end=true;
    }
  }
}
boolean intersectsPipes() { 
  if (y1 < pipeY-200 && 100 > pipeX && 100 < (pipeX+75)) {
    return true;
  } else if (y1>pipeY && 100 > pipeX && 100 < (pipeX+75)) {
    return true;
  } else { 
    return false;
  }
}
