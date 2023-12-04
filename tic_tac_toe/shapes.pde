public class Board{
 private int [][] board;
 private int amountOfPlays;
  //constructor
  public Board(){
    board = new int[BOARDSIDELENGTH][BOARDSIDELENGTH];
    //set all positions to OPEN
    for(int y = 0; y < BOARDSIDELENGTH; y++)
      for(int x = 0; x < BOARDSIDELENGTH; x++){
        board[x][y] = OPENSPACE;
      }
      amountOfPlays = 0;
      drawPopulatedBoard();
  }
  
  //try to set a tile on the game board
  public Boolean setTile(int tile, int curPlayer){
    if(board[tile%3][floor(tile/3)] == OPENSPACE){
      board[tile%3][floor(tile/3)] = curPlayer;
      amountOfPlays++;
      
      return true;
    }
    else{
      print("Space already taken.");
      
      return false;
    }
  }
  
  //draw the board populated
  public void drawPopulatedBoard(){
    background(128, 128, 128);
    
    drawBoard();
    
    for(int y = 0; y < BOARDSIDELENGTH; y++)
      for(int x = 0; x < BOARDSIDELENGTH; x++){
        if(board[x][y] == OPENSPACE){
          continue;
        }
        if(board[x][y] == FILLEDX){
          drawX(x, y);
        }
        else{
          drawO(x, y);
        }
      }
  }
  
  //draw an X based on the given offset
  private void drawX(int x, int y){
    int divisions = (SCREENSIDELENGTH/3);
    line((x * divisions), (y * divisions), divisions * (x + 1), divisions * (y + 1));
    line((x * divisions), divisions * (y + 1), divisions * (x + 1), (y * divisions));
  }
  
  //Draw an O based on the given offset
  private void drawO(int x, int y){
    int divisions = (SCREENSIDELENGTH/3);
    circle((x * divisions) + (divisions/2), (y * divisions) + (divisions/2), divisions);
  }
  
  //draw the lines that make up the board
  private void drawBoard(){
    int thirdScreen = (SCREENSIDELENGTH/3);
    
    line(thirdScreen, 0, thirdScreen, SCREENSIDELENGTH);
    line(thirdScreen*2, 0, thirdScreen*2, SCREENSIDELENGTH);
    
    line(0, thirdScreen, SCREENSIDELENGTH, thirdScreen);
    line(0, thirdScreen*2, SCREENSIDELENGTH, thirdScreen*2);
  }
  
  public int checkForWin(){
    for(int i = 0; i < 3; i++)
      if(checkHorizontal(i) != 0)
        return checkHorizontal(i);
        
    for(int i = 0; i < 3; i++)
      if(checkVertical(i) != 0)
        return checkVertical(i);
    
    return 0;  //no win
  }
  
  private int checkHorizontal(int row){
    int cursorStart = row * 3;
    int temp = board[cursorStart];
    for(int i = 0; i < BOARDSIDELENGTH; i++){
      if (board[cursorStart + i] != temp)
        return O;
      temp = board[cursorStart + i];
    }
    return temp;  //which player won
  }
  
  private int checkVertical(int column){
    int cursorStart = col;
    int temp = board[cursorStart];
    for(int i = 0; i < BOARDSIDELENGTH; i++){
      if (board[cursorStart + (i * 3)] != temp)
        return 0;
      temp = board[cursorStart + (i * 3)];
    }
    return temp;  //which player won
}
