int x=100;
int y=300;
int len=200;
int a=50;

public void setup()
{
size(400, 400);
}
public void draw()
{
 sierpinski(x,y,len);
}
public void mousePressed()//optional
{
a=a+5;
draw();
}
public void keyPressed()//optional
{
a=a-5;
draw();
}
public void sierpinski(int x, int y, int len) 
{
  if (len<=a)
     triangle(x,y,x+len/2,y-len,x+len,y);
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
    sierpinski(x+len/2,y,len/2);
  }
}
