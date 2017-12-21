class Asteroid extends Floater
{
  private int rotationSpeed;
  public Asteroid(){
    rotationSpeed = 2 - (int)(Math.random() * 4) ;
    corners = 5;
    myColor = 255;
    myCenterX = Math.random() * 400;
    myCenterY = Math.random() * 400;
    myDirectionX = Math.random()*3 - 3;
    myDirectionY = Math.random()*3 - 3;
    myPointDirection = 0;

    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 4;
    yCorners[0] = -5;
    xCorners[1] = -5;
    yCorners[1] = -4;
    xCorners[2] = -7;
    yCorners[2] = 4;
    xCorners[3] = 0;
    yCorners[3] = 8;
    xCorners[4] = 5;
    yCorners[4] = 4;
  }
   public void setX(int x) {myCenterX = x;}
    public void setY(int y) {myCenterY = y;}
    public void setDirectionX(double x){myDirectionX = x;}
    public void setDirectionY(double y){myDirectionY = y;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public int getX(){return (int)myCenterX;}
    public int getY(){return (int)myCenterY;}
    public double getDirectionX(){return myDirectionX;}
    public double getDirectionY(){return myDirectionY;}
    public double getPointDirection(){return myPointDirection;}
    public void move ()   
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX; 
    myCenterY += myDirectionY;      
    myPointDirection+=5*rotationSpeed;  

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
   }   
    
  }   
    
}