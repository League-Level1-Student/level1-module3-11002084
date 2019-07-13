int x=400;
int y=550;
int distance=25;
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
    carX+=carSpeed;
  }
  void moveRight(){
    carX-=carSpeed;
  }
}
Car car1=new Car(0, 100, 100, 10);
Car car2=new Car(800, 200, 50, 6);
Car car3=new Car(0, 300, 60, 9);
Car car4=new Car(800, 400, 80, 7);
void setup() {
  size(800, 600);
  background(0, 0, 0);
}

void draw() {
  background(0, 0, 0);
  car1.display();
  car2.display();
  car3.display();
  car4.display();
  car1.moveLeft();
  car2.moveRight();
  car3.moveLeft();
  car4.moveRight();
  fill(0, 200, 0);
  ellipse(x, y, 20, 20);
  keyPressed();
  keyCode=0;
  if (x<=49) {
    x=50;
  } else if (x>=751) {
    x=750;
  } else if (y>=551) {
    y=550;
  } else if (y<=49) {
    y=50;
  }
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == 38)
    {
      y=y-distance;
    } else if (keyCode == 40)
    {
      y=y+distance;
    } else if (keyCode == 37)
    {
      x=x-distance;
    } else if (keyCode == 39)
    {
      x=x+distance;
    }
  }
}
