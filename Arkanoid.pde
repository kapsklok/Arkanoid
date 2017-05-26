
Board board;
Ball ball;
Paddle paddle;

void settings() {
  size(600, 400);
  board = new Board();
  ball = new Ball(width / 2 - 5, height - 50);
  paddle = new Paddle(width / 2 - 40, height - 45);
}

void setup() {
  board.printBoard();
  frameRate(60);
}

void draw() {
  board.draw();
  ball.draw();
  paddle.draw();
}