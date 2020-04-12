ArrayList<Circle> circles = new ArrayList<Circle>();
int n = 10;
float spawnProb = 0.01;
float speed = 1;//expansion speed
int iter = 1000;
float basehue = 250;

void setup(){
  //size(500, 500);
  fullScreen();
  colorMode(HSB, 360, 100, 100);
  noStroke();
  //for(int i = 0; i < n; i++){
  //  circles.add(new Circle(speed));    
  //}
}

void mousePressed(){
  n = int(pow(float(mouseX) / width * 10, 2))+1;
  spawnProb = pow(float(mouseY) / height, 2);
  circles = new ArrayList<Circle>();
}

void draw(){
  background(360);
  for(int i = 0; i < iter; i++){
    //if(random(1) < 1){
    //  PVector pos = new PVector(random(width), random(height));
    //  if(!circlesContains(pos)){
    //    circles.add(new Circle(pos, speed));
    //  }
    //}
    if(random(1) < spawnProb){
      for(int j = 0; j < n; j++){
        PVector pos = new PVector(random(width), random(height));
        if(!circlesContains(pos)){
          circles.add(new Circle(pos, speed));
        }
      }
    }
    for(Circle circle : circles){
      circle.expansion();
    }
  }
  for(Circle circle : circles){
    circle.show();
  }
}