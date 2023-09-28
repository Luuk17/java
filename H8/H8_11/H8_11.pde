int xWaarde = 50;
int yWaarde = 50;

size(300,300);
background(255,255,255);

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
    rect(xWaarde, yWaarde,20,20);
    yWaarde += 20;
  }
  yWaarde = 50;
  xWaarde += 20;
 
}
