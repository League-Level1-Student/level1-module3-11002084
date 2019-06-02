float y1=300;
float y2=295;
float y3=315;
float velocity=0;
float gravity=.98;
float pipeX=400;
float pipeY=400;
void setup(){
  size(400,600);
}
void draw(){
  background(0, 191,255);
  fill(255,255,0);
  stroke(255,255,0);
  ellipse(200,y1,50,50);
  fill(0,0,0);
  stroke(0,0,0);
  ellipse(200,y1,5, 10);
  fill(255,165,0);
  stroke(255,165,0);
  triangle(220,y2,220,y3,245,y2);
  fill(0,100,0);
  stroke(0,0,0);
  rect(pipeX, pipeY, 75, 500);
  if(pipeX==-250){
    pipeX=400;
  }
  if(y1==0){
  }
  pipeX=pipeX-5;
  y1=y1+velocity;
  y2=y2+velocity;
  y3=y3+velocity;
  velocity=velocity+gravity;
if (mousePressed){
   y1=y1-20;
   y2=y2-20;
   y3=y3-20;
   velocity=0;
}
}
