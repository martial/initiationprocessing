/*
Déclaration des variables
 Variables a et b = dimensions des rectangles
 Variables centerX, centerY, c1 et c2 = position des rectangles
 Variable hover : false = souris en dehors du rectangle, true = souris sur le rectangle.
 */

float a = 100;
float b = 100;
float centerX = 500/2-a/2;
float centerY = 500/2-b/2;
float c1 = centerY-150;
float c2 = centerY+150;
boolean hover = false;

void setup ()
{
  size (500, 500);
  background (0, 0, 0);
}

void draw()
{

  // Définition des rectangles
  noStroke();
  fill(50, 50, 50);
  rect(centerX, c1, a, b);
  rect(centerX, centerY, a, b);
  rect(centerX, c2, a, b);

  //Vérification que la souris est située sur le rectangle et changement de couleur si la condition est vraie
  if (200<mouseX && mouseX<300 && 50<mouseY && mouseY<150)
  { 
    hover = true;
    fill(128, 126, 251);
    rect(centerX, c1, a, b);
  } else if (200<mouseX && mouseX<300 && 200<mouseY && mouseY<300)
  { 
    hover = true;
    fill(117, 226, 228);
    rect(centerX, centerY, a, b);
  } else if (200<mouseX && mouseX<300 && 350<mouseY && mouseY<450)
  { 
    hover = true;
    fill(36, 205, 210);
    rect(centerX, c2, a, b);
  } else { 
    hover = false ;
  }

  //Vérification de la position de la souris et du hover dans la console
  println("hover : ", hover);
  println("X : ", mouseX);
  println("Y : ", mouseY);
}