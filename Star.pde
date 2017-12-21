public class Star 
{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show ()
  {
    fill(0);
    ellipse(myX, myY, 5, 5);
  }
}
