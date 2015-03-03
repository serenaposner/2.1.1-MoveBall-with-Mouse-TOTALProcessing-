/*
Processing sketch to control the movement of a ball on a servo with 
a graphic image of a ball, controlled by the mouse
Serena Posner
DIGF 2B03 Physical Computing
OCAD University
Created on 022515
*/
import org.firmata.*;
import cc.arduino.*;
import processing.serial.*;       

Arduino arduino;

float theCurve=mouseX+100;
Serial port;  

void setup(){
  background(255,200,200);
  size(400,400);
  noStroke();
    arduino = new Arduino(this, Arduino.list()[4], 57600);
    arduino.pinMode(7, Arduino.SERVO);
 
 
}
 
 void draw(){
   background(255,200,200);
   
   if (mouseX < 200){
     theCurve = 0-mouseX+300;
     fill (250,250,250);
  ellipse (mouseX,theCurve,100,100);
   }
   else{
     fill (250,250,250);
  ellipse (mouseX,mouseX-100,100,100);
               
   
   }
 arduino.servoWrite(7, constrain(mouseX/2, 0, 180));
 }
  

  
   

