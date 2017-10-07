void keyPressed() {
  if (key == 'q') {
    fecha();
    fechaCap = fecha;

    // delay (100); si se activa delay la grabación es a cámara lenta
    recording = true;
    videoExport.setMovieFileName("data/"+ fecha + ".mp4");
    videoExport.startMovie();
    println("Start movie.");
  } else if (key == 'w'){
     saveFrame("data/"+ fechaCap + ".jpg");

  } else if (key == 'e') {
    recording = false;
    videoExport.endMovie();
  }
}