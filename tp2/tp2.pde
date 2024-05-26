// sepúlveda iara, legajo: 120372/5
// tp2 comisión 1

PFont fuente;
PImage fondo, fondo2, fondo3, fondo4; 
String estado, intro;
int segundos, opacidad, py;
int pantalla;
boolean detenerTexto = false;
boolean activo;
boolean mostrarTexto= true;
boolean mostrarSubtitulo = false;
int tiempoEspera =180;
boolean primerEfecto= true;
float xTexto, yTexto;
float velocidadTexto =5;
float xDirector, xSubtitulo;
float y= height;
float velocidadDirector=6, velocidadSubtitulo=8;//velocidad con la q se desplaza 
float botonX, botonY, botonAncho, botonAlto;
void setup(){
  size(640,480);
  fuente= loadFont ("black.vlw");
  textFont(fuente, 60);
  fondo = loadImage("primerafoto.jpg");
  fondo2 = loadImage("segundafoto.jpg");
  fondo3 = loadImage("tercerafoto.jpg");
  fondo4 = loadImage("cuartafoto.jpg");
  yTexto = height;
  xTexto= width/2;
  xDirector = 0;
  xSubtitulo= width/2;
  activo = false;
  estado = "fondo";
  opacidad= 255;
  py= height;

  botonAncho = 200;
  botonAlto = 50;
  botonX = width / 2 - botonAncho / 2;
  botonY = height / 2 - botonAlto / 2;
}
void draw (){

  background(0);
  if(estado.equals("fondo")) {
  image(fondo, 0,0, width, height);
  float x = width / 2;
  stroke(255);
  fill(0); 
  textAlign(CENTER, CENTER);
  text("MI VILLANO\nFAVORITO 2", x + 4, yTexto + 4);
  fill(255,220,0); 
  textAlign(CENTER, CENTER);
  text("MI VILLANO\nFAVORITO 2", x, yTexto);

 
  if (!detenerTexto && yTexto > 210) {
    yTexto -= 5; // el texto va hacia arriba
  } else {
    detenerTexto = true; //tope de texto en el centro superior
  } 
  } if (estado.equals("fondo2")) {
    image (fondo2, 0, 0, width, height);
    stroke(255);
    fill (0); 
    textSize (60);
    textAlign(LEFT);
    text("DIRECTORES", xDirector + 4, yTexto + 4 );
    fill(255,220,0);
    textAlign(LEFT);
    text("DIRECTORES", xDirector, yTexto);
    
    if (xDirector >= width / 2 && !mostrarSubtitulo) {
      mostrarSubtitulo =true;
    }
    if (mostrarSubtitulo){
    textAlign(LEFT);
    textSize(40);
    fill(0);
    text("Pierre Coffin y Chris Renaud", xSubtitulo, height/2+3);
    fill (0,0,200);
    text("Pierre Coffin y Chris Renaud", xSubtitulo, height/2);
    
    xSubtitulo -= velocidadSubtitulo; 
    }
    xDirector += velocidadDirector;
   
   
  } if (estado.equals("fondo3")){
    image(fondo3, 0, 0, width, height); // imagen 3
    float x= width/2;
    textAlign(CENTER, CENTER);
    textSize(40);
    
    if(primerEfecto){
      fill(255, 255 - opacidad);
    } else {
      fill(255); //se ve texto
    }
    textSize(40);
    String texto= ("Estreno: 4 de Agosto de 2013\nDuración: 1h 38m\nPremiada por ser\nLa Mejor Pelicula Animada\n en 2014");
    
    float y =height/2;
    text(texto, x, y);
    
    if (primerEfecto) {
      opacidad -=5;
      opacidad= max(0, opacidad);
      if (opacidad== 0){
        primerEfecto= false;
      }
    }
 
      
  } else if (estado.equals ("fondo4")){
   image(fondo4, 0, 0, width, height); //imagen 4
   
   stroke(255);
   float x= width/2;
   
   if (mostrarTexto) {
   stroke(255);
   fill(0);
   textSize(40);
   textAlign(CENTER, CENTER);
   text("PERSONAJES PRINCIPALES", xTexto + 4, yTexto + 4); // Texto sombra
   fill(255, 220, 0);
   text("PERSONAJES PRINCIPALES", xTexto, yTexto);
      
   // Desplazamiento del texto hacia arriba
   yTexto -= velocidadTexto;
   if (yTexto < height / 2) {
     yTexto = height / 2; // Limitar la posición
      }
      // Contador de tiempo para mostrar el texto
    if (frameCount % 60 == 0) {
      tiempoEspera--;
      }
      
    if (tiempoEspera <= 0) {
        mostrarTexto = false;
      }
    } else {
   textSize(25);
   fill(0);
   text("Felonious Gru, Lucy Wilde, El Macho,\nMargo, Agnes, Edith,\nAntonio, Dr Nefario, Silas Ramsbottom, Floyd\n,Stuart the minion, Kevin the minion, Bob the minion", x, yTexto);
    }
  } else if (estado.equals("fin")){
   image (fondo4, 0, 0, width, height);
  }
    
  

   
   
   if (frameCount%60 == 0){
     segundos++;
   }
   if (segundos<2) {
     estado = "fondo";
   } else if (segundos>=2 && segundos <=4) {
     estado = "fondo2";
    
   } else if (segundos > 4 && segundos <=9) {
     estado = "fondo3";

   } else if (segundos > 9 && segundos <=12){
     estado = "fondo4"; 
      } else {
    estado = "fin";
  }
 
 // botón de reinicio
  fill(255);
  rect(botonX, botonY, botonAncho, botonAlto);
  textAlign(CENTER, CENTER);
  text("Reiniciar", botonX + botonAncho / 2, botonY + botonAlto / 2);
}

void mouseClicked() {
  // Verificar si se ha hecho clic en el botón de reinicio
  if (estado.equals("fin") && mouseX >= botonX && mouseX <= botonX + botonAncho &&
      mouseY >= botonY && mouseY <= botonY + botonAlto) {
    reiniciarJuego(); // Llamar a la función para reiniciar el juego
  }
}

void reiniciarJuego() {
  segundos = 0;
  estado = "fondo";
  detenerTexto = false;
  mostrarTexto = true;
  mostrarSubtitulo = false;
  tiempoEspera = 180;
  primerEfecto = true;
  yTexto = height;
  xTexto = width/2;
  xDirector = 0;
  xSubtitulo = width/2;
}
