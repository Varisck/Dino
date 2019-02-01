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

public void setup(){
  
  player = new Dinosour();
  img = loadImage("frame0.png");
}


public void draw(){
  player.show();
  line(0,365,700,365);
}
class Dinosour{

  PImage [] sprite = new PImage [3];
  int x = 30;
  int y = 275;
  int dimX =150;
  int dimY = 100;
  int counter;

  Dinosour(){
      counter = 0;
      sprite[0] = loadImage("frame0.png");
      sprite[1] = loadImage("frame1.png");
      sprite[2] = loadImage("frame2.png");
  }

  public void show(){
    image(sprite[0],x,y, dimX,dimY);
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
