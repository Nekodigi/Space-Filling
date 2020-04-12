boolean circlesContains(PVector pos){
  for(Circle circle : circles){
    if(circle.pos.dist(pos) < circle.r){//check collision
      return true;
    }
  }
  return false;
}