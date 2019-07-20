int frogX=400;
int frogY=525;
int distance=50;

class Car {
  boolean intersects(Car car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}
  void leftEdge(Car car){
      if(car.getX()<=0-car.getSize()){
        this.carX=799;
  }
}
  void rightEdge(Car car){
      if(car.getX()>=800){
        this.carX=1-car.getSize();
  }
}
  
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  Car(int carX, int carY, int carSize, int carSpeed) {
    this.carX=carX;
    this.carY=carY;
    this.carSize=carSize;
    this.carSpeed=carSpeed;
  }
  void display() 
  {
    fill(0, 255, 0);
    rect(carX, carY, carSize, 50);
  }
  void moveLeft(){
    carX=carX-carSpeed;
  }
  void moveRight(){
    carX=carX+carSpeed;
  }
  int getX(){
    return(carX);
  }
  int getY(){
    return(carY);
  }
  int getSize(){
    return(carSize);
  }
}

Car car1=new Car(1, 100, 100, 6);
Car car1v2=new Car(400, 100,100,6);
Car car2=new Car(799, 200, 50, 12);
Car car2v2=new Car(300,200,50, 12);
Car car3=new Car(1, 300, 60, 10);
Car car4=new Car(799, 400, 80, 9);
Car car5=new Car(50, 150, 150, 3);
Car car6=new Car(700, 250, 120, 4);
Car car7=new Car(100, 350, 90, 8);
Car car8=new Car(750, 450, 180, 2);
void setup() {
  size(800, 600);
  background(0, 0, 0);
  keyPressed();
}

void draw() {
  background(0, 0, 0);
  car1.display();
  car2.display();
  car3.display();
  car4.display();
  car5.display();
  car6.display();
  car7.display();
  car8.display();
  car1.moveRight();
  car2.moveLeft();
  car3.moveRight();
  car4.moveLeft();
  car5.moveRight();
  car6.moveLeft();
  car7.moveRight();
  car8.moveLeft();
    if(car1.intersects(car1)==(true)){
    frogX=400;
    frogY=525;
  }
    if(car2.intersects(car2)==(true)){
    frogX=400;
    frogY=525;
  }
    if(car3.intersects(car3)==(true)){
    frogX=400;
    frogY=525;
  }
    if(car4.intersects(car4)==(true)){
    frogX=400;
    frogY=525;
  }
    if(car5.intersects(car5)==(true)){
    frogX=400;
    frogY=525;
  }
    if(car6.intersects(car6)==(true)){
    frogX=400;
    frogY=525;
  }
    if(car7.intersects(car7)==(true)){
    frogX=400;
    frogY=525;
  }
    if(car8.intersects(car8)==(true)){
    frogX=400;
    frogY=525;
  }
  car1.rightEdge(car1);
  car2.leftEdge(car2);
  car3.rightEdge(car3);
  car4.leftEdge(car4);
  car5.rightEdge(car5);
  car6.leftEdge(car6);
  car7.rightEdge(car7);
  car8.leftEdge(car8);
  
  car1.intersects(car1);
  car2.intersects(car2);
  car4.intersects(car4);
  car5.intersects(car5);
  car6.intersects(car6);
  car7.intersects(car7);
  car8.intersects(car8);
  
  fill(0, 200, 0);
  ellipse(frogX, frogY, 20, 20);
  keyCode=0;
  if (frogX<=49) {
    frogX=50;
  } else if (frogX>=751) {
    frogX=750;
  } else if (frogY>=551) {
    frogY=550;
  } else if (frogY<=49) {
    frogY=50;
  }
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == 38)
    {
      frogY=frogY-distance;
    } else if (keyCode == 40)
    {
      frogY=frogY+distance;
    } else if (keyCode == 37)
    {
      frogX=frogX-distance;
    } else if (keyCode == 39)
    {
      frogX=frogX+distance;
    }
  }
}
