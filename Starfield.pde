NormalParticle [] star;
void setup()
{   size(1000,1000);
	star = new NormalParticle[100];
	star[1] = new OddballParticle();
	for(int i =0; i< star.length; i++)
			star[i] = new NormalParticle();
		    star[0] = new JumboParticle();
			star[1] = new OddballParticle();

}
void draw(){
background(0);
 for(int i = 0; i< star.length; i++){
 	star[0].show();
	star[0].move();
	star[i].show();
	star[i].move();
	star[1].move();
    star[1].show();}
}
class NormalParticle
{ double myX, myY, partangle, partspeed;
  int partColor;
  NormalParticle(){
  myX = 500;
  myY = 500;
  partColor = (int)(Math.random()*257)+1; 
  partangle = (Math.random()*(2*Math.PI));
  partspeed = (Math.random()*11);
  

}

public void move(){
	myX= myX+(Math.cos(partangle)*(partspeed));
	myY= myY+(Math.sin(partangle)*(partspeed));
	partangle = partangle +1;
  	partspeed = partspeed+1;
 
}
public void show(){
 
	fill((int)(Math.random()*257)+1,(int)(Math.random()*257)+1,(int)(Math.random()*257)+1);
	ellipse((int)myX,(int)myY,10,10);

}

}
interface Particle
{
	public void move();
	public void show();
}
class JumboParticle extends NormalParticle
{		

	void move(){
	}
    void show(){
    ellipse((int)myX,(int)myY,100,100);
	}


}
class OddballParticle extends NormalParticle
{
	void move(){
	myX= myX+(Math.cos(partangle)*(partspeed));
	myY= myY+(Math.sin(partangle)*(partspeed));
	partangle = partangle +1;
  	partspeed = partspeed+1;
	}
	void show(){ ellipse((int)myX,(int)myY,400,400);}
}

