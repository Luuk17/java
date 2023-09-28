void setup(){
  size(500,500);
  
}

void draw(){
  background(0,0,0);
  fill(150,75,0);
  boom(100,200,80,200,100,140);
}

void boom(int x1, int y1, int x2, int y2, int x3, int y3){
fill(175,50,0);
 rect(x1,y1,x2,y2);
fill(100,255,0);
 ellipse(y3,y2,y3,x2);
}
