PImage ImReferencia;
float RotacionV = 0;
float RotacionH =0;

void setup(){
  size(800,400);
ImReferencia=loadImage("27.jpg");
}

void draw(){
  
  background(255);
  strokeWeight(3);
  
 if (MuevoVertical() == true) {
  RotacionV +=0.05;
}
 DiagonalVer(20, RotacionV);
 
 if (MuevoHorizontal() == true) {
 RotacionH -=0.05;
}
 DiagonalHoriz(20, RotacionH);
  
 image(ImReferencia,0,0,400,400);
}
void mouseClicked(){
  Reinicio();
}
void Reinicio(){
 RotacionV = 0;
 RotacionH = 0;
}

  
