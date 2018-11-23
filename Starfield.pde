Particle part[];

void setup() {
	size(500,500);
  background(255);
  noStroke();
  part = new Particle[4000];
  part [0] = new OddballParticle();
  part [0] = new JumboParticle();
  for(int i = 1; i < part.length; i++) {
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
   mySize = 8; 
   myColour = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
 }
 
 public void move() {
   myX += (cos((float)myAngle)) * mySpeed;
   myY += (sin((float)myAngle)) * mySpeed;
   show();
 } 
 
 public void show() {
   fill (myColour);
   ellipse((float)myX, (float)myY, mySize, mySize);
   
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
   mySize = 20; 
   myColour = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255), 50);
 }
 
 public void move() {
   if (mouseX < myX) {
     myX -= ((int)(Math.random() * 5) +2);
   } else {
     myX += ((int)(Math.random() * 5) +2);
   }
   if (mouseY < myY) {
     myY -= ((int)(Math.random() * 5) +2);
   } else {
     myY += ((int)(Math.random() * 5) +2);
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

 JumboParticle () {
   myX = width/2;
   myY = height/2;
   mySize = 20; 
   myColour = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
 }
 
 public void move() {
   if (mouseX < myX) {
     myX -= ((int)(Math.random() * 5) +2);
   } else {
     myX += ((int)(Math.random() * 5) +2);
   }
   if (mouseY < myY) {
     myY -= ((int)(Math.random() * 5) +2);
   } else {
     myY += ((int)(Math.random() * 5) +2);
   }
   show();
 } 
 
 public void show() {
   fill (myColour);
   rect(myX, myY, mySize, mySize, 10);
   
 }
}
