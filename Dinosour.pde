class Dinosour{

  PImage [] sprite = new PImage [3];
  int x = 30;
  int y = 275;
  int dimX =150;
  int dimY = 100;
  int counter;
  int count;
  boolean isJumping = false;
  boolean isFalling = false;

  Dinosour(){
      //Ciao
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
