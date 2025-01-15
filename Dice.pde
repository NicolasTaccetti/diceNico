public void settings(){
  size(150, 150);}
void setup()
{
  noLoop();
  
}
void draw()
{
  
  for(int y=0; y<150; y+=50){
     for(int x=0;x<150;x+=50)
     {
       fill(255);
        rect(x, y, 50, 50, 10);
        Die myDie=new Die(x,y);
        myDie.roll();
        myDie.show();
   
     }
  }

}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int X;
  int Y;
  int roll;
  
  Die(int x, int y) //constructor
  {
    X=x;
    Y=y;
  }
  void roll()
  {
    roll=(int)(Math.random()*7);
  }
  void show()
  {
    int theNum=roll;
    fill(0);
       if(theNum==1){
          ellipse(X+25,Y+25, 5, 5);
        }
         else if(theNum==2){
           ellipse(X+10, Y+10, 5, 5);
           ellipse(X+40, Y+40, 5, 5);
         }
         else if(theNum==3){
           ellipse(X+25,Y+25, 5, 5);
           ellipse(X+10, Y+10, 5, 5);
           ellipse(X+40, Y+40, 5, 5);
         }
         else if(theNum==4){
            ellipse(X+10, Y+10, 5, 5);
           ellipse(X+40, Y+40, 5, 5);
           ellipse(X+40, Y+10, 5, 5);
           ellipse(X+10, Y+40, 5, 5);
         }
         else if(theNum==5){
            ellipse(X+10, Y+10, 5, 5);
           ellipse(X+40, Y+40, 5, 5);
           ellipse(X+40, Y+10, 5, 5);
           ellipse(X+10, Y+40, 5, 5);
           ellipse(X+25,Y+25, 5, 5);
           
         }
         else{
           ellipse(X+10, Y+10, 5, 5);
           ellipse(X+25, Y+10, 5, 5);
           ellipse(X+40, Y+10, 5, 5);
           ellipse(X+10, Y+40, 5, 5);
           ellipse(X+25, Y+40, 5, 5);
           ellipse(X+40, Y+40, 5, 5);
           
         }
        
  }
}
