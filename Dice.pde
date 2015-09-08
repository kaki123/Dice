void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	//your code here
	background(0, 0, 0);
	for (int i=0; i<500; i+=50){
	Die dic= new Die(i,i);
	dic.show();
	dic.roll();
	}	
}
void mousePressed()
{
	redraw();
	
}
class Die //models one single dice cube
{
	int dot,myX, myY;
	
	Die(int x, int y) 
	{
		dot = (int)(Math.random()*6)+1;
		myX = x;
		myY = y;
	}
	void roll()
	{
		if(dot == 1){
			stroke((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
			ellipse(myX+25,myY+25,5,5);

		}
		if(dot == 2){
			stroke((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
			ellipse(myX+20,myY+25,5,5);
			ellipse(myX+30,myY+25,5,5);

		}
		if(dot == 3){
			stroke((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
			ellipse(myX+15,myY+25,5,5);
			ellipse(myX+25,myY+25,5,5);
			ellipse(myX+35,myY+25,5,5);

		}
		if(dot == 4){
			stroke((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
			ellipse(myX+32,myY+18,5,5);
			ellipse(myX+18,myY+18,5,5);
			ellipse(myX+32,myY+32,5,5);
			ellipse(myX+18,myY+32,5,5);

		}
		if(dot == 5){
			stroke((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
			ellipse(myX+25,myY+25,5,5);
			ellipse(myX+32,myY+18,5,5);
			ellipse(myX+18,myY+18,5,5);
			ellipse(myX+32,myY+32,5,5);
			ellipse(myX+18,myY+32,5,5);


		}
		if(dot == 6){
			stroke((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
			ellipse(myX+15,myY+20,5,5);
			ellipse(myX+25,myY+20,5,5);
			ellipse(myX+35,myY+20,5,5);
			ellipse(myX+15,myY+30,5,5);
			ellipse(myX+25,myY+30,5,5);
			ellipse(myX+35,myY+30,5,5);


		}
	}
	void show()
	{
		rect(myX,myY,50,50);//your code here
	}
}
