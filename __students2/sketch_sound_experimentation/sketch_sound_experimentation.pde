// This sketch shows how to use the FFT class to analyze a stream  
// of sound. Change the variable bands to get more or less 
// spectral bands to work with. Smooth_factor determines how
// much the signal will be smoothed on a scale form 0-1.

import processing.sound.*;
float coul1;
float coul2;
float coul3;
int value = 0;
PImage molecule;
PImage error;
PImage corbeille;
PImage mac;
PImage minitel;
// Declare the processing sound variables 
SoundFile sample;
FFT fft;
AudioDevice device;

// Declare a scaling factor
int scale=5;

// Define how many FFT bands we want
int bands = 128;

// declare a drawing variable for calculating rect width
float r_width;

// Create a smoothing vector
float[] sum = new float[bands];

// Create a smoothing factor
float smooth_factor = 0.2;



public void setup() {
  coul1 = 240;
  coul2 = 255;
  coul3 = 241;
    background(coul1,coul2,coul3);
  fill(255);
 
  size(800, 1000);

  frameRate(30);
//IMAGES
molecule =loadImage ("mol8.png");
error = loadImage ("error.png");
corbeille = loadImage ("corbeille.png");
mac =loadImage ("mac.png");
minitel =loadImage ("minitel.png");


  // If the Buffersize is larger than the FFT Size, the FFT will fail
  // so we set Buffersize equal to bands
  device = new AudioDevice(this, 44000, bands);

  // Calculate the width of the rects depending on how many bands we have
  r_width = width/float(bands);

  //Load and play a soundfile and loop it. This has to be called 
  // before the FFT is created.
  sample = new SoundFile(this, "music.mp3");
  sample.loop();

  // Create and patch the FFT analyzer
  fft = new FFT(this, bands);
  fft.input(sample);
   fill(191,178,199);
}      

public void draw() {

  strokeWeight(3);
  stroke(255);
   
  // Set background color, noStroke and fill color


  fft.analyze();

  for (int i = 0; i < bands; i++) {
    sum[i] += (fft.spectrum[i] - sum[i]) * smooth_factor;
  }

  float frequenceBasse = sum[0];
  float frequenceMedium = sum[3];
  float frequenceAigu = sum[5];

//variables pour le rebond
float xPos = 0.0;
float yPos = 0;
float vitesseX = frequenceBasse*5000;
float vitesseY = -frequenceBasse;

  fill(32,114,69);
  rect(20,1000,120,-frequenceBasse*4000);
 
  
  fill(149,188,167);
  rect(300,1000, 120,-frequenceMedium*4000);
  fill(199,219,208);
  rect(580,1000, 120,-frequenceAigu*4000);
  
  //IMAGES
image(corbeille,250-frequenceAigu*4000,55);
corbeille.resize(240,240);
  image(mac,145,900-frequenceMedium*4000);
  mac.resize(151,100);
  image(minitel,450,900-frequenceBasse*4000);
  minitel.resize(116,105);
  
    /* image(molecule,random(1000,1100),-frequenceAigu*4000);
    molecule.resize(50,50);*/
  //rajout de l'ellipse
  yPos +=vitesseY;
xPos +=vitesseX;
stroke(0);
   fill(255);
  rect(xPos,yPos, 200,50);
  
  println(frequenceAigu);
  
  if(xPos > width ||xPos < 0) {
    vitesseX = -vitesseX;
  }
  
  if(yPos > height || yPos < 0) {
    vitesseY = -vitesseY;
    
  }
    fill(191,178,199);


    
    image(error,mouseX,mouseY);
    error.resize(240,180);
    
    

}



//Changement couleurfond
void mousePressed(){
 if (mousePressed==true) {
   
background(0);
 }
 
 else {
   
 background(240,255,241);

 }

  
}