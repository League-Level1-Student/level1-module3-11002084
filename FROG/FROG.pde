int x=400;
int y=550;
int distance=25;
void setup() {
  size(800, 600);
}
void draw() {
  background(0, 0, 0);
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
  FROG car(
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
