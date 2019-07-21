int frogX=400;
int frogY=525;
int distance=50;
int lives=5;

class Car {
  boolean intersects(Car car) {
    if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
    {
      return true;
    } else 
    {
      return false;
    }
  }
  void leftEdge(Car car) {
    if (car.getX()<=0-car.getSize()) {
      this.carX=799;
    }
  }
  void rightEdge(Car car) {
    if (car.getX()>=800) {
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
  void moveLeft() {
    carX=carX-carSpeed;
  }
  void moveRight() {
    carX=carX+carSpeed;
  }
  int getX() {
    return(carX);
  }
  int getY() {
    return(carY);
  }
  int getSize() {
    return(carSize);
  }
}

Car car1=new Car(1, 100, 100, 6);
Car car1v2=new Car(400, 100, 100, 6);
Car car2=new Car(799, 200, 50, 12);
Car car2v2=new Car(300, 200, 50, 12);
Car car3=new Car(1, 300, 60, 10);
Car car3v2=new Car(200, 300, 60, 10);
Car car4=new Car(799, 400, 80, 9);
Car car4v2= new Car(200, 400, 80, 9);
Car car5=new Car(50, 150, 150, 3);
Car car5v2= new Car(600, 150, 150, 3);
Car car6=new Car(700, 250, 120, 4);
Car car6v2= new Car(300, 250, 120, 4);
Car car7=new Car(100, 350, 90, 8);
Car car7v2= new Car(300, 350, 90, 8);
Car car8=new Car(750, 450, 180, 2);
Car car8v2=new Car(250, 450, 180, 2);
Car win=new Car(0, 0, 900, 0);
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
  win.display();
  car1v2.display();
  car2v2.display();
  car3v2.display();
  car4v2.display();
  car5v2.display();
  car6v2.display();
  car7v2.display();
  car8v2.display();
  fill(0, 0, 0);
  text("Lives: "+lives, 10, 10, 70, 80);
  car1.moveRight();
  car1v2.moveRight();
  car2.moveLeft();
  car2v2.moveLeft();
  car3.moveRight();
  car3v2.moveRight();
  car4.moveLeft();
  car4v2.moveLeft();
  car5.moveRight();
  car5v2.moveRight();
  car6.moveLeft();
  car6v2.moveLeft();
  car7.moveRight();
  car7v2.moveRight();
  car8.moveLeft();
  car8v2.moveLeft();
  if (car1.intersects(car1)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car2.intersects(car2)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car3.intersects(car3)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car4.intersects(car4)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car5.intersects(car5)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car6.intersects(car6)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car7.intersects(car7)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car8.intersects(car8)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car1v2.intersects(car1v2)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car2v2.intersects(car2v2)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car3v2.intersects(car3v2)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car4v2.intersects(car4v2)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car5v2.intersects(car5v2)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car6v2.intersects(car6v2)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car7v2.intersects(car7v2)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (car8v2.intersects(car8v2)==(true)) {
    frogX=400;
    frogY=525;
    lives--;
  }
  if (win.intersects(win)==(true)) {
    fill(0, 0, 0);
    rect(0, 0, 800, 600);
    fill(255, 255, 255);
    text("Oh boy you won good for you", 10, 10, 70, 80);
    frogX=900;
    frogY=25;
  }
  if (lives<=0) {
    fill(0, 0, 0);
    rect(0, 0, 800, 600);
    fill(255, 255, 255);
    text("*Slowly fortnite dances* You suck Spend your life savings to gain one more life?", 10, 10, 90, 90);
    frogX=-100;
    frogY=-100;
  }

  car1.rightEdge(car1);
  car1v2.rightEdge(car1v2);
  car2.leftEdge(car2);
  car2v2.leftEdge(car2v2);
  car3.rightEdge(car3);
  car3v2.rightEdge(car3v2);
  car4.leftEdge(car4);
  car4v2.leftEdge(car4v2);
  car5.rightEdge(car5);
  car5v2.rightEdge(car5v2);
  car6.leftEdge(car6);
  car6v2.leftEdge(car6v2);
  car7.rightEdge(car7);
  car7v2.rightEdge(car7v2);
  car8.leftEdge(car8);
  car8v2.leftEdge(car8v2);

  fill(0, 200, 0);
  ellipse(frogX, frogY, 20, 20);
  if (frogX<=49) {
    frogX=50;
  } else if (frogX>=751) {
    frogX=750;
  } else if (frogY>=526) {
    frogY=525;
  } else if (frogY<=26) {
    frogY=25;
  }
}

void keyPressed()
{
  if (key == CODED) {
    println(keyCode);
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
  
  if (keyCode == 69)
    {
      lives=69420;
    }
}
