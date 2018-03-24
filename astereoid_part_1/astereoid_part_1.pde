int NB_AST = 15; //<>//

Asteroid[] asteroids = new Asteroid[NB_AST];
Ship ship;

void setup() {
  size(800, 600);
  frameRate(60);
  stroke(255);
  background(0, 0, 0);
  
  for(int i = 0; i < asteroids.length; i++) {
    asteroids[i] = new Asteroid();
  }
  
  ship = new Ship();
 
}


void draw() {
  background(0, 0, 0);
  for(int i = 0; i < asteroids.length; i++ ) {
    asteroids[i].drawA();
    asteroids[i].updateA();
  }
  
  ship.drawV();
  
}
