float speed=4;
float x=0;
float y=0;
int rectX;
float rectY=330;
int offset=8;
float xSpeed;
float randomX;
float randomY;
float randomSpeed;
boolean playing;

void setup(){
  frameRate(60);
  size(640,360);
  xSpeed=4;
  randomX=random(0,600);
  randomY=random(0,150);
  x=randomX;
  y=randomY;
  randomSpeed=int(random(5));
  print(randomSpeed);
if (randomSpeed>2){
    randomSpeed=-1;}
    else {randomSpeed=1;}
  print(randomSpeed);
  xSpeed=randomSpeed*xSpeed;
  playing=true;
}
void draw(){
  if (playing==true){
  background(50);
  rectMode(CENTER);
  strokeWeight(0);
  stroke(255);
  rectX=mouseX;
  fill(255);
  rect(rectX,rectY,100,20);
  strokeWeight(0);
  fill(random(0,255),random(0,255),random(0,255));
  circle(x,y,20);
  y=y+speed;
  x=x+xSpeed;
if (y>rectY-offset && x<rectX+50 && x>rectX-50){
    speed= speed*-1;
  }
if (y<0){
   speed=speed*-1;
}
if (x>width-offset){
    xSpeed=xSpeed*-1;
}
if (x<0-offset){
     xSpeed=xSpeed*-1;
}
if (y>370){
  playing=false;
  print(playing);
}
if (!playing){
  textSize(75);
  rectMode(CORNER);
  float w=textWidth("GAME OVER");
  text("GAME OVER",100,height/2);
  rect(width/2-50,height/2+55,100,50);
  textSize(25);
  fill(255);
  text("Restart",width/2-43,height/2+87);
  if(mousePressed&&mouseX>width/2-50&&mouseX<width/2+50&&mouseY>height/2+55&&mouseY<height/2+105){
    
  print("p");
  }
  
}
  }
}
