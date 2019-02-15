PImage img;
Dinosour player;
ArrayList<Cactus> cactus;
boolean canSpawn;

void setup(){
  size(700,700);
  canSpawn = false;
  player = new Dinosour();
  cactus = new ArrayList<Cactus>();
  img = loadImage("frame0.png");
}

void draw(){
  if(canSpawn){
    addCactus();
  }
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
  AllCactusUpdate();
  line(0,365,700,365);
}

void AllCactusUpdate(){
  canSpawn = true;
  for(Cactus c : cactus){
    c.show();
    c.update();
  }
}

void addCactus(){
  cactus.add(new Cactus());
}

// void ceckForCollision(){
//   if((dino.x + dino.dimX) > cactus.y ){
//   }
// }

void keyPressed(){
  if(keyCode == UP && !player.isJumping && !player.isFalling){
      player.isJumping = true;
    }
}
