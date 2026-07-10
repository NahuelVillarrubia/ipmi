 boolean MuevoVertical(int limiteIzq, int limiteDerc){
  
 if (mouseX >= limiteIzq && mouseX <= limiteDerc){
  return true;
  }else{
  return false; 
 }
}

 void DiagonalVer(int cant, float rotar){
   
  for (int e = 0; e<cant; e++) {
  for (int i = 0; i<cant; i++) {
    
  float separax = e*20;
  float separay = i*100;
  
  float x= map(i, 0, cant-1, 380+separax, 500+separax);
  float y= map(e, 0, cant-1, 60+separay, -320+separay); 
       
   line(x, y+20, x+20, y); //linea diagonal
    
   pushMatrix();
   translate(x+10, y+10);
   rotate(rotar);
   line(0, -15, 0, 15); //linea vertical
   popMatrix();
  }
 }
 
}
  
