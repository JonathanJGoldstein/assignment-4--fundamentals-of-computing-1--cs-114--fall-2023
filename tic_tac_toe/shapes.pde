public class Board{
 private int [][] board;
 
  //constructor
  public Board(){
    board = new int[BOARDSIDELENGTH][BOARDSIDELENGTH];
    //set all positions to OPEN
    for(int y = 0; y < BOARDSIDELENGTH; y++)
      for(int x = 0; x < BOARDSIDELENGTH; x++){
        board[x][y] = OPENSPACE;
      }
      drawPopulatedBoard();
  }
  
  //try to set a tile on the game board
  public Boolean setTile(int tile, int curPlayer){
    if(board[tile%3][floor(tile/3)] == OPENSPACE){
      board[tile%3][floor(tile/3)] = curPlayer;
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
  
}
