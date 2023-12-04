Boolean isPlayerTurn;
int computerDifficulty;

void keyPressed(){
  if(isPlayerTurn){
    switch (key){
      case '0':
        if(myBoard.setTile(0, FILLEDO))
          isPlayerTurn = false;
        
        break;
      case '1':
        if(myBoard.setTile(1, FILLEDO))
          isPlayerTurn = false;
        
        break;
      case '2':
        if(myBoard.setTile(2, FILLEDO))
          isPlayerTurn = false;
        
        break;
      case '3':
        if(myBoard.setTile(3, FILLEDO))
          isPlayerTurn = false;
        
        break;
      case '4':
        if(myBoard.setTile(4, FILLEDO))
          isPlayerTurn = false;
        
        break;
      case '5':
        if(myBoard.setTile(5, FILLEDO))
          isPlayerTurn = false;
        
        break;
      case '6':
        if(myBoard.setTile(6, FILLEDO))
          isPlayerTurn = false;
        
        break;
      case '7':
        if(myBoard.setTile(7, FILLEDO))
          isPlayerTurn = false;
        
        break;
      case '8':
        if(myBoard.setTile(8, FILLEDO))
          isPlayerTurn = false;
        
        break;
        
      default:
        print("You did not press a number between 0-8.\n");
    }
  }
  
}

void playComputer(){
  if(!isPlayerTurn){
    int randomizedNum = (int) random(0, 9);
    switch(computerDifficulty){
      case EASY:
        //generate random number, if not empty tile then get new random number and try again
        while(myBoard.setTile(randomizedNum, FILLEDX) == false){
          randomizedNum = (int) random(0, 9);
        }
        
        break;
      case HARD:
      
      
        break;
      case IMPOSSIBLE:
    
    }
    isPlayerTurn = true;
  }
}
