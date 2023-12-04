Board myBoard;

void setup() {
  size(500, 500);
  myBoard = new Board();
  //myBoard.setTile(1);
  myBoard.drawPopulatedBoard();
}

void draw() {
  myBoard.drawPopulatedBoard();
}
