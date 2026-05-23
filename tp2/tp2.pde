int opacidad;
int velocidad;

PFont MiFuente;
PImage Logo, Boton;
PImage Portada, Final; 
PImage osomatsu,karamatsu,choromatsu, ichimatsu,jyushimatsu,todomatsu; 

int PaginaActual=1;
int Inicio;
int Contador; 

void setup(){
  size(640,480);
  Inicio = frameCount;
  
  Logo = loadImage("Logo_Osomatsu-san.png");
  Portada = loadImage ("portada.png");
  Final = loadImage ("final.jpg");
  Boton = loadImage ("boton.png");
  MiFuente=loadFont("SourceSansPro-Black-65.vlw");
  
  osomatsu = loadImage("osomatsu.png");
  karamatsu = loadImage("karamatsu.png");
  choromatsu = loadImage("choromatsu.png");
  ichimatsu = loadImage("ichimatsu.png");
  jyushimatsu = loadImage("jyushimatsu.png");
  todomatsu = loadImage("todomatsu.png");
}

void draw(){
  
  background(255);
  println(frameCount);
  textFont(MiFuente);

  Contador = frameCount - Inicio;

if (Contador >= 0 && Contador < 300){
  PaginaActual = 1;
}else if(Contador >= 300 && Contador < 700){
  PaginaActual = 2;
}else if(Contador >= 700 && Contador < 1200){
  PaginaActual = 3;
}else if(Contador >= 1200 && Contador < 1700){
  PaginaActual = 4;
}else if(Contador >= 1700 && Contador < 2200){
  PaginaActual = 5;
}else if(Contador >= 2200 && Contador < 2700){
  PaginaActual = 6;
}else if(Contador >= 2700 && Contador < 3200){
  PaginaActual = 7; 
}else if(Contador >= 3200) {
  PaginaActual = 8; 
}
if (PaginaActual == 1){
  PantallaIntro();
}else if (PaginaActual == 2){
  Pantalla1();
}else if (PaginaActual == 3){
  Pantalla2();
}else if (PaginaActual == 4){
  Pantalla3();
}else if (PaginaActual == 5){
  Pantalla4();
}else if (PaginaActual == 6){
  Pantalla5();
}else if (PaginaActual == 7){
  Pantalla6();
}else if (PaginaActual == 8){
  PantallaFINAL();
  image(Boton, posXBoton, posYBoton, TamXBoton, TamYBoton);
 }
}
