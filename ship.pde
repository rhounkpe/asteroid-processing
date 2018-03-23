class Ship {
  // Data
  int x;
  int y;
  
  // Constructor
  Ship() {
    this.init();
  }
  
  public void init(){
    this.x = width - 50;
    this.y = height / 2;
  }
  
  public int getX() {
    return this.x;
  }
  
  public int getY() {
    return this.y;
  }
  
  public void drawV() {
    fill(255);
    rectMode(CENTER);
    rect(this.x, this.y, 100, 50);
  }
  
  
}
