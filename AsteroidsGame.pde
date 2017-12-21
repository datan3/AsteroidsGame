Spaceship Bob = new Spaceship();
Star[] lee = new Star [200];
ArrayList<Asteroid> gameAsteroids = new ArrayList<Asteroid>();
public void setup() 
{
  size (430, 400);
  background(98,189,193);
  for (int i = 1; i < lee.length; i++)
  {
    lee[i] = new Star();
  }
  for (int a = 0; a < 100; a++)
  {
    gameAsteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(98,189,193);
  Bob.show();
  Bob.move();

  for (int a = 0; a < gameAsteroids.size(); a++) {
    Asteroid i = gameAsteroids.get(a);
    i.show();
    i.move();
    if (dist(i.getX(), i.getY(), Bob.getX(), Bob.getY()) < 20)
      gameAsteroids.remove(i);
  }

  for (int i = 1; i < lee.length; i++)
  {
    lee[i].show();
  }
}
public void keyPressed () {
  if (key == 'w') 
  {
    Bob.accelerate(.3);
  } 
  if (key == 's') 
  {
    Bob.accelerate(-.3);
  } 
  if (key == 'd') 
  {
    Bob.turn(10);
  } 
  if (key == 'a') 
  {
    Bob.turn(-10);
  } 
}
