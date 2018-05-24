/*
 * poker.ino
 * When you open the book (pin 2 -> HIGH), push a marble down a ramp
 */

#include <Servo.h>

int lastReading;
boolean isPoking; // are we pushing the marble?
int speedSlow = 1; // slow movement - for < 120°
int speedFast = 20; // fast - a last little bump

int inputPin = 2;
int servoPin = 9;

Servo poker;
int angle = 0; // remember the servo angle

void setup() {
  poker.attach(servoPin);
  pinMode(inputPin, INPUT_PULLUP); // Don't need a pull up resistor!
}

void loop() {

  int reading = digitalRead (inputPin);

  if (reading == HIGH && lastReading == LOW) {
    // if the book has been opened but last time it was closed, start pushing
    isPoking = true;
    delay(50); // LONG debounce
  } else if (reading == LOW) {
    // if the book is closed, go to 0 (or stary there)
    isPoking = false;
    delay(50);
  }

  if (isPoking) {
    // if we're moving towards the marble...
    if (angle < 120) {
      // ...and we're far away, move slowly
      angle += speedSlow;
    } else if (angle <= 180) {
      // ...and we're close, give it a little push
      angle += speedFast;
    }
  } else {
    // reset to 0
    angle = 0;
  }

  // Finally, move the servo
  poker.write(angle);
  delay(15);
}
