  
PImage img;

void setup() {
  size(300, 300, P3D);
  img = loadImage("505773.jpg");
  textureMode(NORMAL);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  //rotate(map(mouseX, 0, width, -PI, PI));
  rotateX(frameCount / 100.0);
  rotateY(frameCount / 200.0);
  if (mousePressed) {
    textureWrap(REPEAT); 
  } else {
    textureWrap(CLAMP);
  }
  beginShape();
  texture(img);
  vertex(-100, -100, 0, 0);
  vertex(100, -100, 2, 0);
  vertex(100, 100, 2, 2);
  vertex(-100, 100, 0, 2);
  endShape();
}