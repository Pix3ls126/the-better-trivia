float radius = 160;
PImage img;
PShape globe;
int screen = 0;

void settings() {
  size(600, 600, P3D);
  img = loadImage("earth.jpg");
}

void setup() {
  colorMode(HSB, 100);
}

void draw() {
  background(100);
  //the following makes the 4 squares for answers
  
  //Blue square 
  if(mousePressed && mouseX >= 0 && mouseX<=300 && mouseY>=400 && mouseY<=500) {
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("Answer incorrect. Please try again.", 300, 395); 
  }
  else fill(#00F9FF);
  rect(0, 400, 300, 100);

  
  //Red Square
  fill(#FF0004);
  rect(0, 500, 300, 100);

  //Green Square
  fill(#03FF00);
  rect(300, 400, 300, 100);

  //Pink Square
  fill(#E500FF);
  rect(300, 500, 300, 100);

  fill(0);
  textSize(16);
  textAlign(CENTER);
  text("What is the approximate volume of this Globe with a radius of 3cm?", 300, 20); //the question that is asked

  //the 4 possible answers
  textSize(20);
  text("A: 153.8 cm³", 90, 470);
  text("B: 105.1 cm³", 90, 570);
  text("C: 113.1 cm³", 390, 470);
  text("D: 115.73 cm³", 390, 570);

  //sphere code
  lights();
  fill(100);
  translate(width/2, 220);

  if (mousePressed == false) {
  } else if (mouseY<= 400) {
    rotateY(mouseX*0.05);
    rotateX(mouseY*0.05);
  }
  noStroke();
  noFill();
  globe = createShape(SPHERE, radius);
  globe.setTexture(img);

  shape(globe);
  //sphere(radius);
  stroke(1);
  fill(0, 0, 0, 100);
}
