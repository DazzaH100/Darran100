/**
 * Edge Filter
 * 
 * Apply a custom shader to the filter() function to affect the geometry drawn to the screen.
 * 
 * Press the mouse to turn the filter on and off.
 */
PShape s;
 PShader edges;
boolean applyFilter = true;

void setup() {
  size(720, 560, P3D);
  edges = loadShader("edges.glsl");
  noStroke(); 
// Make a shape
  s = createShape();
  s.beginShape();
  s.fill(0);
  s.stroke(255);
  s.strokeWeight(2);
  // Exterior part of shape
  s.vertex(-100,-100);
  s.vertex(100,-100);
  s.vertex(100,100);
  s.vertex(-100,100);
  
  // Interior part of shape
  s.beginContour();
  s.vertex(-10,-10);
  s.vertex(-10,10);
  s.vertex(10,10);
  s.vertex(10,-10);
  s.endContour();
  
  // Finishing off shape
  s.endShape(CLOSE);
  //rectMode(CENTER);
}

//float tt = 0;

void draw() {
  background(0);
  lights();
  
  translate(width/2, height/2);  
  pushMatrix();
  rotateX(frameCount * 0.01);  
  rotateY(frameCount * 0.01);
  box(120);
  popMatrix();
  
   translate(2, 2);
  // Shapes can be rotated
  s.rotate(0.01);
  shape(s);
  
 //tt = (tt + 1) % 1000;
 //for (int i = 0; 
    //i < 280; // can be changed to 359 highest value that can be attained to produce a full circle
    //i= i + 1) {
    rotate(radians(25)); //can change the radians to produce different shapes depending on the range given
    //translate(tt / 100, tt/ 300);
   
  // The sphere doesn't have the edge detection applied 
  // on it because it is drawn after filter() is called.
  rotateY(frameCount * 0.02);
  translate(150, 0);
  sphere(40);
  if (applyFilter == true) {
    filter(edges);
  }
  
}

void mousePressed() {
  applyFilter = !applyFilter;
}