import oscP5.*; 
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;


void setup() {
  size(700,100);
  frameRate(1);
   /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,12000);
  myRemoteLocation = new NetAddress("localhost",12000);
}

void draw(){
  background (255);
  sendOSC(); 
  }
  
void sendOSC(){
  String msg[]= loadStrings("http://www.polartide.org/pacrim/phppages/readclicklist.php");
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
