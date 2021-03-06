/*
 * TwigMotor library
 * Author: Mario Lukas
 * Last change: 2011-09-07
 *
 * A stepper motor example, steps forward and backward
 *
 * http://www.mariolukas.de
 */

#include <Wire.h>
#include <TwigMotor.h>


// change this to the number of steps on your motor
#define STEPS 48
// change this to the shield address
#define ADDR  0x28
// create an instance of the TwigMotor class, specifying
// number of steps and I2C address, here 0x28 motor shield 
// standard address is used
// change address by calling changeAddr(new_address,save_option);
// save_options:
// - SAVEADDR   
// - NOTSAVEADDR
TwigMotor stepper(STEPS);

void setup()
{
  // set the speed of the motor to 100 RPMs
  stepper.setSpeed(100);
}

void loop()
{

  // move 100 steps forward 
  stepper.step(0x28,100,FORWARD);
  delay(1000);
  // move 100 steps backward
  stepper.step(0x28,100,BACKWARD);
  // release stepper
  stepper.release(0x28);	
  delay(1000);
 
}
