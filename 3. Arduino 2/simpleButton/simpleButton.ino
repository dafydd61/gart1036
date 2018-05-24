boolean lightOn = false;  // Remember if the light is on or off
int lastReading;          // Remember whtehr the button was pressed last time

void setup() {
  pinMode(9, OUTPUT);
  pinMode(2, INPUT);
}

void loop() {
  int reading = digitalRead(2);

  // Is the button pressed and was it NOT PRESSED last time?
  // (has there been a change?)
  if (reading == LOW && lastReading == HIGH) {
    // If the light is on, turn it off, and vice versa
    if (lightOn == true) {
      lightOn = false;
    } else {
      lightOn = true;
    }
  }

  //  Actually turn the light on or off
  if (lightOn == true) {
    digitalWrite(9, HIGH);    
  } else {
    digitalWrite(9, LOW);    
  }
  
  delay(30); // Debounce!

  // Remember the last reading so we can compare it next time
  lastReading = reading;
}
