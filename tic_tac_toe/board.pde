void keyPressed(){
  switch (key){
    case '0':
      myBoard.setTile(0);
      break;
    case '1':
      myBoard.setTile(1);
      break;
    case '2':
      myBoard.setTile(2);
      break;
    case '3':
      myBoard.setTile(3);
      break;
    case '4':
      myBoard.setTile(4);
      break;
    case '5':
      myBoard.setTile(5);
      break;
    case '6':
      myBoard.setTile(6);
      break;
    case '7':
      myBoard.setTile(7);
      break;
    case '8':
      myBoard.setTile(8);
      break;
    default:
      print("You did not press a number between 0-8.\n");
  }
  
}
