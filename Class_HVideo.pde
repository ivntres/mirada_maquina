class HVideo {
  int filtro;
  float posicion;

  HVideo (int f, float p){
    filtro = f;
    posicion = p;
    }
  void clonar() {
   
    //video.read(); 

       
    image(video, 0, posicion, 400, 300);
   filter(filtro);
  
  }
}