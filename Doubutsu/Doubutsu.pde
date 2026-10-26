final int SQUARESIZE = 100;
Board board;
KomaList komaList;
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

class KomaStatus{
  boolean captured;
  boolean active;
  boolean selected;
  
  KomaStatus(boolean active){
    this.active = active;
    this.captured = false;
    this.selected = false;
  }
}

abstract class AbstractKoma{
  String name;
  int x;
  int y;
  int team;
  KomaStatus kStat;
  
  AbstractKoma(String name, int x, int y, int team, boolean active){
    this.name = name;
    this.x = x;
    this.y = y;
    this.team = team;
    this.kStat = new KomaStatus(active);
  }
  
  void draw(){
    String komaImage = "";
    if(this.team == 0 && this.kStat.active) komaImage = this.name+"A.png";
    else if (this.team==1 && this.kStat.active) komaImage = this.name+"B.png";
    else return;
    
    PImage img = loadImage(komaImage);
    image(img, SQUARESIZE*this.x+2, this.y*SQUARESIZE+2, SQUARESIZE-4, SQUARESIZE-4);
  }
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
  komaList = new KomaList();
}

void draw(){
  board.draw();
  komaList.draw();
}
