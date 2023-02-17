public void setup(){
  size(500,500);
  
}

int MHT = 200;

public void draw(){
  background(255,192,203);
  sierpinski(20,480,MHT);
  
}

public void mousePressed(){
  background(0,0,0);
  MHT+=20;
}

public void sierpinski(int x, int y, int len){
  noStroke();
  fill(255,255,102);
  if(len <= 20){
    triangle(x,y,x+(len/2), y-len, x+len, y);
  } else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }

}
