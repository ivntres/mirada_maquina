void reset(){
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
    video.start();
    }
}