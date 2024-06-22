// Función para calcular la distancia entre dos puntos
float calcularDistancia(float x1, float y1, float x2, float y2) {
  float distancia = dist(x1, y1, x2, y2);
  return distancia;
}


// Función para dibujar un cuadrado con círculos
void dibujarCuadradoConCirculos(float x, float y, float tam, int colorCu, int colorCir, boolean arribaIzq, boolean arribaD, boolean abajoIzq, boolean abajoD) {
  fill(colorCu);
  rect(x, y, tam, tam);

  fill(colorCir);
  float offset = tam * 0.2;
  float diametro = tam * 0.28;

  if (arribaIzq) {
    ellipse(x + offset, y + offset, diametro, diametro);
  }
  if (arribaD) {
    ellipse(x + tam - offset, y + offset, diametro, diametro);
  }
  if (abajoIzq) {
    ellipse(x + offset, y + tam - offset, diametro, diametro);
  }
  if (abajoD) {
    ellipse(x + tam - offset, y + tam - offset, diametro, diametro);
  }
}
