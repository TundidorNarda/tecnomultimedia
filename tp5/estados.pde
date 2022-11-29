class Estado {
  int estadoN;
  int estadoNM;
  Estado(int estadoN) {
    this.estadoN = estadoN;
    this.estadoNM = 4;
  }
  void sumarEstado() {
    if (this.estadoN <1) {
      this.estadoN++;
    }
  }
}
