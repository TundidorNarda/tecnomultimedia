class Letras {
  int lx, ly;
  int tam;
  PFont fuente1;
  PFont fuente2;
  PFont fuente3;
  PImage perdiste;
  PImage hadas;
  String [] LETRAS = {"HADA ASESINA \n DE OGROS", 
    "Salva a al pueblo de los ogros \n Para esto debes tocarlos con el mouse\n antes que estos te pasen \n Apreta una tecla para empezar", "Haz terminado \ncon los Ogros \n Felicitaciones", "Los Ogros \n han ganado"};

  Letras(int lx, int ly, int tam) {
    this.lx=lx;
    this.ly=ly;
    this.tam=tam;
    fuente1 = loadFont("fuente5.vlw");
    fuente2 = loadFont("fuente3.vlw");
    fuente3 = loadFont("fuente4.vlw");
    perdiste = loadImage("Ogros-1.png");
    hadas = loadImage("haditas.png");
  }
  void escribir() {
    background(255, 192, 203);
    fill(255, 255, 0);
    ellipse(random(10, 600), random(10, 600), 10, 10);
    textAlign(CENTER);
    fill(0);
    textFont(fuente2);
    textSize(70);
    text(LETRAS[0], width/2, height/4);
    textFont(fuente1);
    textSize(tam);
    text(LETRAS[1], lx, ly);
  }
  void ganaste() {
    background(255, 227, 232);
    textAlign(CENTER);
    fill(0);
    image(hadas, 10, 10, 580, 600);
    textFont(fuente1);
    textSize(80);
    text(LETRAS[2], width/2, height/3);
    textFont(fuente3);
    textSize(30);
    text( "Gracias por juegar", width/2, 450);
    textSize(15);
    text( "Juego creado por Narda Tundidor\n apreta el boton para reiniciar ", width/2, 480);
  }
  void perdiste() {
    background(0);
    textAlign(CENTER);
    fill(255);
    textFont(fuente1);
    textSize(80);
    image(perdiste, width/4, height/3, 300, 300);
    text(LETRAS[3], width/2, height/4);
    textFont(fuente3);
    textSize(20);
    text( "Gracias por juegar, luser ", width/2, 500);
    textSize(10);
    text( "Juego creado por Narda Tundidor\n apreta el boton para intentar otra vez ;) ", width/2, 520);
  }

  void boton() {
    fill(200);
    ellipse(width - 50, height - 50, 70, 80);
    fill(150, 0, 0);
    ellipse(width - 50, height - 50, 50, 80);
    fill(200);
    textSize(50);
    text("R", width - 50, height - 40);
  }
}
