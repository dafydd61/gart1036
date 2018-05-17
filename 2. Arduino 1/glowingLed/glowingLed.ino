// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(9, OUTPUT);
  pinMode(11, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  analogWrite(9, 100);
  delay(600);
  analogWrite(9, 0);
  delay(600);
  analogWrite(9, 255);
  delay(600);
  analogWrite(9, 30);
  delay(600);
  analogWrite(9, 200);
  delay(600);
}
