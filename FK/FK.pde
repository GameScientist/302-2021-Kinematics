Bone bone = new Bone(5);
Bone draggedBone;

float time = 0; // how many seconds have passed since starting

void setup() {
  size(600, 600, FX2D);
  smooth();

  //bone.child = new Bone();
  //bone.child.parent = bone;
}

// ticks every 1/60th of a second
void draw() {

  background(128);

  time = millis()/1000.0;

  if (draggedBone != null) draggedBone.drag();

  bone.calc();
  bone.draw();
}

void mousePressed() {
  //bone = new Bone(5);
  Bone clickedBone = bone.onClick();

  if (Keys.SPACE()) {
    if (clickedBone != null) {
    }
  } else {
    draggedBone = clickedBone;
  }
}
void mouseReleased() {
  draggedBone = null; // stop dragging
}
