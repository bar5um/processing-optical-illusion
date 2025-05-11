
void setup() {
  size(700, 450);
  //frameRate(5);
}
float c=0;
float x=0;

boolean dir=true;
int frames = 1;
void draw() {
    if(x==15){
    dir=false;
    delay(1000);
  }
  else if(x==0){ 
    dir=true;
    delay(1000);
  }   
  if(dir){
  x++;
  }
  else{
  x--;
  }

  background(255);
  for(int i = 0 ; i<=450 ; i+=45){
    fill(125);
    stroke(125);
    strokeWeight(2.5);
    line(0,i,700,i);
  }
  int h=0;
  boolean b=true;
  for(int j=0;j<=450;j+=45){
    for(int i=100;i<=600;i+=90){
    if(h==15){
      fill(0);
      stroke(125);
      strokeWeight(2.5);
      rect(i+x, j, 45, 45);
    }else if(h==30){
      fill(0);
      stroke(125);
      strokeWeight(2.5);
      rect(i+x*2, j, 45, 45);
    } else {
      fill(0);
      stroke(125);
      strokeWeight(2.5);
      rect(i, j, 45, 45);
    }
    }
    if(h==30)b=false;
    else if(h==0)b=true;
    if(b) h+=15;
    else h-=15;
  }

//  if(frameCount == 31){
//    exit();
//  }
//  if(frameCount == 30){
//    for(int i=0 ; i<=15 ;i++){ //<>//
//      saveFrame("p"+frames+".gif"); //<>//
//      frames++; //<>//
//    }
//  } else {
//     saveFrame("p"+frames+".gif");
//     frames++;
//  }
//  if(frameCount == 30){
//      for(int i=0 ; i<=30 ;i++) {
//      saveFrame("p"+frames+".gif");
//      frames++;
//    }
//  }
}