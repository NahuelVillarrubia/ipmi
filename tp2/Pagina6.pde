int posXTODOimg=570;
int posYTODOtext;
int opaciTODO;

void circulosRosaEnBluques(){
  fill(#DE69D2);
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
 void ImagenSalePorDerechaTODO(){
 if(frameCount>=700){
 image(todomatsu,posXTODOimg,150,120,330);
 if(posXTODOimg >475){
   posXTODOimg--;
  }
 }
}
 void NombreTODO(){
 fill(#C93DA9);
 textSize(50);
 text("TODOMATSU",95,posYTODOtext);
 if(frameCount>=700){
 if(posYTODOtext <75){
  posYTODOtext++;
  }
 }
}
 void ApareceTextoTODO(){
 if(frameCount>=300){
 
 fill(0,0,0,opaciTODO);
 textSize(20);
 text("Es despreocupado, tierno, amable y algo afeminado en ciertas ocasiones, lo que conduce a un cierto éxito con las chicas aun que dicho éxito dura poco o nada gracias a sus hermanos. Y aun que no lo parezca es bastante manipulador y doble cara, llegándolo a comparar con un demonio. Se avergüenza de su condición social y de sus hermanos, y trata de ocultar su vida personal a ellos. A pesar de esto, de los 6 es el que más vida social tiene.",50,110,420,350);
 if (opaciTODO < 255){
 opaciTODO += (velocidad + 3);
  }
 }
}
 void Pantalla6(){
   circulosRosaEnBluques();
   ImagenSalePorDerechaTODO();
   NombreTODO();
   ApareceTextoTODO();
}
