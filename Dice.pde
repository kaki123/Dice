void setup()
{
	noLoop();
}
void draw()
{
	//your code here
	background(255, 255, 255);
	dice= new Die(150,150);
	dice.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		rect(x,y,50,50);//your code here
	}
}
