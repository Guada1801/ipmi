PImage miPaisaje;

void setup(){
  size(800, 400);
  background(255);
  miPaisaje = loadImage("lago.jpg");
  
}

void draw(){
 rect(0, 0, 100, 200);
 image(miPaisaje, 0, 0);
 
 //CIELO
 noStroke();
 fill(0, 80, 220);
 rect( 400,0, 400, 201);
 
 //LAGO
 noStroke();
 fill(75, 150, 224);
 rect(400, 200, 400,200);
 
 //PINOS DE ATRAS
 noStroke();
 fill(9, 93, 14);
 triangle(400,330, 400, 400, 455, 400);
 triangle(480, 340, 455, 400, 515, 400);
 triangle(560, 317, 535, 400, 580,400);
 triangle(588, 348, 574, 400, 598, 400);
 triangle(608,344, 591, 400, 635, 400);
 triangle(700,274, 667, 400, 734, 400);
 triangle(786,274, 738, 400, 830, 400);
 
 
 //MONTAÑAS DEL FONDO
 noStroke();
 fill(198, 195,194);
 triangle(655, 170, 477, 225, 800, 225);
 triangle(500, 170, 600, 225, 400, 223);
 
 
 //MONTAÑAS DE ATRAS
 noStroke();
 fill(0, 80, 75);
 triangle(560, 160, 427, 246, 650, 246);
 triangle(400, 165, 400, 250, 490, 246);
 triangle(655, 176, 580, 220, 724, 205);
 
 //MONTAÑA GRANDE
 noStroke();
 fill(152, 120,14);
 triangle(735, 250, 735, 179, 410, 250);
 triangle(800, 46, 800, 250, 630, 250);
 
  //PINOS DEL FRENTE
 noStroke();
 fill(65, 129, 23);
 triangle(443, 300, 468, 349, 418,349);
 triangle(443, 327, 414, 377, 474, 377);
 triangle(443, 354, 406, 400, 482, 400); 
 triangle(520, 284,546, 344, 496, 344);
 triangle(520, 315, 490, 373, 555, 373);
 triangle(520, 330, 489, 400, 559, 400);
 triangle(645, 286, 617, 340, 676, 340);
 triangle(645, 311, 615, 375, 682, 375);
 triangle(645, 337, 613, 400, 686, 400);
 triangle(745, 226,769, 287, 720, 287);
 triangle(745, 255,712, 328, 777, 328);
 triangle(745, 298, 704, 368, 786, 368);
 triangle(745, 330, 698, 400, 794, 400);
 
  println(mouseX + " / " + mouseY);
}
