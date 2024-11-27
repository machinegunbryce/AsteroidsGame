public class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myS,c1,c2,c3;
  public Star()
  {
   myX = (int)(Math.random()*500); 
   myY = (int)(Math.random()*500); 
   myS = (int)(Math.random()*10);
   c1 = (int)(Math.random()*255);
   c2 = (int)(Math.random()*255);
   c3 = (int)(Math.random()*255);
  }
  
  public void show(){
   noStroke();
   fill(c1,c2,c3);
   ellipse(myX,myY,myS,myS);
    
  }
}
