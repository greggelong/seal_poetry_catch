Catcher catcher;
Timer timer;
Drop[] drops;
int totalDrops = 0;
int score = 10;
PFont f;
PFont g;


void setup() {
  size(displayWidth, displayHeight);
  catcher= new Catcher(32);
  drops = new Drop[1000];
  timer = new Timer(500);
  timer.start();
  f = loadFont("HYj1gf-48.vlw");
  g = loadFont("lishu.vlw");
  textAlign(CENTER);
  
}

void draw() {
  background(255);
   
  // Catcher
  catcher.setLocation(mouseX, mouseY);
  catcher.display();
  //println(score);

  // check timer amd create new drop every two seconds
  if (timer.isFinished()) {
    //drops
    drops[totalDrops] = new Drop();  // initalize
    totalDrops++;  // increace
    if (totalDrops >= drops.length) {  // check to start over
      totalDrops = 0;
    }

    timer.start();
  }
  for (int i=0; i< totalDrops; i++) {
    drops[i].move();

    drops[i].display();
    if (catcher.intersect(drops[i])) {    // checking for intersection while drawing
      drops[i].caught();
    }
    if (drops[i].reachedBottom()) {
      score--;
    }
  }
}
