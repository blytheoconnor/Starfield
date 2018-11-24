/*Starfield Project - Titled: Starfield Fun
  By:Blythe O'Connor
  For: Computer Science 12
  Due: November 23, 2018
  Project: Encorperate arrays and interfaces into code simulating traveling through space
  */

Particle part[];

void setup() {
	size(500,425);
  background(255);
  noStroke();
  part = new Particle[3000];
  part [0] = new OddballParticle();
  part [1] = new JumboParticle();
  for(int i = 2; i < part.length; i++) {
    part[i] = new NormalParticle();
  }
}

void draw() {
	background(255);
  for(int i = 0; i < part.length;i++){
    part[i].move();
  }
}

class NormalParticle implements Particle{
	double myAngle, mySpeed, myX, myY;
  int myColour, mySize;
  
 NormalParticle() {
   myAngle = Math.random() * (Math.PI * 2);
   mySpeed = Math.random() * 10;
   myX = width/2;
   myY = height/2;
   mySize = 5; 
   myColour = color((int)(Math.random() * 255), 
                    (int)(Math.random() * 255), 
                    (int)(Math.random() * 255), 130);
 }
 
 public void move() {
   myX += (cos((float)myAngle)) * mySpeed;
   myY += (sin((float)myAngle)) * mySpeed;
   show();
 } 
 
 public void show() {
   if (mouseX == myX && mouseY == myY) {
     myColour = color (255,255,255);
   } else {
   fill (myColour);
   ellipse((float)myX, (float)myY, mySize, mySize);
   }
 }
} 

interface Particle {
	public void show();
  public void move();
}

class OddballParticle implements Particle{
 int myColour, mySize, myX, myY, opacity;

 OddballParticle () {
   myX = width/2;
   myY = height/2;
   mySize = 40; 
   myColour = color((int)(Math.random() * 255), 
                    (int)(Math.random() * 255), 
                    (int)(Math.random() * 255), 150);
 }
 
 public void move() {
   if (mouseX < myX) {
     myX -= ((int)(Math.random() * 5) + 3);
   } else {
     myX += ((int)(Math.random() * 5) + 3);
   }
   if (mouseY < myY) {
     myY -= ((int)(Math.random() * 5) + 3);
   } else {
     myY += ((int)(Math.random() * 5) + 3);
   }
   show();
 } 
 
 public void show() {
   fill (myColour);
   rect(myX, myY, mySize, mySize, 3);
 }
}

class JumboParticle implements Particle{
 int myColour, mySize, myX, myY;
 double myAngle, mySpeed;

 JumboParticle () {
   myX = width/2;
   myY = height/2;
   mySize = 30; 
   myColour = (0);
 }
 
 public void move() {
   myX += (Math.random() * 20) - 10;
   myY += (Math.random() * 20) - 10;
   show();
 } 
 
 public void show() {
   fill (myColour);
   ellipse(myX, myY, mySize, mySize);
 }
}
