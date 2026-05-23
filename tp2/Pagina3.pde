int posXCHOROimg;
int posYCHOROtext;
int opaciCHORO;

void circulosVerdeEnBluques(){
  fill(#0BA034);
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

 void ImagenSalePorIzquierdaCHORO(){
 if(frameCount>=300){
 image(choromatsu,posXCHOROimg,150,120,330);
 if(posXCHOROimg <40){
   posXCHOROimg++;
  }
 }
}
 void NombreCHORO(){
 fill(#036C07);
 textSize(50);
 text("CHOROMATSU",200,posYCHOROtext);
 if(frameCount>=1200){
 if(posYCHOROtext <70){
   posYCHOROtext++;
  }
 }
}
 void ApareceTextoCHORO(){
 if(frameCount>=300){
 
 fill(0,0,0,opaciCHORO);
 textSize(20);
 text("Es el más responsable y consciente de sus hermanos. Sin embargo es todo apariencia, ya que a pesar de regañar a sus hermanos y ser consiente de su vida de nini no hace nada más que alardear de sus planes a futuro como si ya los hubiese realizado.La expresión de su rostro siempre es seria o de preocupación, su boca tomando una forma de v o también conocido en el fandom como boca de rana.Es también un otaku fanático de las Idols, principalmente de la idol Nyaa-chan y de Totoko, de quien esta más enamorado en comparación con sus hermanos. Además de que le gusta leer novelas ligeras.",180,100,430,400);
  if (opaciCHORO < 255){
    opaciCHORO+= (velocidad + 3);
  }
 } 
}
  void  Pantalla3(){
   circulosVerdeEnBluques();
   ImagenSalePorIzquierdaCHORO();
   NombreCHORO();
   ApareceTextoCHORO();
}
