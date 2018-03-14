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

public class sketch_11_typography extends PApplet {

PFont myFont;

float xPos = 0.0f;
float yPos = 0.0f;
public void setup() {

  
  myFont = createFont("typo.ttf", 32);
  background(0);
  
}


public void draw() {

  xPos += 20.1f;
  yPos += 20.1f;

  textFont(myFont);
  fill(255,0,0);
  text("instagram.com/martialou", xPos, yPos);
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "sketch_11_typography" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
