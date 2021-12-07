import processing.sound.*;  


class KeyboardPlayer {
  
  SoundFile[] sounds;
  KeyboardPlayer(SoundFile[] sounds) {
    this.sounds = sounds;
  }
  
  void play(int key){
    sounds[key].play();
  }

}
