

void setup(){
size(500,500);
}

void draw(){
  background(255,255,255);
  drawRightC(250,250,200,5);
  
}
  
void drawRightC(int x, int y, int sizeC, int aantal){
   for(int i = 0; i < aantal; i++){
      ellipse(200 - sizeC/2,200,sizeC,sizeC);
      sizeC -= 20;
   }
}
    
    
