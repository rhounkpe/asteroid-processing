class Asteroid {
  // Data
  int xPos;
  int yPos;
  
  
  // Constructor
  Asteroid() {
  }
  
  // Getters
  public int getX() {
    return this.xPos;
  }
  
  public int getY() {
    return this.yPos;
  }
  
  // Setters
  public void setXPos(int xPos) {
    this.xPos = xPos;
  }
  
  public void setYPos(int yPos) {
    this.yPos = yPos;
  }
  
  // Other methods
  public int getLevel() {
    return 0;
  }
  
  /* Initialize an asteroid. Set its position, level ...
    Use the attribut setters as helper methods.
  */
  public void init(int xPos, int yPos) {
    this.setXPos(xPos);
    this.setYPos(yPos);
  }
  
  /*
    Draw the asteroid according to its position, level, ...
  */
  public void drawA() {
  }
  
  // Return the size of the asteroid
  public int getSizeOfAsteroids() {
    return 0;
  }
  
  public void updateA(){
  }
  
}
