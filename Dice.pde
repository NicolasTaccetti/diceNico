
public void settings()
  {
    size(250, 300);
  }
void setup()
{
  noLoop();
 
}
int theSum=0;
void draw()
{
  //your code here
 theSum=0;
 background(200);
  for(int y=25; y<250; y+=75){
     for(int x=25;x<250;x+=75)
     {
       fill(255);
        rect(x, y, 50, 50, 10);
        Die myDie=new Die(x,y);
        myDie.roll();
        myDie.show();
        theSum+=myDie.getRoll();
     
   
     }
  }
  text("The total is: "+theSum, 25, 275); 
  if (theSum<27)
        {
          for(int i=0;i<=50;i++){
          fill(0, 0, 0, 10);
          rect(0, 0, 250, i*5);
        }
        }
  print(theSum);
}

void mousePressed()
{
  redraw();
  
}
class Die //models one single dice cube
{

  int X;
  int Y;
  int rollVal;
  
  Die(int x, int y) //constructor
  {
    X=x;
    Y=y;
  }
  void roll()
  {
    rollVal=(int)(Math.random()*6)+1;
    
  }
  int getRoll(){
      return rollVal;
    }
  void show()
  {
    int theNum=rollVal;
    fill(0);
       if(theNum==1){
          ellipse(X+25,Y+25, 7.5, 7.5);
        }
         else if(theNum==2){
           ellipse(X+10, Y+10, 7.5, 7.5);
           ellipse(X+40, Y+40, 7.5, 7.5);
         }
         else if(theNum==3){
           ellipse(X+25,Y+25, 7.5, 7.5);
           ellipse(X+10, Y+10, 7.5, 7.5);
           ellipse(X+40, Y+40, 7.5, 7.5);
         }
         else if(theNum==4){
            ellipse(X+10, Y+10, 7.5, 7.5);
           ellipse(X+40, Y+40, 7.5, 7.5);
           ellipse(X+40, Y+10, 7.5, 7.5);
           ellipse(X+10, Y+40, 7.5, 7.5);
         }
         else if(theNum==5){
            ellipse(X+10, Y+10, 7.5, 7.5);
           ellipse(X+40, Y+40, 7.5, 7.5);
           ellipse(X+40, Y+10, 7.5, 7.5);
           ellipse(X+10, Y+40, 7.5, 7.5);
           ellipse(X+25,Y+25, 7.5, 7.5);
           
         }
         else{
           ellipse(X+10, Y+10, 7.5, 7.5);
           ellipse(X+25, Y+10, 7.5, 7.5);
           ellipse(X+40, Y+10, 7.5, 7.5);
           ellipse(X+10, Y+40, 7.5, 7.5);
           ellipse(X+25, Y+40, 7.5, 7.5);
           ellipse(X+40, Y+40, 7.5, 7.5);
           
         }
        
  }
}
