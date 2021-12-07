import processing.sound.*;  

Keyboard keyboard1;
Keyboard keyboard2;
KeyboardPlayer player;
SoundFile[] sounds = new SoundFile[14];
String keys= "1234567cvbnm,.";

void setup() {
  size(840,400);
  sounds[0] = new SoundFile(this, "data/0.mp3"); 
  sounds[1] = new SoundFile(this, "data/1.mp3"); 
  sounds[2] = new SoundFile(this, "data/2.mp3"); 
  sounds[3] = new SoundFile(this, "data/3.mp3"); 
  sounds[4] = new SoundFile(this, "data/4.mp3"); 
  sounds[5] = new SoundFile(this, "data/5.mp3"); 
  sounds[6] = new SoundFile(this, "data/6.mp3");
  sounds[7] = new SoundFile(this, "data/7.mp3"); 
  sounds[8] = new SoundFile(this, "data/8.mp3"); 
  sounds[9] = new SoundFile(this, "data/9.mp3"); 
  sounds[10] = new SoundFile(this, "data/10.mp3"); 
  sounds[11] = new SoundFile(this, "data/11.mp3"); 
  sounds[12] = new SoundFile(this, "data/12.mp3"); 
  sounds[13] = new SoundFile(this, "data/13.mp3"); 
  
  player = new KeyboardPlayer(sounds);
  keyboard1 = new Keyboard();
  keyboard1.keyHeight = 400;
  keyboard1.keyWidth = 60;
  keyboard2 = new Keyboard();
  keyboard2.keyHeight = 400;
  keyboard2.keyWidth = 60;
  keyboard2.offsetX = 420;
}

void draw() {
  background(255);
  keyboard1.drawKeyBoard();
  keyboard2.drawKeyBoard();
  
}

void keyPressed() {
  int idx = keys.indexOf(key);
  if(idx!=-1){
    if(idx<7){
      keyboard1.pressing[idx] = true;  
    }else{
      keyboard2.pressing[idx-7] = true;
    }
    player.play(idx);
  }
  
}

void keyReleased() {
  int idx = keys.indexOf(key);
  if(idx!=-1){
    if(idx<7){
      keyboard1.pressing[idx] = false;  
    }else{
      keyboard2.pressing[idx-7] = false;
    }
  }
}
