void setup()
{
  size(600, 700);
  noLoop();
  textSize(20);
}
void draw()
{
  //code
  int sum = 0;
  background(0);
  //a = 50;
  //b = 50;
  for(int j = 20; j < 500; j += 115){
    for(int i = 20; i < 500; i += 115){
      Die c = new Die(i, j);
      c.roll();
      c.show();
      sum += c.num;
      //a += 100;
    }
    //b += 100;
  }
  fill(255);
  text(sum, 300, 650);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations
  int myX, myY, num;
	
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    //roll = (int)(Math.random()*6) + 1;
    //myX1 = x + 50;
    //myY1 = y - 50;
  }
  void roll()
  {
    num = (int)(Math.random()*6) + 1;
  }
  void show()
  {
    fill(255);
    rect(myX,myY,100,100);
    fill(0);
    if(num == 1){
      ellipse(myX + 50, myY + 50, 20, 20);
    }else if(num == 2){
      ellipse(myX + 25, myY + 50, 20, 20);
      ellipse(myX + 75, myY + 50, 20, 20);
    }else if(num == 3){
      ellipse(myX + 25, myY + 25, 20, 20);
      ellipse(myX + 50, myY + 50, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
    }else if(num == 4){
      ellipse(myX + 25, myY + 25, 20, 20);
      ellipse(myX + 75, myY + 25, 20, 20);
      ellipse(myX + 25, myY + 75, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
    }else if(num == 5){
      ellipse(myX + 25, myY + 25, 20, 20);
      ellipse(myX + 75, myY + 25, 20, 20);
      ellipse(myX + 25, myY + 75, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
      ellipse(myX + 50, myY + 50, 20, 20);
    }else if(num == 6){
      ellipse(myX + 25, myY + 25, 20, 20);
      ellipse(myX + 75, myY + 25, 20, 20);
      ellipse(myX + 25, myY + 50, 20, 20);
      ellipse(myX + 75, myY + 50, 20, 20);
      ellipse(myX + 25, myY + 75, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
    }
  }
}
