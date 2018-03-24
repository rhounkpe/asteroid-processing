class Ship {
  // Data
  int x;
  int y;
  PImage imageShip;
  int numberOfProjectils;
  
  // Constructor
  Ship() {
    this.init();
  }
  
  public void init(){
    this.x = width - 100;
    this.y = ((height / 2) - 40 );
    imageShip = loadImage("vaisseau.png");
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
  
  public void deleteProjectils() {
  }
  
  public int getProjectilsX() {
    return 0;
  }
  
  public int getProjectilsY() {
    return 0;
  }
  
  public int numberOfProjectils() {
    return this.numberOfProjectils;
  }
  
  public void down() {
    if(this.y < (height - 50)) { // We ensure that the ship will stay in the window
      this.y += 10;
    }
  }
  
  public void up() {
    if(this.y > 0) { // // We ensure that the ship will stay in the window
      this.y -= 10;
    }
  }
  
  
}
