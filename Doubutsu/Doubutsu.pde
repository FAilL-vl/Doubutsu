final int SQUARESIZE = 100;

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

void setup(){
  surface.setSize(6*SQUARESIZE, 4*SQUARESIZE);
}

void draw(){
}
