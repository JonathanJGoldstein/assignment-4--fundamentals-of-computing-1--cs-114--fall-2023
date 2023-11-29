public class Board{
 private int [][] board;
 int curPlayer;
  
  //constructor
  public Board(){
    board = new int[BOARDSIDELENGTH][BOARDSIDELENGTH];
    curPlayer = 0;
    //set all positions to OPEN
    for(int y = 0; y < BOARDSIDELENGTH; y++)
      for(int x = 0; x < BOARDSIDELENGTH; x++){
        board[x][y] = OPENSPACE;
      }
      
  }
  public void setTile(int tile){
    board[tile%3][tile/3] = 
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
          print(board[x][y], "\n");
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
