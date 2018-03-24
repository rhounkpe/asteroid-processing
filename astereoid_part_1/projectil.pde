class Projectil {
  int x;
  int y;
  
  Projectil(int x, int y) {
    this.x = x;
    this.y = y;
    this.drawP();
  }
  
  public int getX() {
    return this.x;
  }
  
  public int getY() {
    return this.y;
  }
  
  public void drawP() {
    fill(color(22, 545, 33));
    ellipseMode(CENTER);
    ellipse(this.x, this.y, 2, 2);
  }
  
  public void updateP(){
    if(this.x >= 0) {
      this.x -= 5;
    }
  }
}
