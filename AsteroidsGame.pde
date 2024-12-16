public Spaceship d = new Spaceship();
public Star [] s = new Star[200];
public ArrayList <Astroids> a = new ArrayList <Astroids>();
public ArrayList <Bullet> b = new ArrayList <Bullet>();
public void setup()
{
  size(500, 500);
  for (int i = 0; i <s.length; i++) {
    s[i] = new Star();
  }

  for (int i =0; i < 10; i++) {
    a.add(new Astroids());
  }
}
public void draw() {
  background(0);

  for (int i = 0; i < b.size(); i++) {
    b.get(i).move();
    b.get(i).show();

    for (int j = 0; j < a.size(); j++) {
      float h = dist((float)b.get(i).getX(), (float)b.get(i).getY(), (float)a.get(j).getX(), (float)a.get(j).getY());

      if (h < 60) {
        a.remove(j);
        b.remove(i);
        i--;
        break;
      }
    }
  }

  for (int i = 0; i < s.length; i++) {
    s[i].show();
  }

  for (int i = 0; i < a.size(); i++) {
    a.get(i).move();
    a.get(i).show();

    if (a.get(i).myYspeed == 0) {
      a.get(i).accelerate(0.2);
    }

    float p = dist((float)d.getX(), (float)d.getY(), (float)a.get(i).getX(), (float)a.get(i).getY());

    if (p < 40) {
      a.remove(i);
      i--;
    }
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
  if (key == 'r')
  {
    b.add(new Bullet(d));
  }
}
