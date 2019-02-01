import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dino extends PApplet {

PImage img;
Dinosour player;
Cactus cactus;

public void setup(){
  
  player = new Dinosour();
  cactus = new Cactus();
  img = loadImage("frame0.png");
}


public void draw(){
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
  cactus.show();
  line(0,365,700,365);
  cactus.update();
}

public void keyPressed(){
  if(keyCode == UP && !player.isJumping && !player.isFalling){
      player.isJumping = true;
    }
}
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

  public void show(){
    image(this.sprites[0], this.x, this.y);
  }

  public void update(){
    this.x -=2;
  }

}
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

  public void show(){
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
  public void settings() {  size(700,700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dino" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
