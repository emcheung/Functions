float jx, jy, xSpeed, ySpeed;
PImage jon;

void setup() {
  size(800, 600);
  jon = loadImage("jshih.jpg");
  jx = width/2;
  jy = height/2;
  xSpeed = random(3, 5);
  ySpeed = random(3, 5);
}

void draw() {
  background(0);
  drawASquare();
  drawACircleAt(mouseX, mouseY);
  drawJon(jx, jy);
  jx += xSpeed;
  jy += ySpeed;
  if(jx > width - jon.width || jx < 0){
    xSpeed *= -1;
  }
  if(jy > height - jon.height || jy < 0){
    ySpeed *= -1;
  }
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

void drawJon(float jx, float jy) {
  image(jon, jx, jy);
}
  
  