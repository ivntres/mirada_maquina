void keyPressed() {
  if (key == 'q') {
    fecha();
    fechaCap = fecha;

    // delay (100); si se activa delay la grabación es a cámara lenta
    recording = true;
    videoExport.setMovieFileName("data/"+ fecha + ".mp4");
    videoExport.startMovie();
    colorControlCaja = color(255, 0, 0);
    colorControlCaja3 = color(255, 255, 255);

    println("Start movie.");

  } else if (key == 'w'){
     saveFrame("data/"+ fechaCap + ".jpg");
     println("screenshot");
     colorControlCaja2 = color(255, 255, 0); 
     colorControlCaja3 = color(255, 255, 255);
  } else if (key == 'e') {
    recording = false;
    videoExport.endMovie();
    colorControlCaja = color(255, 255, 255);
    colorControlCaja2 = color(255, 255, 255);
    colorControlCaja3 = color(0, 255, 0);

  }
}