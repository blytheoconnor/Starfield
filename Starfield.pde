Particle part[];

void setup() {
	size(500,500);
  background(255);
  noStroke();
  part = new Particle[2000];
  part [0] = new OddballParticle();
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
   mySize = 4; 
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
 int myColour, mySize, myX, myY;

 OddballParticle () {
   myX = width/2;
   myY = height/2;
   mySize = 10; 
   myColour = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
 }
 
 public void move() {
   if (mouseX < myX) {
     myX -= ((int)(Math.random() * 20) - 5) + mySize;
   } else {
     myX += ((int)(Math.random() * 20) - 10) + mySize;
   }
   if (mouseY < myY) {
     myY -= ((int)(Math.random() * 20) - 5) + mySize;
   } else {
     myY += ((int)(Math.random() * 20) - 10) + mySize;
   }
   show();
 } 
 
 public void show() {
   fill (myColour);
   rect(myX, myY, mySize, mySize, 10);
   
 }
}

class JumboParticle { //uses inheritance

	//your code here
}
