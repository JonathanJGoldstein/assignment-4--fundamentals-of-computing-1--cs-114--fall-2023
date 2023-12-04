Board myBoard;

void setup() {
  size(500, 500);
  myBoard = new Board();
  isPlayerTurn = false;
  myBoard.drawPopulatedBoard();
}

void draw() {
  myBoard.drawPopulatedBoard();
  playComputer();
}
