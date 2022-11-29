class Hada {
  PImage hada;

  Hada() {;
    hada = loadImage("hada.png");
  }
 
  void dibujarHada() {
    image(hada, mouseX, mouseY, 80, 120);
  }
}
