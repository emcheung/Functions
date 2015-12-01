void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  drawASquare();
  drawACircleAt(mouseX, mouseY);
  drawJon(jx, jy);
}

void drawASquare() {
  float sz = 50;
  fill(0, 0, 255);
  rect(width/2-(sz/2), height/2-(sz/2), sz, sz);
}

void drawACircleAt(float x, float y) {
  float sz = 30;
  fill(255);
  if (keyPressed && key == '1') {
    fill(255, 0, 0);
  }
  if (keyPressed && key == '2') {
    fill(0, 255, 0);
  }
  if (keyPressed && key == '3') {
    fill(0, 0, 255);
  }
  ellipse(x, y, sz, sz);
}
  