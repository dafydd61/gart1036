void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(9, OUTPUT);
  pinMode(11, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  int reading = analogRead(0);
  int readingScaled = reading / 4;
  analogWrite(9, readingScaled);
  delay(30);
}
