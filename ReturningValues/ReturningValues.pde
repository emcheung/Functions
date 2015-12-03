float a, b, c;
void setup() {
}
void draw() {
  println(hypotenuse(5, 12));
}

float hypotenuse(float a, float b) {
  float c = sqrt(sq(a) + sq(b));
  return c;
}