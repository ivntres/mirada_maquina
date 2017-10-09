class PWindow extends PApplet {
  PWindow() {
    super();
    PApplet.runSketch(new String[] {this.getClass().getSimpleName()}, this);
  }

  void settings() {
    size(100, 300);
 
  }

  void setup() {
    background(0);
    colorControlCaja = 255;
    colorControlCaja2 = 255;
    mensajeControl = "Preparado";
    colorControlCaja3 = color(0, 255, 0);
  }

  void draw() {
    text("Monitor", 10, 20);
    text("de Control", 10, 35);
    text("========", 10, 45);
    fill(colorControlCaja);
    rect(10, 55, 40, 20); // Grabación
    text("Grabando", 10, 90);
    fill(colorControlCaja2);
    rect(10, 110, 40, 20);
    text("Screenshot", 10, 145);
    fill(colorControlCaja3);
    rect(10, 160, 40, 20);
    text("Detenido", 10, 195);


  }
  
  
  void mousePressed() {
    println("mousePressed in thirty window");
  }
}