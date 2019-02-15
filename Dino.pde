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
  delateCactus();
}

void AllCactusUpdate(){
  canSpawn = true;
  for(Cactus c : cactus){
    c.show();
    c.update();
    if(c.x < 750 + c.dimX /*|| (int)random(5) != 2*/){
      canSpawn = false;
    }
  }
}

void delateCactus(){
  for(int i = 0; i < cactus.size(); i++){
    if(cactus.get(i).x < 0 - cactus.get(i).dimX){
      cactus.remove(i);
    }
  }
}

void addCactus(){
  cactus.add(new Cactus(750));
}

void checkForCollision(){
  
}

void keyPressed(){
  if(keyCode == UP && !player.isJumping && !player.isFalling){
      player.isJumping = true;
    }
}
