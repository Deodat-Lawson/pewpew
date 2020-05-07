void game() {
  background(green);

  for(int i = 0; i < objects.size(); i++){
   GameObject obj = objects.get(i);
   obj.show();
   obj.act();
    if(obj.isDead()){
     objects.remove(i);
     i--;
    }
  }
}

void gameClicks() {
  myPlayer.shoot();
}
