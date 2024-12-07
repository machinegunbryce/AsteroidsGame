public Spaceship d = new Spaceship();
public Star [] s = new Star[200];
ArrayList <Astroids> a = new ArrayList <Astroids>();
public void setup()
{
  size(500, 500);
  for (int i = 0; i <s.length; i++) {
    s[i] = new Star();
  }

  a.add(new Astroids());
  a.add(new Astroids());
  a.add(new Astroids());
  a.add(new Astroids());
  a.add(new Astroids());
  a.add(new Astroids());
}
public void draw()
{
  background(0);
  
    for (int i = 0; i < s.length; i++) {
    s[i].show();
  }
  for (int i = 0; i < a.size(); i++) {
    a.get(i).move();
    a.get(i).show();
    float p = dist((float)d.getX(), (float)d.getY(), (float)a.get(i).getX(),(float) a.get(i).getY());
    if(p<40)
     a.remove(i);
  }

  d.move();
  d.show();
}
public void keyPressed()
{
  if (key == 'e')
  {
    d.hyperspace();
  }
  if (key == 'a')
  {
    d.turn(-25);
  }
  if (key == 'd')
  {
    d.turn(25);
  }
  if (key == 'w')
  {
    d.accelerate(.4);
  }
}
