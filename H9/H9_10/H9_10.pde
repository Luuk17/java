void setup(){
  size(500,500);
  boom(10,0);
  boom(100,0);
  boom(200,0);
  boom(300,0);
  boom(400,0);
  boom(-60,0);
}

void draw(){
 
}

void boom(int x, int y){
 fill(175,50,0);
 rect(x + 100, y + 200,80,200);
 fill(100,255,0);
 ellipse(x + 140, y + 150,190,140);
}
