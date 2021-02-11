float baseH = 40;
float armL1 = 30;
float armL2 = 40;
float armL3 = 40;
float armL4 = 30;
float armW1 = 10;
float armW2 = 10;
float armW3 = 10;
float armW4 = 5;
float angle0 = 0;
float angle2 = 0;
float angle3 = 0;
float l1 = 0;
float dif = 0.5;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'b'){
      angle0 = angle0 + dif;
    }
    if(key == 'B'){
      angle0 = angle0 - dif;
    }
    if(key == 'h'){
      l1 = l1 + dif;
    }
    if(key == 'H'){
      l1 = l1 - dif;
    }
    if(key == 's'){
      angle2 = angle2 + dif;
    }
    if(key == 'S'){
      angle2 = angle2 - dif;
    }
    if(key == 'e'){
      angle3 = angle3 + dif;
    }
    if(key == 'E'){
      angle3 = angle3 - dif;
    }
   
  }
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,baseH/2);
  fill(175);
  box(12,12,baseH);
  
  //1st link
  translate(0,0,0.7*baseH+l1);
  fill(150);
  box(armW1,armW1,armL1);
  
  //2nd link
  //go to 2nd joint
  translate(0,0,0.675*armL1);
  rotateZ(radians(angle2));  
  //go to center of 2nd joint
  translate(0,armW2,0);
  fill(125);
  box(armW2,armL2,armW2);
  
  //3rd link
  translate(0, 2.5*armW2, 0);
  rotateY(radians(angle3));
  fill(200);
  box(armW3,armW3,armW3);

  //4th link
  translate(-0.75*armW3,0,-armW3);
  fill(100);
  box(armW4,armW4,armL4);
  
}
