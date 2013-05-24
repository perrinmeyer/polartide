import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import oscP5.*; 
import netP5.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class php2osc_v01 extends PApplet {

 


OscP5 oscP5;
NetAddress myRemoteLocation;


public void setup() {
  size(700,100);
  frameRate(1);
   /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,12000);
  myRemoteLocation = new NetAddress("localhost",12000);
}

public void draw(){
  background (255);
  sendOSC(); 
  }
  
public void sendOSC(){
  String msg[]= loadStrings("http://www.polartide.org/bellstate.php");
  if(msg != null){
    OscMessage myMessage = new OscMessage("/data");
    myMessage.add(msg[0]); /* add an int to the osc message */
    textSize(12);
    fill(0);
    text(msg[0], 10, 10, 700, 490);
  /* send the message */
    oscP5.send(myMessage, myRemoteLocation);
  }  
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "php2osc_v01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
