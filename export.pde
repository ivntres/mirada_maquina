void keyPressed() {
  if (key == 'q') {
    fecha();
    recording = true;
    videoExport.setMovieFileName("data/"+ fecha + ".mp4");
    videoExport.startMovie();
    println("Start movie.");
  } else if (key == 'w') {
    recording = false;
    videoExport.endMovie();

  } else if (key == ESC){
    parar = 0;
  }
}