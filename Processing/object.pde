class Object {

  int objectX;
  int objectY;
  int objectWidth;
  int objectHeight;

  Object(int x, int y, int w, int h) {
    objectX = x;
    objectY = y;
    objectWidth = w;
    objectHeight = h;
  }

  void Draw() {
    push();
    fill(0, 255, 0);
    rectMode(CENTER);
    rect(objectX, objectY, objectWidth, objectHeight);
    pop();
  }
  boolean checkCol(float x, float y,float rad){
  float distance = dist(objectX,objectY,x,y);
  if(distance < rad){
  return true;
  }
  return false;
  }
}
