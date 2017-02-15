ArrayList<Pnt> points;
float xMoment = 0;
float yMoment = 0;
float totMass = 0;

void setup(){
  size(640, 400);
  
  points = new ArrayList<Pnt>();
  colorMode(HSB);
  //points.add(new Pnt(new PVector(width/2, height/2)));
}


void draw(){
  background(55);
  translate(width/2, height/2);
  
  
  float x = 0;
  float y = 0;
  beginShape();
  for (int i = points.size()-1; i >= 0; i--){
      Pnt pnt = points.get(i);
      
      vertex(pnt.pos.x, pnt.pos.y);
      pnt.display();
      fill(100,255,255,50);
      xMoment += pnt.getXMoment();
      yMoment += pnt.getYMoment();
      totMass += pnt.mass;
      x = yMoment/totMass;
      y = xMoment/totMass;
  }
  endShape();
  
  if (points.size()-1 >=0){
    noStroke();
    fill(155,255,255,127);
    ellipse(x,y, 20, 20);
    println("Center of Mass: (", x, y ,")");
  }
  xMoment = 0;
  yMoment =0;
  totMass =0;
  
  
  }
  
void mousePressed(){
  points.add(new Pnt(new PVector(mouseX-width/2, mouseY-height/2)));
  
}