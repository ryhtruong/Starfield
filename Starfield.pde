Particle[] explode = new Particle[5000];
void setup()
{
  size(800, 800);
  for (int i =0; i<explode.length; i++) {
    explode[i] = new Particle();
    explode[0] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for (int i=0; i<explode.length; i++) {
    explode[i].move();
    explode[i].show();
  }
}
void mousePressed() {
  clear();
  redraw();
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle() {
    myX=myY=400;
    myAngle=Math.random()*3*Math.PI;
    mySpeed=Math.random()*8;
    myColor=color(255, 255, 255);
  }
  void move() {
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}

class OddballParticle extends Particle
{
  OddballParticle() {
    myX =(int)(Math.random()*10)-5;
    myY= (int)(Math.random()*702);
  }
  void move() {
    myX+=(int)(Math.random()*5);
    myY+=(int)(Math.random()*5);
  }
  void show() {
    fill(myColor);
fill(102, 204, 102);
  ellipse((float)myX-49, (float)myY-75, 71, 72);
  ellipse((float)myX+46, (float)myY-75, 71, 72);
  fill(102, 204, 102);
  ellipse((float)myX, (float)myY, 200, 150); //250, 180
  fill(#249328);
  strokeWeight(0);
  ellipse((float)myX-1, (float)myY-57, 30, 20);
  ellipse((float)myX-28, (float)myY-46, 20, 15);
  ellipse((float)myX+28, (float)myY-49, 15, 10);
  strokeWeight(2);
    fill(#FCF7F7);
  ellipse((float)myX-53, (float)myY-80, 50, 50);
  ellipse((float)myX+49, (float)myY-80, 50, 50);
  fill(0, 0, 0);
  ellipse((float)myX-54, (float)myY-82, 35, 35);
  ellipse((float)myX+51, (float)myY-82, 35, 35);
  fill(#FFFFFF);
  ellipse((float)myX-62, (float)myY-90, 8, 8);
  ellipse((float)myX+61, (float)myY-87, 8, 8);
    fill(0, 0, 0);
  line((float)myX-57, (float)myY+33, (float)myX+50, (float)myY+37);
  ellipse((float)myX-19, (float)myY+8, 5, 5);
  ellipse((float)myX+17, (float)myY+8, 5, 5);
  }
}
  void mouseClicked()
  {
    background(0);
    for (int i=0; i < explode.length; i++) {
      explode[i] = new Particle();
      explode[0]= new OddballParticle();
    }
  }
