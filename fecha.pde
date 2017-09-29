void fecha() {
  background(204);
  int d = day();    // Values from 1 - 31
  int m = month();  // Values from 1 - 12
  int y = year(); 
  int s = second();  // Values from 0 - 59
  int min = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  fecha = y + m+d+h+min+s;
  //println(fecha);
}