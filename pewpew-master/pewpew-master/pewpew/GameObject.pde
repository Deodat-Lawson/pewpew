class GameObject{
 
  float x,y,vx,vy, size,hp;
  color myColor;
  
  GameObject(color c){
  x = random(0, width);
  y = random(0, height);
  vx = vy = 0;
  hp = 1;
  myColor = c;
  }
  
  GameObject(float x, float y, float size, float hp, color c){
    this.x = x;
    this.y = y;
    this.size = size;
    this.hp = hp;
    myColor = c;
    vx = vy = 0;
  }
  
  void show(){
   fill(myColor);
   ellipse(x,y,size,size);
       
  }
  
  void act(){
    x+=vx;
    y+=vy;
  }
  boolean isDead(){
   if(hp <=0){
    return true; 
   }
    return false;
  }
  
}
