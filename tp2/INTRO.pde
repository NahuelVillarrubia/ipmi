int posYCIRULOS,posYCIRULOS2,posYCIRULOS3;
int posYPortada;
float TamTexto;

void circulosRojosEnBluques(){

  fill(#D84242);
  noStroke();
 
  if(posYCIRULOS > height){
   posYCIRULOS=0;
  }
 ellipse(50, posYCIRULOS, 15, 15);
 ellipse(200, posYCIRULOS, 15, 15);
 ellipse(400, posYCIRULOS, 15, 15);
 ellipse(600, posYCIRULOS, 15, 15);
 
 posYCIRULOS2=posYCIRULOS+150;
 
  if(posYCIRULOS2 > height){
   posYCIRULOS2= posYCIRULOS2-height;
  }
 ellipse(50, posYCIRULOS2, 15, 15);
 ellipse(200, posYCIRULOS2, 15, 15);
 ellipse(400, posYCIRULOS2, 15, 15);
 ellipse(600, posYCIRULOS2, 15, 15);

 posYCIRULOS3= posYCIRULOS+300;
  if(posYCIRULOS3 > height){
   posYCIRULOS3= posYCIRULOS3-height;
  }
 ellipse(50, posYCIRULOS3, 15, 15);
 ellipse(200, posYCIRULOS3, 15, 15);
 ellipse(400, posYCIRULOS3, 15, 15);
 ellipse(600, posYCIRULOS3, 15, 15);
 
   posYCIRULOS++;
}
 void ApareceLogo(){
if(frameCount>=10){
   tint(255, opacidad);
 image(Logo,160,0,305,98);
 
  if (opacidad < 255) {
    opacidad += (velocidad+3);
  }
  noTint();
 }
}
 void ImagenSalePorAbajo(){
if(frameCount>=0){
 image(Portada,0,480-posYPortada,640,289);
 if(posYPortada < 288){
   posYPortada+=4;
  }
 }
}
 void TextoCreciendo(){
 fill(#BF0808);
 textSize(TamTexto);
 text("OSOMATSU-SAN",70,160);
 if(Contador <70){
 TamTexto++;
 }
}
void PantallaIntro() {
  circulosRojosEnBluques();
  ApareceLogo();
  ImagenSalePorAbajo();
  TextoCreciendo();

}
