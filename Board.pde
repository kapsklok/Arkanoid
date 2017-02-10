public class Board {
  int[][] board;
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
    
    colors = new color[]{color(148, 0, 211),
                        color(75, 0, 130),
                        color(0, 0, 255),
                        color(0, 255, 0),
                        color(255, 255, 0),
                        color(255, 127, 0),
                        color(255, 0, 0)
                    };
    
    this.board = new int[w][h];
    
    for (int i = 0; i < w; i++) {
      for (int j = 0; j < h; j++) {
        board[i][j] = j;
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
        rect(j * blockWidth, i * blockHeight, blockWidth, blockHeight);
      }
    }
    
  }
}