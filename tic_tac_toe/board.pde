void keyPressed(){
  switch (key){
    case '0':
      myBoard.setTile(0, FILLEDO);
      break;
    case '1':
      myBoard.setTile(1, FILLEDO);
      break;
    case '2':
      myBoard.setTile(2, FILLEDO);
      break;
    case '3':
      myBoard.setTile(3, FILLEDO);
      break;
    case '4':
      myBoard.setTile(4, FILLEDO);
      break;
    case '5':
      myBoard.setTile(5, FILLEDO);
      break;
    case '6':
      myBoard.setTile(6, FILLEDO);
      break;
    case '7':
      myBoard.setTile(7, FILLEDO);
      break;
    case '8':
      myBoard.setTile(8, FILLEDO);
      break;
    default:
      print("You did not press a number between 0-8.\n");
  }
  
}
