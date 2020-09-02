int startX = 0;
   int startY = 150;
   int endX = 0;
   int endY = 150;
void setup()
 {
   size(300,300);
   noLoop();
   strokeWeight(10);
   background(#000000);
 }
 void draw()
 {
   int x = (int)(Math.random() * 300);
   ellipse(x,150,10,10);
   stroke((int)(Math.random()*300));
   while(endX < 301)
   {
     endX = startX + ((int)(Math.random()*2));
     endY = startY + ((int)(Math.random()*2));
     line(startX,startY,endX,endY);
     startX = endX;
     startY = endY;
   }
 }
 void mousePressed()
 {
   redraw();
   startX = 0;
   startY = 150;
   endX = 0;
   endY = 150;

 }

