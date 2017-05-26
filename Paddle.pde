class Paddle {
  
  private float xpos, ypos;
  private float xpos2, ypos2; // locations of bottom corners
  private int len, hei;
  private int c; // color
  
  
  public Paddle(float x, float y) {
    xpos = x;
    ypos = y;
    len = 80;
    hei = 10;
    xpos2 = xpos + len;
    ypos2 = ypos + hei;
    c = color(0, 255, 255);
  }
  
  public void draw() {
    fill(c);
    noStroke();
    rect(xpos, ypos, len, hei);
  }
  
}