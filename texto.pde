


void texto() {
  velocidad = velocidad-1;
  manifesto(velocidad);
}


void manifesto(int posY){
  String[] lines = loadStrings("text/text1.txt");
 // println("there are " + lines.length + " lines");

  for (int ia = 0 ; ia < lines.length; ia++) {
     text(lines[ia], posTextX, posY+(40+ia*20));
   }
}