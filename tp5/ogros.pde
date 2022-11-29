class Ogro {
  int ax, ay;
  boolean activo;
  PImage ogro ;
  Ogro(int py, int px) {
    ay = py;
    ax=px;
    ogro =loadImage("o.png");
    activo=true;
  }
  void dibujarOgro() {
    image(ogro, ax, ay, 100, 100);
  }
  void mover() {
    ax  +=5;
  }
}
