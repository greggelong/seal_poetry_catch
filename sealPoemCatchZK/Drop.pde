class Drop {
  float x, y;
  float speed;
  color c;
  float r;
  String[] poem = {"床","前","明","月","光","疑","是","地","上","霜","举","头","望","低","思","故","乡"};
  String[] ppoem= {"bed","in front","bright","moon","shine","doubt","is","ground","on","frost","lift","head","look","bow","think","old","home"};
  float size;
  int poemIdx;
  
  

  Drop() {
    r= 8;
    x= random(width);
    y= -r*4;
    speed = random(1, 5);
    c= color(0, 0, 0);
    size = random(40,120);
    poemIdx =int(random(poem.length));
  }

  void move() {
    y += speed;
  }
  
  void caught(){
    fill(color(255,0,0));
    textFont(g,size);
    text(ppoem[poemIdx],x,y-size);
    text(poem[poemIdx],x+size, y);
    speed =0;  // no speed and off the screen
    //y = -1000;
    
  }

  boolean reachedBottom() {
    if (y> height+ r*4) {
      y=-1000;  // needed to get the y value not to reach bottom more than onece
      speed = 0;
      return true;
      
      
    } else {
      return false;
    }
  }

  void display() {
    fill(c);
    noStroke();
    textFont(f,size);
    text(poem[poemIdx],x, y);
    }
  }
