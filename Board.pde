public class Board {
  Brick[][] board;
  int w, h;
  
  int blockWidth, blockHeight;
  int pixelWidth;
  
  color[] colors;
  
  public Board() {
    this(15, 7);
  }
  
  public Board(int w, int h) {
    this.w = w;
    this.h = h;
    
    this.blockWidth = width / this.w;
    System.out.printf("Screen width: %d. array width: %d. bloackwidth: %d", width, this.w, this.blockWidth);
    this.blockHeight = blockWidth / 2;
    
    
    
    this.board = new Brick[w][h];
    
    for (int i = 0; i < w; i++) {
      for (int j = 0; j < h; j++) {
        board[i][j] = new Brick(j);
      }
    }
    
  }
  
  private void printBoard() {
    for (int i = 0; i < h; i++) {
      for (int j = 0; j < w; j++) {
        System.out.print(board[j][i] + " ");
      }
      System.out.println();
    }
  }
  public void draw() {
    
    stroke(255);
    for (int i = 0; i < h; i++) {
      fill(colors[i]);
      for (int j = 0; j < w; j++) {
        rect(j * blockWidth, i * blockHeight + 40, blockWidth, blockHeight);
      }
    }
    
  }
}