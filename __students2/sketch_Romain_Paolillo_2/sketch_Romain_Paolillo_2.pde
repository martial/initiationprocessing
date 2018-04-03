
import processing.sound.*;

SoundFile sample;
FFT fft;
AudioDevice device;

int scale=5;

int bands = 128;

float r_width;

float[] sum = new float[bands];

float smooth_factor = 0.2;

float xPos;
float yPos;
float coul1 = random(0,255);
float coul2 = random(0,255);
float coul3 = random(0,255);
int repet = 0;
float time = 0.0;
float frequence = 10.0;
float xrayon = 0;
float yrayon = 0;
float ellipserayon = 0;

public void setup() {
  size(1920, 1080);
  xPos = width / 2;
yPos = height / 2;
  background(0,0,0);

  device = new AudioDevice(this, 44000, bands);

  r_width = width/float(bands);

  sample = new SoundFile(this, "Kill Paris - Catch You.mp3");
  sample.loop();

  fft = new FFT(this, bands);
  fft.input(sample);
}      

public void draw() {
  
 for (int i = 0; i < xrayon; i++)

time += 1;
xrayon += 1;
yrayon += 1;
ellipserayon += 1;
xPos = width / 2 + sin(time/frequence) * xrayon;
yPos = height / 2 + cos(time/frequence) * yrayon;

fill(ellipserayon/3.5);
stroke(ellipserayon/10);
ellipse(xPos, yPos, ellipserayon/1.1, ellipserayon/1.1);

  fft.analyze();

  for (int i = 0; i < bands; i++) {
    sum[i] += (fft.spectrum[i] - sum[i]) * smooth_factor;
  }
//sum de 0 à 163
  float frequenceBasse = sum[0];
  float frequenceMedium = sum[3];
  float frequenceAigu = sum[5];

 fill(0);
noStroke();
  ellipse(960, height / 2, frequenceBasse * xrayon, frequenceBasse * yrayon);
  fill(15,xrayon/10,yrayon/2);
  noStroke();
  ellipse(960, height / 2, frequenceBasse * xrayon, frequenceAigu * yrayon);
}