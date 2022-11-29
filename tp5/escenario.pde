class Escenario {

  Bosque bosque;
  Hada h;
  Estado e;
  Letras l;
  Ogro[] ogros;
  int vidas;
  int puntos;
  int N=20;

  Escenario() {
    bosque = new Bosque ();
    h= new Hada();
    e = new Estado(0);
    vidas=3;
    puntos=0;
    l= new Letras(width/2, 350, 35);
    ogros = new Ogro[N];
    for (int i=0; i<N; i++) {
      ogros[i] = new Ogro(height/2+(int)random(height/2), -(int)random(width*2)+width/2);
    }
  }
  void display() {
    if (e.estadoN ==0) {
      l.escribir();
    }
    if (e.estadoN==1) {
      bosque.dibujarBosque();
      h.dibujarHada();
      for (int i=0; i<N; i++) {
        if (ogros[i].activo) {
          ogros[i].mover();
          ogros[i].dibujarOgro();
          if (ogros[i].ax>width) {
            vidas--;
            ogros[i].activo=false;
            if (vidas==0) {
              e.estadoN=3;
            }
          }
        }
      }
    }

    if (e.estadoN ==2) {
      l.ganaste();
      l.boton();
    }
    if (puntos >= 15) {
      e.estadoN = 2;
    }
    if (e.estadoN ==3) {
      l.perdiste();
      l.boton();
    }
  }

  void keyPressed() {
    e.sumarEstado();
    if (e.estadoN == 1) {
      inicio.trigger();
    }
  }
  void matarOgros(int mx, int my) {
    for (int i=0; i<N; i++) {
      if (ogros[i].activo) {
        float distancia = dist (mx, my, (ogros[i].ax)+50, (ogros[i].ay)+50);
        if (distancia<150/2) {
          puntos ++;
          ogros[i].activo = false;
          golpe.trigger();
        }
      }
    }

    if ((e.estadoN >= 2) && (dist(mouseX, mouseY, width - 50, height - 50) < 50)) {
      setup();
    }
  }
}
