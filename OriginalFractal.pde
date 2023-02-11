public void setup(){
  size(400, 400);
  fill(255, 0, 0);  
}
public void draw(){
  myFractal(200, 200, 400, 255);
}
public void myFractal(int x, int y, int siz, int color) {
  if(siz < 20) {
    ellipse(x, y, siz, siz);
  } else {
    fill(color, 0, 0);
    ellipse(x-(siz/4), y, siz/2, siz/2);
    ellipse(x, y-(siz/4), siz/2, siz/2);
    ellipse(x+(siz/4), y, siz/2, siz/2);
    ellipse(x, y+(siz/4), siz/2, siz/2);
    ellipse(x-(siz/6), y-(siz/6), siz/2, siz/2);
    ellipse(x+(siz/6), y+(siz/6), siz/2, siz/2);
    ellipse(x+(siz/6), y-(siz/6), siz/2, siz/2);
    ellipse(x-(siz/6), y+(siz/6), siz/2, siz/2);
    myFractal(x, y, (int)(siz/1.5), (int)(color/1.1));
  }
}
