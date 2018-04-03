import processing.sound.*;

PImage monImage;

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

// Variables positions cercles
float xPos1;
float yPos1;
float xPos2;
float yPos2;
float xPos3;
float yPos3;
float xPos4;
float yPos4;
float xPos5;
float yPos5;
float xPos6;
float yPos6;
Float time = 0.0;

public void setup() {
  size(640, 360);
  background(0);
  monImage = loadImage ("chanteur.jpg");
  
 // If the Buffersize is larger than the FFT Size, the FFT will fail
  // so we set Buffersize equal to bands
  device = new AudioDevice(this, 44000, bands);

  // Calculate the width of the rects depending on how many bands we have
  r_width = width/float(bands);

  //Load and play a soundfile and loop it. This has to be called 
  // before the FFT is created.
  sample = new SoundFile(this, "Earth, Wind  Fire - Lets Groove.mp3");
  sample.loop();

  // Create and patch the FFT analyzer
  fft = new FFT(this, bands);
  fft.input(sample);
}      

public void draw() {
  // Set background color, noStroke and fill color
  background(0);
  image(monImage, 450, 50);
  fill(255);
  noStroke();
 

  fft.analyze();

  for (int i = 0; i < bands; i++) {
    sum[i] += (fft.spectrum[i] - sum[i]) * smooth_factor;
  }
 float frequenceBasse = sum[0];
  float frequenceMedium = sum[3];
  float frequenceAigu = sum[5];
  float frequence4 = sum[2];
  float frequence5 = sum[4];
  float frequence6 = sum [1];
  
  time +=1;

xPos1 = mouseX+ sin(time/10)*50;
yPos1 = mouseY+ cos(time/10)*50;

xPos4 = mouseX+ sin(time/12)*100;
yPos4 = mouseY+ cos(time/12)*100;

xPos5 = mouseX+ sin(time/22)*120;
yPos5 = mouseY+ cos(time/22)*120;

xPos6 = mouseX+ sin(time/32)*30;
yPos6 = mouseY+ cos(time/32)*30;

xPos2 = mouseX+ sin(time/20)*80;
yPos2 = mouseY+ cos(time/20)*80;

xPos3 = mouseX+ sin(time/20)*150;
yPos3 = mouseY+ cos(time/20)*150;

  fill (255, 0, 0, 80);
  ellipse(xPos1, yPos1, frequenceBasse * 2000, frequenceBasse * 2000);
  fill (0, 255, 0, 80);
  ellipse(xPos2, yPos2, frequenceMedium * 2000, frequenceMedium * 2000);
  fill (0, 0, 255, 80);
  ellipse(xPos3, yPos3, frequenceAigu * 2000, frequenceAigu * 2000);
  fill (255, 0, 255, 80);
  ellipse(xPos4, yPos4, frequence4 * 2000, frequence4 * 2000);
  fill (0, 255, 255, 80);
  ellipse(xPos5, yPos5, frequence5 * 2000, frequence5 * 2000);
  fill (255, 255, 0, 80);
  ellipse(xPos6, yPos6, frequence6 * 2000, frequence6 * 2000);
  

} 