void setup() {
  size(400,400);
  rectMode(CENTER);
}

float tt= 0;

void draw() {
  background(200);
  stroke(255,50);
  fill(200,80,80,10); //one numerical value means grayscale,two numerical value means grayscale 
  //and transparency, three numbers means rgb, four numbers mean rgb and transparency 
  
  translate(width/2, height/2); //without translating a different position on the graph is produced.
  println(tt);
  //tt = (tt + 1) % 50;
  //translate(width/2, height/2); //adding another translates alter's position on graph paper 
  //rotate(PI/2);
  //rotates graph paper, so rotates all rectangles by numerical value inputted
  // PI can be inputted as a numerical value, divided by 4 gives you a diagonal shape produced with the rectangle
  //rotate(radians(90));
  //SIMPLIFIED BY INPUTTING RADIANS
  //translate(width/2, height/2);
  //println(tt)
  // translating after rotating produced a different position on the graph paper
  tt = (tt + 1) % 1000;
  for (int i = 0; 
    i < 142; // can be changed to 359 highest value that can be attained to produce a full circle
    i= i + 1) {
    rotate(radians(5)); //can change the radians to produce different shapes depending on the range given
    translate(tt / 100, tt/ 300);
    ellipse(0,0,300,200);
    //triangle(30,75,58,20,86,75);
    //rect(0,0,200,50);
  }
  //rect( 10, 10,200,50); //replicates rectangles on the page
  //rect(- 10,- 10,200,50);
  //rect(20,20,200,50);
  //rect(-20,-20,200,50);
}
