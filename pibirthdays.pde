String[] pilines;
String pidigits;
long numdigits;
String bday;
String inputstring = "";
String us [];
String uk [];

void setup() {
  size(200, 200);
  noLoop();
  pilines = loadStrings("pi-tenmillion.txt");
  pidigits = pilines[0];
  MyPI.setPI(pidigits);
  numdigits = pidigits.length();
  println(pidigits.substring(0, 10));
}

void draw() {
}

void keyPressed() {
}

void keyTyped() {
  inputstring += key;
  println(inputstring);
}

void keyReleased() {
  if (key == '#') {
    inputstring = inputstring.replace("#", "");
    println("final " + inputstring);
    findPI(inputstring);
  }
}


void findPI(String bday) {
  us = MyPI.getSubs(bday);
  String bday_uk = bday.substring(3, 5) + "/" + bday.substring(0, 2) + "/" + bday.substring(6);
  uk = MyPI.getSubs(bday_uk);
  for (int i = 0; i < us.length; i++) {
    MyPI.findinPI(us[i]);
  }
  for (int i = 0; i < uk.length; i++) {
    MyPI.findinPI(uk[i]);
  }
}
