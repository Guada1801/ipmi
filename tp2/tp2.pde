int estado;
//Rectangulo
int esquinaX1 = 280;
int esquinaY1 = 380;
int ancho = 80;
int alto = 30;
boolean apretoBoton;

//Animaciones
int textos = 1000;
int textos2,textos3,textos4,textos5,textos6,textos7,textos8,textos9,textos10;

//Textos
String texto,textoPer,textoCasa,textoFam,textoMasc,textoCasam,textoBeb,textoAmig,textoTrab,textoExp,textoRei;

//Imagenes
PImage imagen1,imagen2,imagen3,imagen21,imagen4,imagen5,imagen6,imagen7,imagen8,imagen9,imagen10,imagen11,imagen12,imagen13,imagen14,imagen15,imagen16;
PFont fuenteTexto, fuenteExp;

void setup(){
 size(640,480);
 background(41,188,240);
 
 imagen1 = loadImage("imagen1.PNG");
 imagen2 = loadImage("imagen2.png");
 imagen3 = loadImage("imagen3.jpg");
 imagen4 = loadImage("imagen4.png");
 imagen5 = loadImage("imagen5.jpeg");
 imagen6 = loadImage("imagen6.png");
 imagen7 = loadImage("imagen7.jpg");
 imagen8 = loadImage("imagen8.png");
 imagen9 = loadImage("imagen9.jpg");
 imagen10 = loadImage("imagen10.jpg");
 imagen11 = loadImage("imagen11.png");
 imagen12 = loadImage("imagen12.jpg");
 imagen13 = loadImage("imagen13.png");
 imagen14 = loadImage("imagen14.png");
 imagen15 = loadImage("imagen15.PNG");

 textSize(18);
 fuenteTexto = loadFont("BookAntiqua-18.vlw");
 textFont(fuenteTexto);

 texto = "Los Sims es un juego de simulación de vida interactivo para un solo jugador \nque te da el poder de crear y controlar tu propio personaje de Sims. Puede \ncrear familias, construir viviendas y realizar diversas actividades del día a \ndía como dormir, comer, trabajar, etc. El juego depende del estilo de juego \ndel usuario. Algunos prefieren construir en el modo de construcción,\nmientras que a otros les gusta crear una historia para seguir en el modo en \nvivo. Los objetivos profesionales y de estilo de vida se pueden seguir o \nignorar, lo que significa que el juego se puede adaptar a cualquier persona.";
 textoPer ="Podes crear tu personaje a tu manera";
 textoCasa ="Construír tu vivienda a tu gusto";
 textoFam ="Formar una gran familia";
 textoMasc ="Adoptar una mascota";
 textoCasam ="Casarte con tu pareja";
 textoBeb ="Tener hijos";
 textoAmig ="Disfrutar con tus amigos";
 textoTrab ="Ejercer una profesión";
 textoRei = "Reiniciar";

 estado = 1;
 
 
 textos = frameCount/2;
 textos2 = textos3 = textos4 = textos5= textos6 = textos7 = textos8 = textos9 = textos10 = -10;
 
}

void draw(){
   println(textos2);
  
  background(41,188,240);
  textoExp ="Experimenta \nla vida \nsiendo...";
  
  apretoBoton = (mouseX > esquinaX1 && mouseX < esquinaX1 + ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto);
  
if(estado == 1 ){
  image(imagen1,0,0,640,480);
  
  if(frameCount/60 >= 3)
  estado = 2;
  
} else if (estado == 2){
  image(imagen2,50,33,200,250);
  image(imagen3,300,60);
  text(texto,20,textos);
 if(textos < 300){
  textos++;
 }else{
 if(frameCount/60 >= 25)
 estado = 3;
  
 }
} else if(estado == 3){
  image(imagen4,40,33);
  text(textoPer, textos2,425);
  textos2++;
  
  
  if(frameCount/60 >= 30)
  estado = 4;
  
} else if(estado == 4){
  image(imagen5,40,33);
  text(textoCasa, textos3,425);
  textos3++;

  
  if(frameCount/60 >= 35)
  estado = 5;
  
  
} else if(estado == 5){
  image(imagen6,55,33);
  text(textoFam, textos4,425);
  textos4++;
  
  
  if(frameCount/60 >= 40)
  estado = 6;

  
} else if(estado ==6){
  image(imagen7,40,33);
  text(textoMasc, textos5,425);
  textos5++;
  
 
  if(frameCount/60 >= 45)
  estado = 7;
  
    
} else if(estado == 7){
  image(imagen8,55,33);
  text(textoCasam, textos6,425);
  textos6++;
  
 
  if(frameCount/60 >= 50)
  estado = 8;
  
  
} else if(estado == 8){
  image(imagen9,40,33);
  text(textoBeb, textos7,425);
  textos7++;

  
  if(frameCount/60 >= 55)
  estado = 9;
  
 
} else if(estado == 9){
  image(imagen10,40,33);
  text(textoAmig, textos8,425);
  textos8++;
  
  
  if(frameCount/60 >= 60)
  estado = 10;
  
  
} else if(estado == 10){
  image(imagen11,75,33);
  text(textoTrab, textos9,425);
  textos9++;
 
 
  if(frameCount/60 > 65)
  estado = 11;
  
  
} else if(estado == 11){
  textSize(80);
  fuenteExp = loadFont("BookmanOldStyle-80.vlw");
  textFont(fuenteExp);
  text(textoExp,90,textos10);
  if(textos10 < 120){
   textos10++;
  }else{
  if(frameCount/60 > 70)
  estado = 12;

  }
} else if(estado == 12){
  image(imagen12,40,55);
  
  if(frameCount/60 > 75)
  estado = 13;
  
} else if(estado == 13){
  image(imagen13,40,55);
  
  if(frameCount/60 > 80)
  estado = 14;
  
} else if(estado == 14){
  image(imagen14,40,55);
  
  if(frameCount/60 > 85)
  estado = 15;
  
} else if(estado == 15){
  image(imagen15,100,119,450,250); 
   fill(255);
   rect(esquinaX1, esquinaY1, ancho, alto);
   fill(255);
   textSize(18);
   text(textoRei,282,450);
}
}
void mousePressed(){
if(mouseX > esquinaX1 && mouseX < esquinaX1 + ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto){
   println(apretoBoton);
   frameCount =0;
   estado = 1;
   textSize(18);
   fuenteTexto = loadFont("BookAntiqua-18.vlw");
   textFont(fuenteTexto);
   texto = "Los Sims es un juego de simulación de vida interactivo para un solo jugador \nque te da el poder de crear y controlar tu propio personaje de Sims. Puede \ncrear familias, construir viviendas y realizar diversas actividades del día a \ndía como dormir, comer, trabajar, etc. El juego depende del estilo de juego \ndel usuario. Algunos prefieren construir en el modo de construcción,\nmientras que a otros les gusta crear una historia para seguir en el modo en \nvivo. Los objetivos profesionales y de estilo de vida se pueden seguir o \nignorar, lo que significa que el juego se puede adaptar a cualquier persona.";
   textos = frameCount/2;  
   textos2 = textos3 = textos4 = textos5= textos6 = textos7 = textos8 = textos9= textos10 = -10;
 }

}


  
