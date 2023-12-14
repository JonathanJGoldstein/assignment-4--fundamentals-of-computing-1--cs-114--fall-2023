class Computer{
  private int cur_layer;  //cannot define static int inside playComputerMinMax therefore forced to have int as private outside of function
  private int [][] tempBoard;

  //constructor
  Computer(){
    tempBoard = new int[BOARDSIDELENGTH][BOARDSIDELENGTH];
  }

  void playComputer(Board board){
    if(!isPlayerTurn){
      int randomizedNum = (int) random(0, 9);

      while(board.setTile(randomizedNum, FILLEDX) == false){
            randomizedNum = (int) random(0, 9);
          }
      isPlayerTurn = true;
      eventOccured = true;
    }
  }

  private void resetTempBoard(int [][] board){
    for(int x = 0; x < BOARDSIDELENGTH; x++){
      for(int y = 0; y < BOARDSIDELENGTH; y++){
        tempBoard[x][y] = board[x][y];
      }
    }
  }

}
