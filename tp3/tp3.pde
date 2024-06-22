// sepúlveda iara, legajo: 120372/5
// tp3 comisión 1
// https://youtu.be/e2Thz5sdzKA

PImage fondo;
int numCuadradosInicial = 11; // cantidad inicial de cuadrados
int numCuadrados = numCuadradosInicial;
int tam;
float diagonal;
float opa = 255;

void setup() {
  size(800, 400);
  fondo = loadImage("obra.JPEG");
  tam = width / (numCuadrados + 10);
  diagonal = dist(0, 0, width, height);
}

void draw() {
  background(0);
  image(fondo, 0, 0, 400, 400);

  translate(400, 0); // desplaza el for al lado derecho
  for (int x = 0; x < numCuadrados; x++) {
    for (int y = 0; y < numCuadrados; y++) {
      int colorCu;
      int colorCir;


      float distancia = calcularDistancia(mouseX - 400, mouseY, x * tam + tam/2, y * tam + tam/2);


      int opa = int(map(distancia, 0, diagonal / 2, 255, 0));


      if ((x + y) % 2 == 0) {
        colorCu = color(0, opa); // color cuadrado con opacidad
        colorCir = color(255);
      } else {
        colorCu = color(255, opa); // color cuadrado con opacidad
        colorCir = color(0);
      }


      if (x == 5 && y >= 6 && y <= 10) { // cuadrados 7, 8, 9, 10 y 11 de la columna 6
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, true, true, false, false);
      } else if (y == 5 && x >=6 && x <=10) { // cuadrados 7, 8, 9, 10 y 11 de la fila 6
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, true, false, true, false);
      } else if (y == 0 && x >=6 && x <=10) { // cuadrados 7, 8, 9, 10 y 11 de la fila 1
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, true, false, false, true);
      } else if (y >= 6 && y <= 10 && x >= 0 && x <= 5) { // PARTE INFERIOR IZQUIERDA CUAD ENTERO 1/4
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, true, false, false, true);
      } else if (x >= 6 && y >= 1 && y <= 5) { // PARTE SUPERIOR DERECHA CUAD ENTERO 1/4
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, true, false, false, true);
      } else if (x == 0 && y >= 6 && y <=10) { // cuadrados 7, 8, 9, 10 y 11 de la columna 1
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, false, false, false, true);
      } else if (x == 10 && y >= 0 && y <=5) { // cuadrados 1, 2, 3, 4, 5 de la columna 11
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, true, false, false, false);
      } else if (x == 5 && y == 5) { // sexto cuadrado de la sexta fila
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, false, false, false, false);
      } else if (x == 5) { // sexta columna
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, false, false, true, true);
      } else if (y == 5) { // sexta fila
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, false, true, false, true);
      } else {
        dibujarCuadradoConCirculos(x * tam, y * tam, tam, colorCu, colorCir, false, true, true, false);
      }
    }
  }
}

void keyPressed() {
  if (key == 'a') {
    numCuadrados++; // aumentaa la cantidad de cuadrados
    numCuadrados = constrain(numCuadrados, 1, 400);
    tam = width / (numCuadrados + 10); // ajusta el tamaño de los cuadrados
  }
}
void mousePressed() {
  // restaurar valores iniciales
  numCuadrados = numCuadradosInicial;
  tam = width / (numCuadrados + 10);
}
