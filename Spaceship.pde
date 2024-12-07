public class Spaceship extends Floater  
{   
  public Spaceship(){
  myColor = color(255);
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500);
  myXspeed = 0;
  myYspeed = 0;
  myPointDirection = (int)(Math.random()*360);
  corners = 4;
  xCorners = new int[corners];
  yCorners = new int[corners];
    xCorners[0] = -15;
    yCorners[0] = -15;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -15;
    yCorners[2] = 15;
    xCorners[3] = -2;
    yCorners[3] = 0;
  }
    public void hyperspace()
    {
      myCenterX = (int)(Math.random() *500);
      myCenterY = (int)(Math.random() *500);
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = (int)(Math.random() *360);
    }
    
   public double getX(){return myCenterX;}
   public double getY(){return myCenterY;}
   public double getPointDirection(){return myPointDirection;}
  
}
