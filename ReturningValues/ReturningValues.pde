void setup() {
  size(800, 600);
}

void draw() {
  drawARandomCircle();
  if(mousePressed) {
    drawACircleAt(mouseX,mouseY);
  }
}

void drawARandomCircle() {
  float sz = random(5,150);
  fill(random(255), 0, random(100,255));
  ellipse(random(width), random(height), sz,sz);
}

void drawACircleAt(float x, float y) {
  float sz = 10;  
  fill(255);
  ellipse(x, y, sz, sz);
}