class Bullet extends Floater{
  public Bullet(Spaceship d){
    myCenterX = d.getX();
    myCenterY = d.getY();
    myXspeed= d.getmyXspeed();
    myYspeed = d.getmyXspeed();
    myPointDirection = d.getPointDirection();
    accelerate(6);
  }
  public void show(){
    fill(255);
    noStroke();
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
   public double getX(){return myCenterX;}
   public double getY(){return myCenterY;}
   public double getPointDirection(){return myPointDirection;}
   public double getmyXspeed() {return myXspeed;}
   public double getmyYspeed() {return myYspeed;}
}
