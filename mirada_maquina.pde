//import org.openkinect.freenect.*; //openkinect
import org.openkinect.processing.*; //openkinect
import processing.video.*; //video cámara
import com.hamoid.*;  //export

// Objetos
PWindow win; //Objeto de ventana
Kinect kinect; //Kinect
Capture video; //WebCam1
HVideo h1 = new HVideo(16,0);
HVideo h2 = new HVideo(12,300);

VideoExport videoExport; //Record
// Declaración de variables
boolean recording = false;
int mensajeControlTexto;
int parar = 0;
String fecha; //fecha
String fechaCap; //fecha Captura
String mensajeControl; //Mensaje de control del monitor
float a = 0; // Angle for rotation
float[] depthLookUp = new float[2048]; // We'll use a lookup table so that we don't have to repeat the math over and over
PFont f; //fuente de texto
int posTextY; //Posición de texto en Y
int posTextX; //Posición de texto en X
int velocidad; //Velocidad de texto
int posRot;
color colorControlCaja;
color colorControlCaja2;
color colorControlCaja3;

void setup() {
  win = new PWindow();
  // Texto
  f = createFont("Arial Narrow", 20);   // Create the font
  textFont(f);
  posTextY = 800;  //Posición texto respecto a y
  posTextX = 420;


  // Video Export
  videoExport = new VideoExport(this);
  videoExport.setDebugging(false);
  
  
<<<<<<< HEAD
// Cámaras Web 
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
    } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(i+"--"+cameras[i]);
    }

  video = new Capture(this, cameras[1]);
  video1 = new Capture(this, cameras[1]);
  video.start();
  video1.start();
    }
=======
  reset();
>>>>>>> f194d48cd61bea41312e3aa9bf2b48158ee14fb5
  
  // ========Kinect 3D==================
  
  kinect = new Kinect(this);
  kinect.initDepth();

  // Lookup table for all possible depth values (0 - 2047)
  for (int i = 0; i < depthLookUp.length; i++) {
    depthLookUp[i] = rawDepthToMeters(i);
  }
    
} //Fin setup

void draw() {
  background(0);
  texto();
 
  
  //========= WebCam
if (video.available()) {
     video.read();
    }
    h1.clonar();
    h2.clonar();

<<<<<<< HEAD
  // Configuración de los filtros de video
  video.filter(THRESHOLD);
  video1.filter(GRAY);
  // Posición y configuración del video como imagen
  image(video, 0, 0, 400, 300);
  image(video1, 0, 300, 400, 300);
=======
>>>>>>> f194d48cd61bea41312e3aa9bf2b48158ee14fb5
  
  kinect3D(); //Llamada a función de kinect
  
  // Video Export
    if (recording) {
      videoExport.saveFrame();
    }  
} // Fin de Draw
