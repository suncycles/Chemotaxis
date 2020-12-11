Bacteria[] joe;
void setup()   
{     
  noStroke();
  size(500, 500);
  joe = new Bacteria[100];
  for (int i = 0; i < joe.length; i++)
  {
    joe[i] = new Bacteria();
  }
}   
void draw()   
{
  background(35, 12, 39);
  for (int i = 0; i < joe.length; i++)
  {
    joe [i].move();
    joe [i].show();
  }
}
class Bacteria    
{     
  int myX, myY;
  Bacteria()
  {
    myX = myY= 250;
  }
  void move()
  {
    if (mouseX <myX) {
      myX = myX +(int)(Math.random()*7)-4;
    } else
    {
      myX= myX+(int)(Math.random()*7)-2;
    }
    if (mouseY <myY) {
      myY = myY +(int)(Math.random()*7)-4;
    } else 
    {
      myY= myY+(int)(Math.random()*7)-2;
    }
  }

  void show()
  {

    fill(random(120)+70, random(120)+70, random(255));
    ellipse(myX, myY, 7, 5);
  }
}   
