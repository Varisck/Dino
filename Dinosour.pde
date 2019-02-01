class Dinosour{

  PImage [] sprite = new PImage [3];
  int x;
  int y;
  int dimX;
  int dimY;
  int counter;
  int count;
  boolean isJumping = false;
  boolean isFalling = false;

  Dinosour(){
      this.x = 30;
      this.y = 275;
      this.dimX = 150;
      this.dimY = 100;
      counter = 0;
      count = 0;
      sprite[0] = loadImage("frame0.png");
      sprite[1] = loadImage("frame1.png");
      sprite[2] = loadImage("frame2.png");
  }

  void show(){
  if(count >= 5){
    count = 0;
    if(!isJumping && !isFalling){
      if(counter == 2){
        counter=0;
      }else{
        counter++;
      }
    }
  }else{
    count++;
  }

    image(sprite[counter],x,y, dimX,dimY);
  }

}
