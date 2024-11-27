public Spaceship d = new Spaceship();
public Star [] s = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i <s.length; i++){
   s[i] = new Star(); 
  }

}
public void draw() 
{
  background(0);
  d.show();
  d.move();
  
  for(int i = 0; i < s.length; i++){
   s[i].show(); 
  }

}
public void keyPressed()
{
  if(key == 'e')
  {
   d.hyperspace();
  }
  if(key == 'a')
  {
   d.turn(-25); 
  }
    if(key == 'd')
  {
   d.turn(25); 
  }
  if(key == 'w')
  {
   d.accelerate(.4); 
  }
  
}
