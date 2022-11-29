class Bosque {
  PImage bosque;
  int bx;

  Bosque () {
    bx = width;
    bosque = loadImage("bosque.jpg");
  }
  void dibujarBosque() {
    image(bosque, bx, 0, 1200, 600);
    image(bosque, bx+1200, 0, 1200, 600);
    mover();
  }
  void mover() {
    bx = bx<0 ? bx : -width;
    bx  +=2;
  }
}
