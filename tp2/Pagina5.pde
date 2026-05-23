int posXJYUSHIimg;
int posYJYUSHItext;
int opaciJYUSHI;

void circulosAmarilloEnBluques(){
  fill(#E0E349);
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
   posYCIRULOS2 = posYCIRULOS2 - height;
  }
 ellipse(50, posYCIRULOS2, 15, 15);
 ellipse(200, posYCIRULOS2, 15, 15);
 ellipse(400, posYCIRULOS2, 15, 15);
 ellipse(600, posYCIRULOS2, 15, 15);

 posYCIRULOS3 = posYCIRULOS+300;
  if(posYCIRULOS3 > height){
   posYCIRULOS3= posYCIRULOS3 - height;
  }
 ellipse(50, posYCIRULOS3, 15, 15);
 ellipse(200, posYCIRULOS3, 15, 15);
 ellipse(400, posYCIRULOS3, 15, 15);
 ellipse(600, posYCIRULOS3, 15, 15);
 
   posYCIRULOS++;
}

 void ImagenSalePorIzquierdaJYUSHI(){
 if(frameCount>=300){
 image(jyushimatsu, posXJYUSHIimg, 150, 120, 330);
 if(posXJYUSHIimg <40){
   posXJYUSHIimg++;
  }
 }
}
 void NombreJYUSHI(){
 fill(#D3BF02);
 textSize(50);
 text("JYUSHIMATSU", 200, posYJYUSHItext);
 if(frameCount>=1200){
 if(posYJYUSHItext <70){
   posYJYUSHItext++;
  }
 }
}
void ApareceTextoJYUSHI(){
if(frameCount>=300){
 
 fill(0,0,0,opaciJYUSHI);
 textSize(20);
 text("Es alegre e hiperactivo, le gustan mucho los deportes, en especial el béisbol, por lo que también posee mayor fuerza física que sus hermanos, además, es capaz de hacer cosas muy fuera de lo común.Se caracteriza principalmente por estar feliz y sobrexcitado casi todo el tiempo y rara vez se le ve con una actitud seria, pero no significa que no pueda sentir enojo o tristeza.Según Ichimatsu, también le cuesta estar con otras personas debido a su extrema personalidad infantil.Su amabilidad también se puede ver cuando es el único que ayuda a Todomatsu a limpiar el desastre que causaron sus hermanos en el Sutabaa Café.",180,110,430,350);
  if (opaciJYUSHI < 255){
    opaciJYUSHI+= (velocidad + 3);
  }
 }
}
  void Pantalla5(){
   circulosAmarilloEnBluques();
   ImagenSalePorIzquierdaJYUSHI();
   NombreJYUSHI();
   ApareceTextoJYUSHI();
}
