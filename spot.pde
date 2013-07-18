class Spot
{
  float x, y, diameter, speed;
  int direction = 1;
  
  Spot(float xpos, float ypos, float dia, float sp)
  {
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }
  
  void move()
  {
    y += (speed * direction);
    if ((y > (height - diameter/2)) || (y < diameter/2)) {
      direction *= -1;
    }
  }
  
  void display()
  {
    ellipse(x, y, diameter, diameter);
  }
}
