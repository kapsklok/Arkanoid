
Board b;

void settings() {
  size(600, 400);
  b = new Board();
}

void setup() {
  b.printBoard();
  frameRate(60);
}

void draw() {
  b.draw();
}