// This sketch shows how to use the FFT class to analyze a stream  
// of sound. Change the variable bands to get more or less 
// spectral bands to work with. Smooth_factor determines how
// much the signal will be smoothed on a scale form 0-1.

import processing.sound.*;

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

  float xPos;
float yPos;
float time =0.0;
float frequence =500;

float rayon = 1;
float taille =500;
float ytaille =500;
float co = 50;
float col = 12;
float coli = 25;


public void setup() {
  size(1000, 1000);
  background (0);
  xPos = width / 2;
  yPos= height /2;
  noStroke();

  // If the Buffersize is larger than the FFT Size, the FFT will fail
  // so we set Buffersize equal to bands
  device = new AudioDevice(this, 44000, bands);

  // Calculate the width of the rects depending on how many bands we have
  r_width = width/float(bands);

  //Load and play a soundfile and loop it. This has to be called 
  // before the FFT is created.
  sample = new SoundFile(this, "Dumbo.mp3");
  sample.loop();

  // Create and patch the FFT analyzer
  fft = new FFT(this, bands);
  fft.input(sample);
}      

public void draw() {
  // Set background color, noStroke and fill color
  
  
  noStroke();
background (0);
   time+=1;
 //background(0);
 rayon+=1;
 taille+=1;
  ytaille+=1;
 yPos= height /2 ;
 xPos= width /2 ;
 co +=0.3;
 col+=0.3;
 coli+=0.3;
 fill(co,col,coli);
 ellipse (xPos, yPos, taille,ytaille);
 fill(0);
  ellipse (xPos, yPos, taille-100 ,ytaille-100);
  
   fill(co-20,col-20,coli-20);
 ellipse (xPos, yPos, taille-200 ,ytaille-200);
 fill(0);
  ellipse (xPos, yPos, taille-300 ,ytaille-300);
  
  fill(co-40,col-40,coli-40);
  ellipse (xPos, yPos, taille-400, ytaille-400);
 fill(0);
  ellipse (xPos, yPos, taille-500 ,ytaille-500);
  
   fill(co-50,col-50,coli-50);
 ellipse (xPos, yPos, taille-600 ,ytaille-600);
 fill(0);
  ellipse (xPos, yPos, taille-700 ,ytaille-700);
  
 

  fft.analyze();

  for (int i = 0; i < bands; i++) {
    sum[i] += (fft.spectrum[i] - sum[i]) * smooth_factor;
  }
//elephant 

  float frequenceBasse = sum[0];
  float frequenceMedium = sum[3];
  float frequenceAigu = sum[5];
  
  fill(155,155,155);
  ellipse(width/2, height/2, 500,550);
  ellipse(200, 300, 300+frequenceBasse * 4000, 300+frequenceBasse * 4000);
  ellipse(800, 300, 300+frequenceBasse * 4000, 300+frequenceBasse * 4000);
  fill(237,114,177);
  ellipse(200, 300, 200+frequenceBasse * 4000, 200+frequenceBasse * 4000);
  ellipse(800, 300, 200+frequenceBasse * 4000, 200+frequenceBasse * 4000);
  fill(150);
  ellipse(width/2, height/2, 500,550);
  
  
  //trompe
  fill(130);
  rect(width/2-50, 550, 100, 300+frequenceBasse * 6000);
  ellipse(width/2, 550, 100,100);
  
  //yeux
  
  
  fill(random(220,230), random(40,200), random(130,220));
  ellipse(400, height / 2, 50+frequenceMedium * 1000, 50+frequenceMedium * 1000);
  ellipse(600, height / 2, 50+frequenceAigu * 1000, 50+frequenceAigu * 1000);
  
  fill(0);
  ellipse(400, height / 2, 5+frequenceMedium * 1000, 5+frequenceMedium * 1000);
  ellipse(600, height / 2, 5+frequenceAigu * 1000, 5+frequenceAigu * 1000);
  
  fill(130);
  rect(350, 400+ frequenceMedium*500 , 100, 25);
  rect(550, 400+ frequenceMedium*500 , 100, 25);



  }

  
  