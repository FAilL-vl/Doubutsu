final int SQUARESIZE = 100;
Board board;
abstract class AbstractArea{
  int posX;
  int posY;
  int tate;
  int yoko;
  AbstractArea(int posX, int posY, int yoko, int tate){
    this.posX = posX;
    this.posY = posY;
    this.yoko = yoko;
    this.tate = tate;
  }
  abstract void draw();
}

class InfoArea extends AbstractArea{
  InfoArea(int posX, int posY, int yoko, int tate){
    super(posX, posY, yoko, tate);
  }
  void draw(){
    fill(#FFFFFF);
    rect(posX*SQUARESIZE, posY*SQUARESIZE, yoko*SQUARESIZE, tate*SQUARESIZE);
    fill(#000000);
    textSize(20);
    text("<- Left turn", (posX+0.3)*SQUARESIZE, (posY+0.5)*SQUARESIZE);
  }
}

void setup(){
  surface.setSize(6*SQUARESIZE, 4*SQUARESIZE);
  board = new Board();
}

void draw(){
  board.draw();
}
