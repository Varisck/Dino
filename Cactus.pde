class Cactus{

  PImage [] sprites = new PImage [3];
  int x;
  int y;
  int dimX;
  int dimY;
  int index;

  Cactus(){
    this.x = 30;
    this.y = 275;
    this.dimX = 100;
    this.dimY = 100;
    this.sprites [0] = loadImage("Cactus1bello.png");
    this.sprites [1] = loadImage("Cactus2bello.png");
    this.sprites [2] = loadImage("Cactus3bello.png");
  }

  void show(){
    this.index = random(2);
    image(this.sprites[(int)index], this.x, this.y);
  }

  void update(){
    this.x +=2;
  }

}
