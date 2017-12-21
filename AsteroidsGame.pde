Spaceship Bob = new Spaceship();
Star[] lee = new Star [100];
ArrayList<Asteroid> gameAsteroids = new ArrayList<Asteroid>();
public void setup() 
{
  size (450, 420);
  background(131,206,204);
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
  background(131,206,204);
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
    Bob.accelerate(.5);
  } 
  if (key == 's') 
  {
    Bob.accelerate(-.5);
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
