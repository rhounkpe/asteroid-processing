int NB_AST = 15; //<>//

Asteroid[] asteroids = new Asteroid[NB_AST];

void setup() {
  size(1200, 800);
  frameRate(60);
  stroke(255);
  background(0, 0, 0);
  
  for(int i = 0; i < asteroids.length; i++) {
    asteroids[i] = new Asteroid();
  }
 
}


void draw() {
  background(0, 0, 0);
  for(int i = 0; i < asteroids.length; i++ ) {
    asteroids[i].drawA();
    asteroids[i].updateA();
  }
  
}
