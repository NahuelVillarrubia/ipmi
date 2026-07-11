//https://youtu.be/IgnsmLnjqoE?si=pZ1KUjR_0orE5Ngi

PImage ImReferencia;
int cant= 20;
float RotacionV = 0;
float RotacionH = 0;
float centroMedio;
float centroIzquierdo;
float centroDerecho;
float tamcirculoI= 0;
float tamcirculoD= 0;

 void setup(){
   
  size(800,400);
 ImReferencia=loadImage("27.jpg");
}

void draw(){
  
  background(255);
  strokeWeight(3);
  
 centroMedio = dist(mouseX, mouseY, 600, 200);
 centroIzquierdo = dist(mouseX, mouseY, 500, 200);
 centroDerecho = dist(mouseX, mouseY, 700, 200);
 
if (centroIzquierdo < 30){
  dibujarcirculo(500, 200, tamcirculoI);
  tamcirculoI++;
  
  push();
  stroke(255);
  strokeWeight(5);
  DiagonalHoriz(20, RotacionH);
  pop();
}

if (centroDerecho < 30){
  dibujarcirculo(700, 200, tamcirculoD);
  tamcirculoD++; 
  
  push();
  stroke(255);
  strokeWeight(5);
  DiagonalVer(20, RotacionV);
  pop();
}

if(centroMedio < 70){
  RotacionH -= 0.05;
  RotacionV += 0.05;
}
 else if (ZonaDEVerticales(600, 800) == true){
     DiagonalVer(20, RotacionV);
     RotacionV += 0.05;
}
else if (ZonaDEHorizontales(400, 600) == true){
     DiagonalHoriz(20, RotacionH);
     RotacionH -= 0.05;
}

 DiagonalHoriz(20, RotacionH);
 DiagonalVer(20, RotacionV);
 

 image(ImReferencia, 0, 0, 400, 400);

}

void dibujarcirculo (float posX, float posY, float tam){
  push();
  noStroke();
  fill(0);
  ellipse(posX, posY, tam, tam);
  pop();
}

void mouseClicked(){
  Reinicio();
}

void Reinicio(){
 cant = 20;
 RotacionV = 0;
 RotacionH = 0;
 tamcirculoI= 0;
 tamcirculoD= 0;
 
}
