int posXICHIimg=570;
int posYICHItext;
int opaciICHI;

void circulosVioletaEnBluques(){
  fill(#8550BC);
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
   posYCIRULOS2= posYCIRULOS2 - height;
  }
 ellipse(50, posYCIRULOS2, 15, 15);
 ellipse(200, posYCIRULOS2, 15, 15);
 ellipse(400, posYCIRULOS2, 15, 15);
 ellipse(600, posYCIRULOS2, 15, 15);

 posYCIRULOS3= posYCIRULOS+300;
  if(posYCIRULOS3 > height){
   posYCIRULOS3= posYCIRULOS3 - height;
  }
 ellipse(50, posYCIRULOS3, 15, 15);
 ellipse(200, posYCIRULOS3, 15, 15);
 ellipse(400, posYCIRULOS3, 15, 15);
 ellipse(600, posYCIRULOS3, 15, 15);
 
   posYCIRULOS++;
}
 void ImagenSalePorDerechaICHI(){
 if(frameCount>=700){
 image(ichimatsu,posXICHIimg,150,120,330);
 if(posXICHIimg >475){
   posXICHIimg--;
  }
 }
}
 void NombreICHI(){
 fill(#6C16C4);
 textSize(50);
 text("ICHIMATSU",95,posYICHItext);
 if(frameCount>=700){
 if(posYICHItext <75){
  posYICHItext++;
  }
 }
}
 void ApareceTextoICHI(){
 if(frameCount>=300){
 
 fill(0,0,0,opaciICHI);
 textSize(20);
 text("El es muy frío y distante hasta el punto de no querer amigos porque tiene fobia a las personas, a causa de su inseguridad, el temor de decepcionar a la gente hace que sea solitario aunque le gustan mucho los gatos, ya que la presencia de estos le es reconfortante. Se lo puede ver la mayor parte del tiempo rodeado por gatos y se sabe que los alimenta con frecuencia.Lo rodea un aura misteriosa y siniestra.Según lo que nos revela el Gato Psíquico, Ichimatsu no siente necesidad de tener amigos ya que le basta con tener a sus hermanos cerca.Es muy sensible y solo actúa de manera oscura y fría para su protección.",50,110,430,350);
  if (opaciICHI < 255){
    opaciICHI += (velocidad + 3);
  }
 }
}
 void Pantalla4(){
   circulosVioletaEnBluques();
   ImagenSalePorDerechaICHI();
   NombreICHI();
   ApareceTextoICHI();
}
