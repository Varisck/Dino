PImage img;
Dinosour player;

void setup(){
  size(700,700);
  player = new Dinosour();
  img = loadImage("frame0.png");
}


void draw(){
  if(player.isJumping){
   player.counter = 0;
    player.y -= 2;
      if(player.y  == 205){
        player.isFalling = true;
        player.isJumping = false;
      }
  }else if(player.isFalling){
    player.y += 2;
    if(player.y == 275){
      player.isFalling = false;
    }
  }
  background(255,255,255);
  player.show();  
  line(0,365,700,365);
}

void keyPressed(){
  if(keyCode == UP && !player.isJumping && !player.isFalling){
      player.isJumping = true;
    }
}
