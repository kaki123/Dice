void setup()
{
	size(500,520);
	noLoop();
}
void draw()
{
	//your code here
	background(0, 0, 0);
	int sum = 0;
	int first=0;
	int total = 0;
	//List myList = new ArrayList();
	for (int i=0; i<500; i+=100){
		for (int x=0; x<500; x+=65){
			Die dic= new Die(x,i);
			dic.show();
			dic.roll();
			sum = sum + dic.dot;
			//myList.add(sum); 

		}
	}
	//total= sum of list 
	//for(i=0; i<myList.length;i++){
		// total+= myList.get(i);

	//}
	//return total;
	
	text("Total:"+ sum, 0,520);
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
