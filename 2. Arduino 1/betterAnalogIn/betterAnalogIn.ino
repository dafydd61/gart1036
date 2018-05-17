void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(9, OUTPUT);
  pinMode(11, OUTPUT);
  Serial.begin(9600);
}

// the loop function runs over and over again forever
void loop() {
  int reading = analogRead(0);
  Serial.println(reading);

  float readingMapped = map(reading, 54, 974, 0, 255);
  float readingConstrained = constrain(readingMapped, 0, 255);
  analogWrite(9, readingMapped);
  delay(30);
}
