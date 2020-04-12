class Circle{
  PVector pos;
  float r;
  float speed;
  color col;
  boolean finished;
  
  Circle(PVector pos, float speed){
    this.pos = pos;
    this.speed = speed;
    this.col = color(basehue, random(100), 100);
  }
  
  void expansion(){
    if(!finished){
      float nr = r + speed;
      for(Circle circle : circles){
        if(circle != this && pos.dist(circle.pos) < (nr + circle.r)){//check collision
          finished = true;
          return;
        }
      }
      r = nr;
    }
  }
  
  void show(){
    fill(col);
    ellipse(pos.x, pos.y, r*2, r*2);
  }
}