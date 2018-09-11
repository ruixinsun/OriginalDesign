int ypos=0;
int dir =1;
void setup()
{
  background(255);
  size(600,600);
  frameRate(20);
}
void draw()
{
  
  background(255);
  
  tree();
  
  if(ypos > 400 || ypos<-100)
    dir = -dir;
  ypos += 10 * dir;
  translate(0, ypos);
  koala();
  
  translate(0, -ypos);
  leaves();
}

void koala()
{
  fill(200); 
  ellipse(350,360,25,25); //tail
  ellipse(310, 310, 100, 140); //body
  ellipse(260,310, 60, 25); //arm
  ellipse(240, 205, 65, 65); //left ear
  ellipse(379, 200, 65, 65); //right ear
  fill(265, 182, 193); 
  ellipse(377, 203, 45, 45); //right inside ear
  ellipse(243, 208, 45, 45); //left inside ear
  fill(200);
  ellipse(310, 230, 150, 120); //head
  arc(310, 273, 20, 20, 0, PI); //smile
  fill(265,255,255); 
  ellipse(274, 228, 30, 30); //left eye
  ellipse(344, 228, 30, 30); //right eye
  fill(0,0,0);
  triangle(310,230, 320,250, 300,250); //nose
  ellipse(277, 222, 15, 15); //left pupil
  ellipse(348, 223, 15, 15); //right pupil
  fill(200);
  rotate(-PI/6.0);
  ellipse(55, 450, 60, 25); // leg
  rotate(PI/6.0);
} 

void tree()
{
  fill(102, 70, 0); 
  curve(9, 60, 243, 0, 243, 700, 10, 700); //tree
}

void leaves()
{
  
  fill(10, 200, 100);
  rotate(PI/6);
  ellipse(215,-90,30,15);
  
  ellipse(230,-65,40,15);
  rotate(-PI/3);
  ellipse(200,190,30,15);
  ellipse(210,170,30,15);
}
