class Cactus{

  PImage [] sprites = new PImage [3];
  int x;
  int y;
  int dimX;
  int dimY;
  int index;

  Cactus(){
    this.index = /*(int)random(2)*/ 0;
    this.x = 250;
    if(this.index == 2){
      this.y = 310;
    }else if(this.index == 0){
      this.y = 270;
    }else{
      this.y = 275;
    }
    this.dimX = 100;
    this.dimY = 100;
    //this.sprites [0] = loadImage("Cactus1bello.png");
    this.sprites [0] = loadImage("Cactus.png");
    this.sprites [1] = loadImage("Cactus2bello.png");
    this.sprites [2] = loadImage("Cactus3bello.png");
  }

  void show(){
    image(this.sprites[0], this.x, this.y);
  }

  void update(){
    this.x -=2;
  }

}
