
// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(9, OUTPUT);
  pinMode(11, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(9, HIGH);
  digitalWrite(11, HIGH);
  delay(600);
  digitalWrite(9, LOW);
  delay(300);
  digitalWrite(11, LOW);
  delay(300);
  digitalWrite(11, HIGH);
  delay(300);
  digitalWrite(9, HIGH);
  delay(300);
  digitalWrite(9, LOW);
  digitalWrite(11, LOW);
  delay(600);
}
