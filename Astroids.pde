class Astroids extends Floater
{
  private double rotSpeed;
  
  public Astroids(){
    rotSpeed = (int)(Math.random()*5+4);
   myColor = color(100,50,0);
   corners = 6;
   xCorners = new int[corners];
   yCorners = new int[corners];
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);   
    xCorners[0] = 30;
    yCorners[0] = 0;
    xCorners[1] = 18; 
    yCorners[1] = 24;
    xCorners[2] = -18;
    yCorners[2] = 24;
    xCorners[3] = -30;
    yCorners[3] = 0;
    xCorners[4] = -24;
    yCorners[4] = -18;
    xCorners[5] = 24;
    yCorners[5] = -18;
  }
  
  
  public void move(){
    turn(rotSpeed);
    super.move();  
  }

   public double getX(){return myCenterX;}
   public double getY(){return myCenterY;}  

}
