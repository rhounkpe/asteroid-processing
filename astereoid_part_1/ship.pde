class Ship {
  // Data
  int x;
  int y;
  PImage imageShip;
  
  // Constructor
  Ship() {
    this.init();
    imageShip = loadImage("vaisseau.png");
  }
  
  public void init(){
    this.x = width - 100;
    this.y = ((height / 2) - 40 );
  }
  
  public int getX() {
    return this.x;
  }
  
  public int getY() {
    return this.y;
  }
  
  public void drawV() {
    image(imageShip, this.x, this.y);
  }
  
  
}
