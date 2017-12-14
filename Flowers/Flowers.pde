int angle = 0;
PShape snow;
int i;

void setup() {
  size(640, 360);
  background(185,150,155);
  noStroke();
  fill(0, 216);
  
  snow = createShape();  
  snow.beginShape(); 
  snow.translate(-50, -40);         //positioning of shape
  snow. fill (156,70,0);           //snowflake fill
  snow.stroke(10);                  //snowflake outline
  //snow.noStroke(); 
  
  snow.vertex(22, 50); //lower point 
  snow.vertex(50, 42); //begin left side 
  snow.vertex(50, 12); 
  snow.vertex(40, 7);
  snow.vertex(44, 10); 
  snow.vertex(44, 20); 
  snow.vertex(30, 23);
  snow.vertex(50, 42); //end right side
  snow.endShape(CLOSE);
}

void draw() {
   //Draw only when mouse is pressed 
//mouse press from https://processing.org/examples/pulses.html
  //void mouseClicked () {
    if (mousePressed == true) {
      //angle += 10;   
      float val = cos(radians(angle)) * 12.0;
    for (int a = 0; a < 360; a += 75) {
      float xoff = cos(radians(a)) * val;
      float yoff = sin(radians(a)) * val;

//translate(width/6, height/6);
translate(190, 110);
   shape(snow);
   point (0,0);
   snow.rotate(radians(50));     //times snow flake shape is rotated
   i++;  
  } 
    }
  }