//Clara Rovarino
PFont fuente; 
int movimientofuente = -100;
PImage fondo1, fondo2, fondo3, fondo4, fondo5;
int estado = 0;
void setup() {
  size(700, 500);
  fondo1 = loadImage("Fondouno.PNG"); // Carga el archivo
  fondo2 = loadImage("Fondodos.PNG");
  fondo3 = loadImage ("Fondo3.PNG");
  fondo4 = loadImage ("Fondo4.PNG");
  fondo5 = loadImage ("Fondofinal.PNG");
  fuente = loadFont("Serif.bold-48.vlw");

  fondo1.resize(700, 500);  // Resolucion que quiero tener
  fondo2.resize(700, 500);  // Resolucion que quiero tener
  fondo3.resize(700, 500);  // Resolucion que quiero tener
  fondo4.resize(700, 500);  // Resolucion que quiero tener
  fondo5.resize(700, 500);  // Resolucion que quiero tener

  textFont(fuente, 52); 
  frameRate(60);
}
void draw() {
  surface.setTitle("FPS: "+frameRate);
  // println(frameCount);
  if (estado == 0) {
    movimientofuente+=2;  
    image(fondo1, 0, 0, width, height);
    text("Winnie The Pooh", 150, movimientofuente);
    if (movimientofuente > height + 300) {
      estado = 1;
      movimientofuente = -100;
    }
  } else if (estado == 1) {
    movimientofuente+=3;
    image(fondo2, 0, 0, width, height);
    textSize(40);
    text("Protagonizado por: Winnie Pooh", 50, movimientofuente);
    text( "Tigger", 100, 300);
    text("Piglet", 100, 400);
    if (movimientofuente > 500) {
      estado = 2;
      movimientofuente = -100;
    }
  } else if  (estado == 2) {
    image(fondo3, 0, 0, width, height); 
    text("Conejo", 100, 100);
    text("Piglet", 100, 400);
    text("Igor", 200, 350);
    movimientofuente++;
    if (movimientofuente > 500) {
      movimientofuente = -100;
      estado = 0;
    }
  }
  println("height: ", height);
  println("frameCount: ", frameCount);
  println("movimientofuente: ", movimientofuente);
}

void mouseClicked() {
  movimientofuente = -100;
  estado = 0;
}
