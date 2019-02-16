class Catcher {
  float r;   // radius
  float x;   // location
  float y;
 
  
  
  Catcher(float tempR){
     r = tempR;
     x = 0;
     y = 0;
  }
  
  void setLocation(float tempX, float tempY){
    x = tempX;
    y = tempY;
  }
  
  void display(){
    stroke(0);
    fill(175);
    ellipse(x,y,r*2,r*2);
  }
  
  // a function that returns true or false
  boolean intersect(Drop b) {
    float distance = dist(x,y,b.x,b.y);
    if (distance<r+b.r){
      return true;
    } else{
      return false;
    }
  }
}
