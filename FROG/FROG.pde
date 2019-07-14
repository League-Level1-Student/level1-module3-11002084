int frogX=400;
int frogY=525;
int distance=50;
class Car {
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
    carX-=carSpeed;
  }
  void moveRight(){
    carX+=carSpeed;
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
Car car1=new Car(0, 100, 100, 6);
Car car2=new Car(800, 200, 50, 12);
Car car3=new Car(0, 300, 60, 10);
Car car4=new Car(800, 400, 80, 9);
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
  intersects(car1);
  intersects(car2);
  intersects(car3);
  intersects(car4);
  intersects(car5);
  intersects(car6);
  intersects(car7);
  intersects(car8);
  
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
