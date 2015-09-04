import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

public void setup()
{
	size(500,500);
	noLoop();
}
public void draw()
{
	//your code here
	background(255, 255, 255);
	Die dice= new Die(150,150);
	dice.show();
	
}
public void mousePressed()
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
	public void roll()
	{
		if(dot == 1){
			ellipse(myX-20,myY-20,5,5);

		}
		//your code here
	}
	public void show()
	{
		rect(myX,myY,50,50);//your code here
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
