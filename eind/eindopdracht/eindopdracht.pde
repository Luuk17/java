import controlP5.*;

ControlP5 cp;

Textfield TF1;

Button knop0;
Button knop1;
Button knop2;
Button knop3;
Button knop4;
Button knop5;
Button knop6;
Button knop7;
Button knop8;
Button knop9;
Button knop10;
Button knop11;
Button knop12;
Button knop13;
Button knop14;
Button knop15;
Button knop16;
Button knopBereken;

void setup() {
  size(700, 800);
  background(250, 0, 0);

  cp = new ControlP5(this);

  TF1 = cp.addTextfield("Textfield1").setText("").setSize(300, 100).setPosition(200, 600).setCaptionLabel("");
  TF1.setAutoClear(false);

  knop0 = cp.addButton("Knop0")
   .setPosition(200, 200)
   .setSize(100, 100)
   .setCaptionLabel("0");
  knop1 = cp.addButton("Knop1")
   .setPosition(300, 200)
   .setSize(100, 100)
   .setCaptionLabel("1");
  knop2 = cp.addButton("Knop2")
   .setPosition(400, 200)
   .setSize(100, 100)
   .setCaptionLabel("2");
  knop3 = cp.addButton("Knop3")
   .setPosition(200, 300)
   .setSize(100, 100)
   .setCaptionLabel("3");
  knop4 = cp.addButton("Knop4")
   .setPosition(300, 300)
   .setSize(100, 100)
   .setCaptionLabel("4");
  knop5 = cp.addButton("Knop5") 
   .setPosition(400, 300)
   .setSize(100, 100)
   .setCaptionLabel("5");
  knop6 = cp.addButton("Knop6")
   .setPosition(200, 400)
   .setSize(100, 100)
   .setCaptionLabel("6");
  knop7 = cp.addButton("Knop7")
   .setPosition(300, 400)
   .setSize(100, 100)
   .setCaptionLabel("7");
  knop8 = cp.addButton("Knop8")
   .setPosition(400, 400)
   .setSize(100, 100)
   .setCaptionLabel("8");
  knop9 = cp.addButton("Knop9")
   .setPosition(300, 500)
   .setSize(100, 100)
   .setCaptionLabel("9");
  knop10 = cp.addButton("Knop10")
   .setPosition(500, 300)
   .setSize(100, 100)
   .setCaptionLabel("+");
  knopBereken = cp.addButton("KnopBereken")
   .setPosition(300, 100)
   .setSize(100, 100)
   .setCaptionLabel("=");
  knop12 = cp.addButton("Knop12")
   .setPosition(100, 300)
   .setSize(100, 100)
   .setCaptionLabel("x");
  knop13 = cp.addButton("Knop13")
   .setPosition(100, 200)
   .setSize(100, 100)
   .setCaptionLabel("-");
  knop14 = cp.addButton("Knop14")
   .setPosition(500, 200)
   .setSize(100, 100)
   .setCaptionLabel("/");
  knop15 = cp.addButton("Knop15")
   .setPosition(400, 500)
   .setSize(100, 100)
   .setCaptionLabel(".");
  knop16 = cp.addButton("Knop16")
   .setPosition(200, 500)
   .setSize(100, 100)
   .setCaptionLabel("C");

}

void draw() {
}

void Knop0() {
  TF1.setText(TF1.getText() + "0");
}

void Knop1() {
  TF1.setText(TF1.getText() + "1");
}

void Knop2() {
  TF1.setText(TF1.getText() + "2");
}

void Knop3() {
  TF1.setText(TF1.getText() + "3");
}

void Knop4() {
  TF1.setText(TF1.getText() + "4");
}

void Knop5() {
  TF1.setText(TF1.getText() + "5");
}

void Knop6() {
  TF1.setText(TF1.getText() + "6");
}

void Knop7() {
  TF1.setText(TF1.getText() + "7");
}

void Knop8() {
  TF1.setText(TF1.getText() + "8");
}

void Knop9() {
  TF1.setText(TF1.getText() + "9");
}

void Knop10() {
  TF1.setText(TF1.getText() + "+");
}

void KnopBereken() {
  String berekening = TF1.getText();
  float result = rekenSom(berekening);
  TF1.setText(String.valueOf(result));
  println("Het antwoord is: " + result);
}

void Knop12() {
  TF1.setText(TF1.getText() + "x");
}

void Knop13() {
  TF1.setText(TF1.getText() + "-");
}

void Knop14() {
  TF1.setText(TF1.getText() + "/");
}

void Knop15() {
  TF1.setText(TF1.getText() + ".");
}

void Knop16() {
  TF1.setText("");
}




float rekenSom(String berekening) {
 

  String[] tekens = berekening.split("[+\\-x/]");
  float result = Float.parseFloat(tekens[0]);
  String[] operators = berekening.split("[0-9]+");
  for (int i = 1; i < tekens.length; i++) {
    if (operators[i].equals("+")) {
      result += Float.parseFloat(tekens[i]);
    } else if (operators[i].equals("-")) {
      result -= Float.parseFloat(tekens[i]);
    } else if (operators[i].equals("x")) {
      result *= Float.parseFloat(tekens[i]);
    } else if (operators[i].equals("/")) {
      result /= Float.parseFloat(tekens[i]);
    }
  }
  return result;
}
