Board myBoard;
Computer myComputer;
Boolean isPlayerTurn;
int computerDifficulty;
Boolean eventOccured;


void setup() {
  size(500, 500);
  myBoard = new Board();
  myComputer = new Computer();
  
  isPlayerTurn = false;
  eventOccured = false;
  myBoard.drawPopulatedBoard();
}

void draw() {
  myBoard.drawPopulatedBoard();
  if(eventOccured){
    switch (myBoard.checkForWin()){
     case FILLEDX:
       print("The computer wins!\n");
       noLoop();
       break;
     case FILLEDO:
       print("the player wins!\n");
       noLoop();
       break;
     case 3:
       print("it is a tie!\n");
       noLoop();
       break;
     default:
       if(!isPlayerTurn){
         //Player had just gone, currently checking not checking AI's move
         print("continuing...\n");
       }
       
       break;
    }
    eventOccured = false;
  }
  myComputer.playComputer(myBoard);
}

void keyPressed(){
  if(isPlayerTurn){
    switch (key){
      case '0':
        if(myBoard.setTile(0, FILLEDO)){
          isPlayerTurn = false;
          eventOccured = true;
        }
        else {
          print("Space already taken.\n");
        }

        break;
      case '1':
        if(myBoard.setTile(1, FILLEDO)){
          isPlayerTurn = false;
          eventOccured = true;
        }
        else {
          print("Space already taken.\n");
        }

        break;
      case '2':
        if(myBoard.setTile(2, FILLEDO)){
          isPlayerTurn = false;
          eventOccured = true;
        }
        else {
          print("Space already taken.\n");
        }

        break;
      case '3':
        if(myBoard.setTile(3, FILLEDO))
          isPlayerTurn = false;
          eventOccured = true;

        break;
      case '4':
        if(myBoard.setTile(4, FILLEDO)){
          isPlayerTurn = false;
          eventOccured = true;
        }
        else {
          print("Space already taken.\n");
        }

        break;
      case '5':
        if(myBoard.setTile(5, FILLEDO)){
          isPlayerTurn = false;
          eventOccured = true;
        }
        else {
          print("Space already taken.\n");
        }

        break;
      case '6':
        if(myBoard.setTile(6, FILLEDO)){
          isPlayerTurn = false;
          eventOccured = true;
        }
        else {
          print("Space already taken.\n");
        }

        break;
      case '7':
        if(myBoard.setTile(7, FILLEDO)){
          isPlayerTurn = false;
          eventOccured = true;
        }
        else {
          print("Space already taken.\n");
        }

        break;
      case '8':
        if(myBoard.setTile(8, FILLEDO)){
          isPlayerTurn = false;
          eventOccured = true;
        }
        else {
          print("Space already taken.\n");
        }

        break;

      default:
        print("You did not press a number between 0-8.\n");
    }
  }

}
