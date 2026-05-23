int posXOSOimg;
int posYOSOtext;
int opaciOSO;

 void ImagenSalePorIzquierdaOSO(){
if(frameCount>=300){
 image(osomatsu,posXOSOimg,150,120,330);
 if(posXOSOimg <40){
   posXOSOimg++;
  }
 }
}
 void NombreOSO(){
 fill(#BF0808);
 textSize(50);
 text("OSOMATSU", 200, posYOSOtext);
 if(frameCount>=300){
 if(posYOSOtext <85){
   posYOSOtext++;
  }
 }
}
 void ApareceTextoOSO(){
 if(frameCount>=300){
 fill(0,0,0,opaciOSO);
 textSize(20);
 text("Se mantienen fielmente sus obstinadas características, se presenta como un niño desde su juventud, y todavía se presenta como el líder de los sextillizos (y posteriormente, como el más responsable del grupo, para gran desacuerdo en especial con Choromatsu). A pesar de que expresa su odio a ser un sexteto y desea que él fuera hijo único, siente que todavía tiene la responsabilidad de cuidar de sus hermanos (que irónicamente, es a menudo lo contrario de lo que realmente hace). Si todavía merece su título como el mejor luchador es discutible.",180,120,430,350);
  if (opaciOSO < 255){
  opaciOSO += (velocidad + 3);
  }
 }
}
 void Pantalla1(){
   circulosRojosEnBluques();
   ImagenSalePorIzquierdaOSO();
   NombreOSO();
   ApareceTextoOSO();
}
