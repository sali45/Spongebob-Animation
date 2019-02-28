// 3D Scene Example
//The instance object is spongebob with the second instance being doodlebob
float time = 0;  // keep track of passing of time

void setup() {
  size(800, 800, P3D);  // must use 3D here !!!
  noStroke();           // do not draw the edges of polygons
}

void spongebob(boolean isDoodle) {
  // Draw left leg

  pushMatrix();

  // diffuse (fill), ambient and specular material properties
  translate (-7, 20, 0);
  if (isDoodle) {
    translate(0, 5, 0);
    fill(255);
    stroke(0);
    box(3, 15, 3);
  } else { 
    noStroke();
    fill (255, 255, 0);
    ambient (255, 255, 0);      
    specular (255, 255, 0);   
    shininess (2.0);
    cylinder (1.5, 15.0, 32);
  }


  popMatrix();
  
  //draw left sock
  
  pushMatrix();
  translate(-7, 28.5, 0);
  if (isDoodle) {
    stroke(0);
    fill(255);
    translate(0, 2, 0);
    box(3.5, 4, 3.5);
  } else {
    noStroke();
    fill(255);
    ambient(255);
    specular(255);
    shininess(1.0);
    cylinder(1.75, 4, 32);
  }
  
  popMatrix();
  
  // Draw right leg

  pushMatrix();

  // diffuse (fill), ambient and specular material properties
  translate (7, 20, 0);
  if (isDoodle) {
    translate(0, 5, 0);
    fill(255);
    stroke(0);
    box(3, 15, 3);
  } else {
    noStroke();
    fill (255, 255, 0);       
    ambient (255, 255, 0);      
    specular (255, 255, 0);  
    shininess (2.0);    
    cylinder (1.5, 15.0, 32);
  }

  popMatrix();
  
  //draw right sock
  
  pushMatrix();
  
  translate(7, 28.5, 0);
  if (isDoodle) {
    stroke(0);
    fill(255);
    translate(0, 2, 0);
    box(3.5, 4, 3.5);
  } else {
    fill(255);
    ambient(255);
    specular(255);
    shininess(1.0);
    cylinder(1.75, 4, 32);
  }
  
  popMatrix();
  
  // Draw left eye

  pushMatrix();

  translate (-7, -10, 4);
  if (isDoodle) {
    translate(0, 0, 1);
    stroke(0);
    fill (255);
    ellipse(0, 0, 14, 14);
  } else {
    noStroke();
    fill(255);
    ambient (50, 50, 50);
    specular (155, 155, 155);
    shininess (15.0);
    sphereDetail (40);
    sphere (7);
  }
  
  popMatrix();
  
  // Draw left iris
  
  pushMatrix();

  translate (-7, -10, 9.5);
  if (isDoodle){
    translate(0, 0, -4.5);
    fill(255);
    stroke(0);
    ellipse(0, 0, 6, 6);
  } else { 
    noStroke();
    fill (0,191,255);
    ambient (50, 50, 50);
    specular (155, 155, 155);
    shininess (15.0);
    sphereDetail (40);
    sphere (3);
  }

  popMatrix();

  // Draw left pupil
  
  pushMatrix();

  translate (-7, -10, 11);
  
  if (isDoodle) {
    translate(0, 0, -5.9);
    fill(0);
    stroke(0);
    ellipse(0, 0, 4, 4);
  } else { 
    noStroke();
    fill (0);
    ambient (50, 50, 50);
    specular (155, 155, 155);
    shininess (15.0);
    sphereDetail (40);
    sphere (2);
  }

  popMatrix();
  
  //draw left eyelashes
  
  pushMatrix();
  
  translate(-8, -19, 5);
  fill(0);
  cylinder (.5, 3, 32);
  
  popMatrix();
  
  pushMatrix();
  
  translate(-1, -17, 5);
  rotateZ(PI / 3);
  fill(0);
  cylinder (.5, 3, 32);
  
  popMatrix();
  
  pushMatrix();
  
  translate(-13.5, -17, 5);
  rotateZ(-PI / 3);
  fill(0);
  cylinder (.5, 3, 32);
  
  popMatrix();

  // Draw right eye
  pushMatrix();

  translate (7, -10, 4);
  if (isDoodle) {
    stroke(0);
    fill(255);
    translate(0, 0, 1);
    ellipse(0, 0, 14, 14);
  } else {
    noStroke();
    fill (255);
    ambient (50, 50, 50);
    specular (155, 155, 155);
    shininess (15.0);
  
    sphereDetail (40);
    sphere (7);
  }
  popMatrix();

  // Draw right iris
  
  pushMatrix();

  translate (7, -10, 9.5);
  if (isDoodle) {
    translate(0, 0, -4.5);
    fill(255);
    stroke(0);
    ellipse(0, 0, 6, 6);
  } else { noStroke();
    fill (0,191,255);
    ambient (50, 50, 50);
    specular (155, 155, 155);
    shininess (15.0);
    sphereDetail (40);
    sphere (3);
  }


  popMatrix();

  // Draw right pupil
  
  pushMatrix();

  translate (7, -10, 11);
  if (isDoodle) {
    fill(0);
    stroke(0);
    translate(0, 0, -5.5);
    ellipse(0, 0, 4, 4);
  } else { 
    noStroke();
    fill (0);
    ambient (50, 50, 50);
    specular (155, 155, 155);
    shininess (15.0);
    sphereDetail (40);
    sphere (2);
  }


  popMatrix();
  
  //draw right eyelashes
  
  pushMatrix();
  
  translate(8, -19, 5);
  fill(0);
  cylinder (.5, 3, 32);
  
  popMatrix();
  
  pushMatrix();
  
  translate(1, -17, 5);
  rotateZ(-PI / 3);
  fill(0);
  cylinder (.5, 3, 32);
  
  popMatrix();
  
  pushMatrix();
  
  translate(13.5, -17, 5);
  rotateZ(PI / 3);
  fill(0);
  cylinder (.5, 3, 32);
  
  popMatrix();

  // Draw a body

  pushMatrix();

  if (isDoodle) {
    fill(255);
    stroke(0);
  } else { noStroke();
    fill (255, 255, 0);
    ambient (100, 100, 200);
    specular (0, 0, 0);
    shininess (1.0);
  }

  box (30, 40, 10);

  popMatrix();
  
  // Draw a shirt

  pushMatrix();

  if (isDoodle) {
    fill(255);
    stroke(0);
  } else { noStroke();
    fill (255);
    ambient (100, 100, 200);
    specular (0, 0, 0);
    shininess (1.0);
  }

  translate (0, 10, 0);
  //rotateY (-PI / 9.0);      // rotate based on "time"
  box (30, 5, 10);

  popMatrix();
  
  // Draw pants

  pushMatrix();

  if (isDoodle) {
    fill(255);
    stroke(0);
  } else { noStroke();
    fill (139,69,19);
    ambient (100, 100, 200);
    specular (0, 0, 0);
    shininess (1.0);
  }

  translate (0, 18, 0);
  box (30, 7, 10);

  popMatrix();
  
  // Draw belt

  pushMatrix();

  fill (0);
  translate (0, 14, 0);
  box (30, 3, 10);

  popMatrix();
  
  //draw tie
  pushMatrix();
  
  if (isDoodle) {
    fill(255);
    stroke(0);
    translate(-1.5, 7.5, 6.2);
    rect(0, 0, 3, 7);
  } else { 
    noStroke();
    fill(255,0,0);
    translate(0, 12.75, 0.5);
    box(3, 10, 10);
  }
  popMatrix();
  
  pushMatrix();
  
  if (isDoodle) {
    fill(255);
    stroke(0);
  } else { noStroke();
    fill(255,0,0);
  }
  beginShape();
  
  vertex(0, 11.5, 6);
  vertex(4, 7.5, 6);
  vertex(-4, 7.5, 6);
  endShape(CLOSE);

  popMatrix();
  
  //draw left collar
  
  pushMatrix();
  
  fill(255);
  stroke(0);
  strokeWeight(3);
  
  beginShape();
  
  vertex(8, 9, 6.1);
  vertex(4, 7.5, 6.1);
  vertex(12, 7.5, 6.1);
  
  endShape(CLOSE);
  popMatrix();
  
  //draw right collar
  
  pushMatrix();
    
  beginShape();
  
  vertex(-8, 9, 6.1);
  vertex(-4, 7.5, 6.1);
  vertex(-12, 7.5, 6.1);
  
  endShape(CLOSE);
  popMatrix();
  
  noStroke();
  //draw nose
  pushMatrix();
  
  translate(0, 0, 5);
  scale(.5, .5, 3);
  if (isDoodle) {
    fill(255);
    stroke(0);
    ellipse(0, 0, 4, 4);
  } else { noStroke();
    fill(255, 255, 0);
    ambient (100, 100, 200);
    specular (0, 0, 0);
    shininess (1.0);
    sphere(2);
  }

  
  popMatrix();
  
  //draw tip of nose
  pushMatrix();
  
  translate(0, 0, 5);
  if (isDoodle) {
    fill(255);
    stroke(0);
    ellipse(0, 0, 1, 1);
  } else { noStroke();
    fill(255, 255, 0);
    ambient (100, 100, 200);
    specular (0, 0, 0);
    shininess (1.0);
    sphere(.5);
  }


  popMatrix();
  
  //draw mouth
  pushMatrix();
  
  if (isDoodle) {
    fill(0);
    stroke(0);
  } else { 
    noStroke();
    fill(180,0,0);
  }
  beginShape();
  curveVertex(-7, 4, 5.75);
  curveVertex(-7, 4, 5.75);
  curveVertex(-5, 5, 5.75);
  curveVertex(-4, 5.5, 5.75);
  curveVertex(-3, 6, 5.75);
  curveVertex(-1, 6.5, 5.75);
  curveVertex(1, 6.5, 5.75);
  curveVertex(3, 6, 5.75);
  curveVertex(4, 5.5, 5.75);
  curveVertex(5, 5, 5.75);
  curveVertex(7, 4, 5.75);
  curveVertex(7, 4, 5.75);
  endShape(CLOSE);

  popMatrix();
  
  //draw left rosy cheek
  pushMatrix();

  translate (-8.5, 4, 4);
  if (isDoodle) {
    fill(255);
    stroke(0);
    translate(0, 0, 2);
    ellipse(0, 0, 3, 3);
  } else { noStroke();
    fill (255,255,0);
    ambient (255, 0, 0);
    specular (155, 155, 155);
    shininess (15.0);
    sphereDetail (40);
    sphere (2);
  }

  popMatrix();
  
  //draw right rosy cheek
  pushMatrix();

  translate (8.5, 4, 4);
  if (isDoodle) {
    fill(255);
    stroke(0);
    translate(0, 0, 2);
    ellipse(0, 0, 3, 3);
  } else { noStroke();
    fill (255,255,0);
    ambient (255, 0, 0);
    specular (155, 155, 155);
    shininess (15.0);
    sphereDetail (40);
    sphere (2);
  }


  popMatrix();

  //draw left tooth
  pushMatrix();

  translate (-1.5, 4.5, 7);
  if (isDoodle) {
    fill(255);
    stroke(0);
  } else { noStroke();
    fill (255);
    ambient (100, 100, 200);
    specular (0, 0, 0);
    shininess (1.0);
  }

  box (2, 1, 1);

  popMatrix();
  
  //draw right tooth
  pushMatrix();

  translate (1.5, 4.5, 7);
  if (isDoodle) {
    fill(255);
    stroke(0);
  } else { noStroke();
    fill (255);
    ambient (100, 100, 200);
    specular (0, 0, 0);
    shininess (1.0);
  }

  box (2, 1, 1);

  popMatrix();

  //draw left shoe
  pushMatrix();
  
  translate(-7.3, 34, 1);
  if (isDoodle) {
    fill(255);
    stroke(0);
  } else { 
    noStroke();
    fill(0);  
    ambient (100, 100, 200);
    specular (0, 0, 0);
    shininess (1.0);
  }
  box (4, 3, 6);

  popMatrix();
  
  pushMatrix();
  
  translate(-7.3, 34, 4.2);
  if (isDoodle) {
    fill(255);
    stroke(0);
    ellipse(0, 0, 5, 5);
  } else { 
    noStroke();
    fill(0);
    ambient (100, 100, 200);
    specular(0, 0, 0);
    shininess(1.0);
    sphere(2.5);
  }
  popMatrix();
  
  //draw right shoe
  pushMatrix();
  
  translate(7.3, 34, 1);
  if (isDoodle) {
    fill(255);
    stroke(0);
  } else { 
    noStroke();
    fill(0);
    ambient (100, 100, 200);
    specular (0, 0, 0);
    shininess (1.0);
  }

  box (4, 3, 6);

  popMatrix();
  
  pushMatrix();
  
  translate(7.3, 34, 4.2);
  
  if (isDoodle) {
    fill(255);
    stroke(0);
    ellipse(0, 0, 5, 5);
  } else { 
    noStroke();
    fill(0);
    ambient (100, 100, 200);
    specular(0, 0, 0);
    shininess(1.0);
    sphere(2.5);
  }
  
  popMatrix();

  //draw left arm
  
  pushMatrix();
  if (isDoodle) {
    fill(255);
    stroke(0);
    translate(-17, 4, 7.5);
    box(3, 3, 15);
  } else {
    noStroke();
    fill(255, 255, 0);
    translate(-15, 4, 0);
    rotateX(PI / 2);
    rotateZ(PI / 2);
    cylinder (1.5, 15.0, 32);
  }
  popMatrix();
  
  //draw right arm
  
  pushMatrix();
  if (isDoodle) {
    fill(255);
    stroke(0);
    translate(17, 4, 7.5);
    box(3, 3, 15);
  } else {
    fill(255, 255, 0);
    noStroke();
    translate (30, 4, 0);
    rotateX(PI / 2);
    rotateZ(PI / 2);
    cylinder (1.5, 15.0, 32);
  }
  
  popMatrix();
  
  //draw left hand
  
  pushMatrix();
  noStroke();
  if (isDoodle) {
    translate(-17, 4, 15);
    fill(255);
    stroke(0);
    ellipse(0, 0, 5, 5);
  } else { 
    translate(-30, 4, 0);
    fill(255, 255, 0);
    sphere(2.5);
  }
  
  popMatrix();
  
  //draw left fingers
  pushMatrix();
  noStroke();
  if (isDoodle) {
    translate(-17, 4, 15);
    fill(255);
    stroke(0);
    ellipse(0, 0, 1, 1);
  } else {
    translate(-31.5, 4, 0);
    rotateY(PI / 2);
    fill(255, 255, 0);
    scale(.5, .5, 2);
    sphere(1);
  }
  popMatrix();
  
  pushMatrix();
  if (isDoodle) {
    translate(-18, 4, 15);
    fill(255);
    ellipse(0, 0, 1, 1);
  } else {
    translate(-31.5, 4, 0);
    rotateX(PI / 2);
    fill(255, 255, 0);
    scale(.5, .5, 3);
    sphere(1);
  }
  popMatrix();
  
  pushMatrix();
  if (isDoodle) {
    translate(-16, 4, 15);
    rotateX(PI / 2);
    fill(255);
    stroke(0);
    ellipse(0, 0, 1, 1);
  } else {
    translate(-31.5, 4, 0);
    rotateZ(PI / 6);
    fill(255, 255, 0);
    scale(.5, 2.5, .5);
    sphere(1);
  }
  popMatrix();
  
  //draw right hand
  
  pushMatrix();
  noStroke();
  if (isDoodle) {
    stroke(0);
    fill(255);
    translate(17, 4, 15);
    ellipse(0, 0, 5, 5);
  } else {
    noStroke();
    translate(30, 4, 0);
    fill(255, 255, 0);
    sphere(2.5);
  }
  
  popMatrix();
  
  //draw right fingers
  
  pushMatrix();
  if (isDoodle) {
    translate(17, 4, 15);
    fill(255);
    ellipse(0, 0, 1, 1);
  } else {
    translate(31.5, 4, 0);
    rotateY(PI / 2);
    fill(255, 255, 0);
    scale(.5, .5, 2);
    sphere(1);
  }
  popMatrix();
  
  pushMatrix();
  if (isDoodle) {
    translate(18, 4, 15);
    fill(255);
    ellipse(0, 0, 1, 1);
  } else {
    translate(31.5, 4, 0);
    rotateX(PI / 2);
    fill(255, 255, 0);
    scale(.5, .5, 3);
    sphere(1);
  }
  popMatrix();
  
  pushMatrix();
  if (isDoodle) {
    translate(16, 4, 15);
    rotateX(PI / 2);
    fill(255);
    ellipse(0, 0, 1, 1);
  } else {
    translate(31.5, 4, 0);
    rotateZ(PI / 6);
    fill(255, 255, 0);
    scale(.5, 2.5, .5);
    sphere(1);
  }
  popMatrix();
  
  //draw left sleeve
  
  pushMatrix();
  translate(-17, 4, 0);
  if (isDoodle) {
    stroke(0);
    fill(255);
    ellipse(0, 0, 5, 5);
  } else {
    noStroke();
    fill(255);
    sphere(2.5);
  }
  
  popMatrix();
  
  //draw right sleeve
  
  pushMatrix();
  translate(17, 4, 0);
  if (isDoodle) {
    stroke(0);
    fill(255);
    ellipse(0, 0, 5, 5);
  } else { 
    noStroke();
    fill(255);
    sphere(2.5);
  }
  
  popMatrix();
  
  //draw holes
  
  pushMatrix();
  translate(12.7, 3, 5);
  if (isDoodle) {
    stroke(0);
    fill(255);
    ellipse(0, 0, 4, 4);
  } else {
    noStroke();
    fill(154,205,50);
    scale(1, 1, .2);
    sphere(2);
  }
  
  popMatrix();
  
  pushMatrix();
  translate(12, -2, 5);
  if (isDoodle) {
    stroke(0);
    fill(255);
    ellipse(0, 0, 2, 2);
  } else {
    fill(154,205,50);
    scale(1, 1, .2);
    sphere(1);
  }
  
  popMatrix();
  
  pushMatrix();
  translate(-12.7, 4, 5);
  if (isDoodle) {
    stroke(0);
    fill(255);
    ellipse(0, 0, 2, 2);
  } else {
    noStroke();
    fill(154,205,50);
    scale(1, 1, .2);
    sphere(1);
  }  
  
  popMatrix();
  
  pushMatrix();
  
  translate(-10, 0, 5);
  if (isDoodle) {
    stroke(0);
    fill(255);
    ellipse(0, 0, 2, 2);
  } else {
    noStroke();
    fill(154,205,50);
    scale(1, 1, .2);
    sphere(1);
  }
  
  popMatrix();
  
  pushMatrix();
  
  translate(-15, -4 ,0);
  if (isDoodle) {
    stroke(0);
    fill(255);
    rotateY(PI / 2);
    ellipse(0, 0, 5, 5);
  } else {
    noStroke();
    fill(154,205,50);
    scale(.2, 1, 1);
    sphere(2.5);
  }
  
  popMatrix();
  
  pushMatrix();
  
  translate(-15, -10 , 3);
  if (isDoodle) {
    stroke(0);
    fill(255);
    stroke(0);
    rotateY(PI / 2);
    ellipse(0, 0, 2, 2);
  } else { 
    noStroke();
    fill(154,205,50);
    scale(.2, 1, 1);
    sphere(1);
  }
  
  popMatrix();
  
  pushMatrix();
  
  translate(15, -10 , 0);
  if (isDoodle) {
    stroke(0);
    fill(255);
    rotateY(PI / 2);
    ellipse(0, 0, 5, 5);
  } else {
    fill(154,205,50);
    scale(.2, 1, 1);
    sphere(2.5);
  }
  
  popMatrix();
  
  pushMatrix();
  
  translate(15, 0, 2);
  if (isDoodle) {
    stroke(0);
    fill(255);
    rotateY(PI / 2);
    ellipse(0, 0, 3, 3);
  } else {
    noStroke();
    fill(154,205,50);
    scale(.2, 1, 1);
    sphere(1.5);
  }
  
  popMatrix();
  
  pushMatrix();
  
  translate(15, -3, -2);
  if (isDoodle) {
    fill(255);
    stroke(0);
    rotateY(PI / 2);
    ellipse(0, 0, 3, 3);
  } else {
    fill(154,205,50);
    scale(.2, 1, 1);
    sphere(1.5);
  }
  
  popMatrix();
  
  pushMatrix();
  
  translate(7, 1, -5);
  if (isDoodle) {
    fill(255);
    stroke(0);
    ellipse(0, 0, 6, 6);
  } else {
    fill(154,205,50);
    noStroke();
    scale(1, 1, .2);
    sphere(3);
  }
  
  popMatrix();
  
  pushMatrix();
  
  translate(-8, 3, -5);
  if (isDoodle) {
    stroke(0);
    fill(255);
    ellipse(0, 0, 4, 4);
  } else {
    noStroke();
    fill(154,205,50);
    scale(1, 1, .2);
    sphere(2);
  }
  
  popMatrix();  
  
  pushMatrix();
  
  translate(-5, -5, -5);
  if (isDoodle) {
    fill(255);
    stroke(0);
    ellipse(0, 0, 5, 5);
  } else {
    noStroke();
    fill(154,205,50);
    scale(1, 1, .2);
    sphere(2.5);
  }
  
  popMatrix();
  pushMatrix();
  
  translate(-9, -13, -5);
  if (isDoodle) {
    fill(255);
    stroke(0);
    ellipse(0, 0, 5, 5);
  } else { 
    fill(154,205,50);
    noStroke();
    scale(1, 1, .2);
    sphere(2.5);
  }
  
  popMatrix();
  
  pushMatrix();
  
  translate(8, -14, -5);
  if (isDoodle) {
    stroke(0);
    fill(255);
    ellipse(0, 0, 5, 5);
  } else { 
    noStroke();
    fill(154,205,50);
    scale(1, 1, .2);
    sphere(2.5);
  }
  
  popMatrix();
  
  pushMatrix();
  
  translate(3, -6, -5);
  if (isDoodle) {
    fill(255);
    stroke(0);
    ellipse(0, 0, 3, 3);
  } else { 
    noStroke();
    fill(154,205,50);
    scale(1, 1, .2);
    sphere(1.5);
  }
  
  popMatrix();
}

// Draw a scene with a cylinder, a sphere and a box
void draw() {
  
  resetMatrix();  // set the transformation matrix to the identity (important!)

  background(0, 50, 200);  // clear the screen to black

  // set up for perspective projection
  perspective (PI * 0.333, 1.0, 0.01, 1000.0);

  // place the camera in the scene (just like gluLookAt())
  beginCamera();
  if (time < 3) {
    camera (0.0, 0.0, 85.0 * time + 1, 0.0, 0.0, -1.0, 0.0, 1.0, 0.0);
  } else if (time > 3 && time < 6) {
    camera (45.0 * time + 1, 0.0, 100.0, 0.0, 0.0, -1.0, 0.0, 1.0, 0.0);
  } else {
    camera (0.0, -85.0 * time + 1, 0.0, 0.0, 0.0, -1.0, 0.0, 1.0, 0.0);
  }
  endCamera();  
  //bubbles
  pushMatrix();
  
  translate(-30, -time * 10, 0);
  fill(0,191,255);
  stroke(0);
  ellipse(0, 0, 10, 10);
  popMatrix();
  
  pushMatrix();
  
  translate(15, -time * 10 + 30, 0);
  fill(0,191,255);
  stroke(0);
  ellipse(0, 0, 13, 13);
  popMatrix();
  
  pushMatrix();
  
  translate(33, -time * 10 + 20, 0);
  fill(0,191,255);
  stroke(0);
  ellipse(0, 0, 5, 5);
  popMatrix();
  
  pushMatrix();
  
  translate(-40, -time * 10 - 20, 0);
  fill(0,191,255);
  stroke(0);
  ellipse(0, 0, 5, 5);
  
  popMatrix();

  pushMatrix();
  
  translate(35, -time * 10 - 20, 0);
  fill(0,191,255);
  stroke(0);
  ellipse(0, 0, 5, 5);
  
  popMatrix();
  
  pushMatrix();
  
  translate(-35, -time * 10 + 20, 0);
  fill(0,191,255);
  stroke(0);
  ellipse(0, 0, 8, 8);
  
  popMatrix();
  
  pushMatrix();
  
  translate(0, -time * 10 - 25, 0);
  fill(0,191,255);
  stroke(0);
  ellipse(0, 0, 8, 8);
  
  popMatrix();    
  
  noStroke();
  
  //doodlebob
  pushMatrix();
  translate(0, 0, -70);
  translate(0, 0, time * 10);
  rotateZ(cos(time * 10) / 6);
  spongebob(true);
  popMatrix();
  
  pushMatrix();
  
  //land
  
  pushMatrix();
  
  translate(0, 40, 0);
  fill(194, 178, 128);
  box(5000, 6, 5000);
  
  popMatrix();  // create an ambient light source
  ambientLight (102, 102, 102);

  
  // create two directional light sources
  lightSpecular (204, 204, 204);
  directionalLight (102, 102, 102, -0.7, -0.7, -1);
  directionalLight (152, 152, 152, 0, 0, -1);
  
  //spongebob
  translate(0, 0, time * 20 - 50);
  rotateZ(cos(time * 13) / 7);
  spongebob(false);
  popMatrix();
  time += 0.01;
}

// Draw a cylinder of a given radius, height and number of sides.
// The base is on the y=0 plane, and it extends vertically in the y direction.
void cylinder (float radius, float height, int sides) {
  int i,ii;
  float []c = new float[sides];
  float []s = new float[sides];

  for (i = 0; i < sides; i++) {
    float theta = TWO_PI * i / (float) sides;
    c[i] = cos(theta);
    s[i] = sin(theta);
  }
  
  // bottom end cap
  
  normal (0.0, -1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (0.0, 0.0, 0.0);
    endShape();
  }
  
  // top end cap

  normal (0.0, 1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    vertex (0.0, height, 0.0);
    endShape();
  }
  
  // main body of cylinder
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape();
    normal (c[i], 0.0, s[i]);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    normal (c[ii], 0.0, s[ii]);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    endShape(CLOSE);
  }
}
