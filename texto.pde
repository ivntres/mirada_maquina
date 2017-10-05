


void texto() {
  velocidad = velocidad-1;
  manifesto(velocidad);
}


void manifesto(int posY){
  String[] lines = loadStrings("text/text1.txt");
 // println("there are " + lines.length + " lines");

  for (int ia = 0 ; ia < lines.length; ia++) {
    posRot= posY+(40+ia*20);
    // text(lines[ia], posTextX, posRot);
     if (posRot<400){
     //text(".", posTextX, posRot);
     } else {
     text(lines[ia], posTextX, posRot);
     }
   }
}