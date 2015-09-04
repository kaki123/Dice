void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	//your code here
	background(255, 255, 255);
	Die dice= new Die(150,150);
	dice.show();
	
}
void mousePressed()
{
	redraw();
	dice.roll();
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
			ellipse(myX-20,myY-20,5,5);

		}
		//your code here
	}
	void show()
	{
		rect(myX,myY,50,50);//your code here
	}
}
