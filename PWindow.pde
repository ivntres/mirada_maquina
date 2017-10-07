class PWindow extends PApplet {
  PWindow() {
    super();
    PApplet.runSketch(new String[] {this.getClass().getSimpleName()}, this);
  }

  void settings() {
    size(150, 800);
  }

  void setup() {
    background(0);
  }

  void draw() {
  }

  void mousePressed() {
    println("mousePressed in thirty window");
  }
}