int rad = 80;      
float xpos, ypos;    

float xspeed = 10; 
float yspeed = 10; 

int xdirection = 5; 
int ydirection = 5;  

void setup() 
{
  color c1 = color(204, 153, 0);
color c2 = #FFCC00;
fill(c1);
rect(0, 0, 25, 100);
fill(c2);
color c3 = get(10, 50);
fill(c3);
  size(1280,720 );
  noStroke();
  frameRate(60);
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;
}

void draw() 
{
  background(#000000);

  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }

  ellipse(xpos, ypos, rad, rad);
}
