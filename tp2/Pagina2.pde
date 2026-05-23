int posXKARAimg=570;
int posYKARAtext;
int opaciKARA;

 void circulosAzulesEnBluques(){
  fill(#0B54A0);
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
 void ImagenSalePorDerechaKARA(){
 if(frameCount>=700){
 image(karamatsu,posXKARAimg,150,120,330);
 if(posXKARAimg >475){
   posXKARAimg--;
  }
 }
}
 void NombreKARA(){
 fill(#0B34A0);
 textSize(50);
 text("KARAMATSU",95,posYKARAtext);
 if(frameCount>=700){
 if(posYKARAtext <75){
   posYKARAtext++;
  }
 }
}
 void ApareceTextokARA(){
 if(frameCount>=300){
 
 fill(0,0,0,opaciKARA);
 textSize(20);
 text("Karamatsu es un chico de personalidad histriónica y narcisista. Está desesperado por conseguir chicas, al punto de intentar hacerse el chico cool y rebelde, aunque al final termina siendo ignorado, tanto por las demás personas como por sus 5 hermanos. Además, acostumbra a usar palabras en inglés en lo que dice la mayor parte del tiempo.Sus hermanos, afirman que mirarlo puede llegar a doler.Por lo general, es el más coherente de los sextillizos, aunque siempre termina siendo golpeado o dañado de alguna forma por alguno de sus hermanos cuando lo demuestra, o simplemente lo ignoran. A pesar de esto, no cambia su forma de ser.",50,100,430,360);
  if (opaciKARA < 255){
    opaciKARA += (velocidad + 3);
  }
 }
}
 void Pantalla2(){
   circulosAzulesEnBluques();
   ImagenSalePorDerechaKARA();
   NombreKARA();
   ApareceTextokARA();
}
