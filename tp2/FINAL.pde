int opaciFIN;
int TamXBoton = 272;
int TamYBoton = 140;
int posXBoton = 40;
int posYBoton = 310;
boolean ActivaBoton = false;

 void PantallaFINAL(){
  
  if(frameCount >= 3200){
   tint(255, opaciFIN);
   image(Final, 0, 0, 640, 480);
  if (opaciFIN < 255) {
    opaciFIN += (velocidad+10);
  }
  image(Boton, posXBoton, posYBoton, TamXBoton, TamYBoton);
  ActivaBoton = true;
 }
}
  void mousePressed() {
 
  if (ActivaBoton == true) {
  if (mouseX > posXBoton && mouseX < posXBoton + TamXBoton && 
     mouseY > posYBoton && mouseY < posYBoton + TamYBoton){
        
    Inicio = frameCount; 
    Contador = frameCount - Inicio;
      
    opacidad = 0;
    posYCIRULOS = 0;
    posYPortada = 0;
    TamTexto = 0;
      
    posXOSOimg = 0;
    posYOSOtext = 0;
    opaciOSO = 0;
    
    posXKARAimg = 570;
    posYKARAtext = 0;
    opaciKARA = 0;
     
    posXCHOROimg = 0;
    posYCHOROtext = 0;
    opaciCHORO = 0;
      
    posXICHIimg = 570;
    posYICHItext = 0;
    opaciICHI = 0;
      
    posXJYUSHIimg = 0;
    posYJYUSHItext = 0;
    opaciJYUSHI = 0;
      
    posXTODOimg = 570;
    posYTODOtext = 0;
    opaciTODO = 0;
    
    opaciFIN = 0;
    ActivaBoton = false;
  }
 }
}
