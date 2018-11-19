NormalParticle particle[];
void setup() {
	size(400,400);
  background(0);
  noStroke();
  particle[] = new NormalParticle;
}
void draw() {
	//your code here
}
class NormalParticle {
	double myAngle, mySpeed, myX, myY;
  int myColour, mySize;
  NormalParticle() {
   myAngle = ;
   mySpeed = ;
   myX = ;
   myY = ;
   mySize = 10; 
   myColour = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255);
 }
 
 void move() {
   myX += (cos(myAngle)) * mySpeed;
   myY += (sin(myAngle)) * mySpeed;
   show();
 } 
 
 void show() {
   fill (myColour);
   ellipse(myX, myY, mySize, mySize;
 }
} 
interface Particle {
	//your code here
}
class OddballParticle { //uses an interface
	//your code here
}
class JumboParticle { //uses inheritance

	//your code here
}
