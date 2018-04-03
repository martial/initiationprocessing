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

public void setup() {
  size(640, 360);
  background(255);

  // If the Buffersize is larger than the FFT Size, the FFT will fail
  // so we set Buffersize equal to bands
  device = new AudioDevice(this, 44000, bands);

  // Calculate the width of the rects depending on how many bands we have
  r_width = width/float(bands);

  //Load and play a soundfile and loop it. This has to be called 
  // before the FFT is created.
  sample = new SoundFile(this, "Bicicleta.mp3");
  sample.loop();

  // Create and patch the FFT analyzer
  fft = new FFT(this, bands);
  fft.input(sample);
}      

public void draw() {
  // Set background color, noStroke and fill color
  background(0);
  
 
  noStroke();

  fft.analyze();

  for (int i = 0; i < bands; i++) {
    sum[i] += (fft.spectrum[i] - sum[i]) * smooth_factor;
  }

  float frequenceBasse = sum[0];
  float frequenceMedium = sum[3];
  float frequenceAigu = sum[5];
  
  fill(frequenceAigu * 255 * 10);

  ellipse(width /2, height / 2, frequenceBasse * 1000, frequenceBasse * 1000);
  ellipse(100, height / 2, frequenceMedium * 1000, frequenceMedium * 1000);
  ellipse(500 /2, height / 2, frequenceAigu * 1000, frequenceAigu * 1000);

}