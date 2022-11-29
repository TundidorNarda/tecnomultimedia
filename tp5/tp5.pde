//Tundidor Narda 91517/7
//mi idea es hacer un juego utilizando el tp4. La idea es que el hada que al tocar los ogros estos se convierten en hombres. si no los toca pierde
//https://youtu.be/Y3jSCfxWgM8
import ddf.minim.*;

Escenario es;
Minim minim;
AudioSample golpe;
AudioSample inicio;




void setup() {
  size(600, 600);
  es = new Escenario();
  minim= new Minim(this);
  golpe = minim.loadSample("mario-bros-hammer-throw.mp3", 506);
  inicio = minim.loadSample("kirby-victory.mp3", 300);
}

void draw() {
  background(0);
  es.display();
}

void keyPressed() {
  es.keyPressed();
}
void mousePressed() {
  es.matarOgros(mouseX, mouseY);
}
