public void setup() {
  size(1000, 800);
}

public void draw() {
  background(0);
  fractals(500, 500, 2000);
  frameRate(3);
  if(mousePressed == true)
    frameRate(15);
}

public void fractals(int x, int y, int len) {
  ellipse(x,y,len,len);
  if(y > 100){
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  fractals(x, y-20, len-100);
  }
}
