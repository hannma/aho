float baseH = 60;
float armL1 = 80;
float armL2 = 40;
float armL3 = 40;
float armW1 = 10;
float armW2 = 10;
float armW3 = 2;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float l3 = 0;
float dif = 0.01;


void setup(){
  size(1200, 800, P3D);
 
  
  camera(150, 150,150, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  stroke(0);
  
  
  background(255);
  
 if(keyPressed){
   
 if(key == 'a'){
      angle0 = angle0 + dif; 
      angle1 = angle1 + dif;
      angle2 = angle2 + dif;
      l3 = l3 + dif;
    }
  if(key == 'b'){
       angle0 = angle0 + dif; 
      angle1 = angle1 + dif;
      angle2 = angle2 + dif;
    }
 if(key == 'c'){
     angle1 = angle1 + dif;
      angle2 = angle2 + dif;
   }
   if(key == 'd'){
       angle2 = angle2 + dif;
    }
    if(key == 'r'){
      angle0 = 0 ;
      angle1 = 0;
      angle2 = 0;
      l3 = 0;
    }
   
  }
  
  //base

  translate(0,0,baseH+l3);
  fill(0);
  box(10,10,baseH+2*l3);
  
  //1st link
  rotateZ(radians(angle0));
  translate(0,armL1/2-armW1/2,baseH/2+l3);
  fill(255);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  translate(armW1,armL1/2,0);
 rotateX(radians(60*angle1));  
  //go to center of 2nd joint
 translate(0,armW1+armW2/2,0);
  fill(0);
  box(armW2,armL2,armW2);
  
  //3rd link
  translate(0, armL2/2+armW3/2, armL2/2-armW3-armW2-5);
  rotateY(radians(60*60*angle2));
  translate(0,0,armL3/2);
  fill(255);
  box(armW3,armW3,armL3);

}
