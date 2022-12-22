//libary: use sketch/ import libary/ add libary/ minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//global variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup () {
  //size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("music download/Cycles.mp3"); //able to pass absolute path, file name & extension, and URL
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
  //key boar short cuts
  //First play button
  if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  //second play button, Loop ONCE
  if ( key=='L' || key=='l' ) song1.loop(1);//parameter is number of repeats
  //infinate loop
  if (key=='I' || key=='i' ) song1.loop();//peramiter is empty, means infinate loop
  //
  if (key=='M' || key=='m') { // MUTE button
    //
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
    //note: mute has no built in pause button and no built in rewind if song is near the end
    //note this mute algorithm is not smart
    //known ERROR once song playes mute acts like it doesn't work
  } //end MUTE button
  //
  //fast foward and fast reverse
  // built in question
  if (key=='F' || key=='f') song1.skip( 1000 );// skip foward 1 second(1000 miliseconds)
  if(key=='R' || key=='r') song1.skip( -1000 );// skip backwards 1 second, notice negitive, (1000 miliseconds)
}//End keyPressed
//
void mouseClicked() {
}//End mousePressed
//
//End Main Program
