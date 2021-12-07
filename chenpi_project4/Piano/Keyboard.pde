class Keyboard{
  float offsetX = 0;
  float offsetY = 0;
  float keyHeight = 120;
  float keyWidth = 20;
  float blackKeyWidth;
  float blackKeyHeight;
  float[] blackPos = {1, 2, 4, 5, 6};
  boolean[] pressing = new boolean[7]; 
  
  void drawKeyBoard() {
    float x = offsetX;
    float y = offsetY;
    blackKeyHeight = keyHeight*0.6;
    blackKeyWidth = keyWidth*0.8;
    for(int i=0;i<7;i++) {
      fill(255);
      stroke(100);
      if(pressing[i]){
        fill(#79c4ed);
      }      
      rect(x, y, keyWidth, keyHeight);
      x+=keyWidth;
    }
    for(float pos: blackPos){
      x = offsetX + keyWidth*pos-blackKeyWidth/2;
      y = offsetY;
      fill(0);
      stroke(0);
      rect(x, y, blackKeyWidth, blackKeyHeight);
    }
   
  }
  
}
