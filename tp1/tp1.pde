// Sepúlveda Iara
// tp1 Comisión 1

PImage fondo;
 void setup() {
   size(800,400);
   fondo = loadImage("ardilla.jpg");
 }
 
 void draw() {
   background(100);
   image(fondo, 0,0,400,400);
   
   println("X:");
   println(mouseX);
   println("Y:");
   println(mouseY);
   
   noStroke();
   fill(128,64,0);
   ellipse(509,209,160,250); //parte de la cola grande
   stroke(0); 
   fill(140,80,0);
   noStroke();
   ellipse(524,231,130,200); //cuerpo
   triangle(528,87,643,30,670,77); //parte de la cola de arriba-superior
   circle(652,58,65); //parte superior de la cola
   noStroke();
   fill(227,180,131);
   ellipse(580,282,70,100); //panza parte blanca
   
   stroke(0);
   fill(199,106,8);
   noStroke();
   ellipse(560,271,95,130); //parte inferior
   circle(600,201,80); //bracito
   ellipse(661,154,15,35); // nariz 
   fill(227,180,131);
   ellipse(650,164,13,28); //boca
   fill(140,80,0);
   circle(624,135,90);//cabeza
   fill(227,180,131);
   ellipse(645,220,45,20); //mano detras
   ellipse(635,213,50,25);//manito delantera
   
   fill(0);
   stroke(0);
   line(659,213,650,213);
   line(651,221,645,219);
   line(665,222,657,220);
   line(657,227,652,223);
 
   noStroke();
   fill(227,180,131);
   triangle(653,147,642,140,647,125); //parte punteaguda del ojo marrron igual que q parte de afuera
   ellipse(643,134,20,25); //ojo parte de afuer marron
   stroke(0);
   fill(0);
   ellipse(643,136,10,14); //ojo parte de adentro negra
   
   noStroke();
   fill(128,64,0);
   triangle(665,75,528,87,574,171); //parte de la cola de abajo-superior
   
   stroke(0);
   fill(255);
  
   //tronco
   noStroke();
   fill(127,113,0);
   ellipse(650,375,270,30); //parte inferior del tronco
   triangle(537,362,510,399,450,399); //principio del tronco

   fill(29,41,40);
   triangle(622,356,580,345,622,313); //donde se posa la ardilla
   fill(56,72,48);
   rect(520,340,230,30);
   triangle(792,379,750,343,730,365); //final del tronco
   triangle(447,399,518,339,539,365); //principio del tronco
   
   stroke(0);
   strokeWeight(2);
   line(450,396,524,365);
   line(524,365,598,355);
   line(598,355,664,358);
   line(664,358,745,340);
   line(745,340,754,358);
   line(754,358,785,375);
   
   fill(46,51,43);
   circle(500,365,7);
   circle(745,345,6);
   fill(255);
   ellipse(523,360,10,5);

   //patita
   fill(199,106,8);
   noStroke();
   ellipse(554,334,50,20); //talon
   triangle(599,329,577,335,585,343); // dedo
   fill(0);
   triangle(599,329,592,332,593,335); //uña negra
   fill(199,106,8);
   triangle(596,345,575,333,573,345); //dedo del medio
   fill(0);
   triangle(596,345,587,341,587,345); //uña negra  
   fill(199,106,8);
   triangle(580,354,571,339,555,343);//tercer dedo
   fill(0);
   triangle(580,354,570,349,576,346);//uña negra
  
   //orejas
   strokeWeight(1);
   stroke(47,9,9);
   fill(108,55,10);
   triangle(634,73,622,110,640,110);//oreja uno
   triangle(648,73,637,110,647,110);//oreja dos
 
   ellipse(633,107,21,27);
   noStroke();
   fill(87,46,3);
   ellipse(634,108,10,18);
 }
   
