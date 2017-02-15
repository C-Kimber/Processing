class Pnt{
   PVector pos;
   float mass;

  Pnt(PVector origin){
    pos = origin.copy();
    mass = int(random(1,10));
    
  }
  
  void display(){
    float lvl = map(mass, 1,10,255,55);
    
    for(int i = 50; i >= 0; i -= 5){
    fill(255,255,lvl-i*2,172);
    ellipse(pos.x, pos.y, lvl*i*.003,lvl*i*.003);
    }
  }
  
  float getXMoment(){
    return pos.y * mass;
  }
  
  float getYMoment(){
    return pos.x * mass;
  }













}