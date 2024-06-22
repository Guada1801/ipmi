//Enlace a video
//https://youtu.be/NESx4B8TjLI

int cant = 4;
int tam;
float rotar;
int inicial;
boolean mouseEnLaObra;

PImage imagOpArt;

void setup() {
  size(800, 400);
  tam = width/2/cant;
  inicial = 0;

  imagOpArt = loadImage("imagOpArt.jpg");
  image(imagOpArt, 0, 0, 400, 400);
}
void draw() {
  println(mouseEnLaObra());

  //Cuadrados
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {

      dibujarCuadrados(i, j);

      //Rombos
      for (int x=0; x<cant; x++) {
        for (int y=0; y<cant; y++) {

          dibujarRombos(x, y);
        }
      }
    }
  }
}

//Cambiar color
void mousePressed() {
  if (inicial==0) {
    inicial=1;
  } else {
    inicial=0;
  }
}

//Reiniciar
void keyPressed() {
  if (key== 'R') {
  } else if (inicial==1) {
    inicial=0;
  }
}
