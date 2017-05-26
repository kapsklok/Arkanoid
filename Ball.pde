public class Ball {
  private float xpos, ypos;
  private float rad;
  private int c; // ball color
  
  
  public Ball(float x, float y) {
    this.xpos = x;
    this.ypos = y;
    this.rad = 10;
    
    this.c = color(255, 0, 0);
  }
  
  public void draw() {
    fill(c);
    stroke(0);
    ellipse(xpos, ypos, rad, rad);
  }
  
}