class Asteroid {
  // Data
  int xPos;
  int yPos;
  int speed;
  int sizeOfAsteroids;
  
  
  // Constructor
  Asteroid() {
    this.xPos = int(random(width));
    this.yPos = int(random(height));
    this.speed = this.randomSpeed();
    this.sizeOfAsteroids = 60;
  }
  
  /* 
    Helper method to generate a random speed between -4 and 4.
    In order to ganranty the movement, we have to ensure that the speed is different than 0
  */
  public int randomSpeed() {
    int speed = 0;
    while (speed == 0) {
      speed = int(random(-4, 4));
    }
    return speed;
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
    fill(245, 254, 33);
    ellipseMode(CENTER);
    ellipse(this.xPos, this.yPos, this.sizeOfAsteroids, this.sizeOfAsteroids);
  }
  
  // Return the size of the asteroid
  public int getSizeOfAsteroids() {
    return 0;
  }
  
  public void updateA(){
    this.move();

  }
  
  
  public boolean isOutOfWindowByLeft() {
    return (this.xPos < 0 );
  } 
  
  public boolean isOutOfWindowByRight() {
    return (this.xPos > width );
  } 
  
  
  public boolean isOutOfWindowByTop() {
    return (this.yPos < 0 );
  } 
  
  public boolean isOutOfWindowByDown() {
    return (this.yPos > height );
  }  
  
  public boolean isOutOfWindowHorizontally() {
    return (this.isOutOfWindowByLeft() || this.isOutOfWindowByRight());
  }
  
  public boolean isOutOfWindowVertically() {
    return (this.isOutOfWindowByTop() || this.isOutOfWindowByDown());
  }
  
  public void makeMove() {
    this.xPos += this.speed;
    this.yPos += this.speed;
  }
  
  public void move() {
    if(!this.isOutOfWindowHorizontally()) {
      this.makeMove();
    }
    else {
      if(this.isOutOfWindowByLeft()){
        this.xPos = width;
      }
      else if(this.isOutOfWindowByRight()) {
        this.xPos = 0;
      }
    }
    
    if(!this.isOutOfWindowVertically()) {
      this.makeMove();
    }
    else {
      if(this.isOutOfWindowByTop()) {
        this.yPos = height;
      }
      else if(this.isOutOfWindowByDown()) {
        this.yPos = 0;
      }
    }
   
  }

  
}
