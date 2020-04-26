#include "Simon.h"
#define DEBUG_SIMON

#ifndef ARDUINO_UNO
#define BUTTON1 0
#define BUTTON2 1
#define BUTTON3 2
#define BUTTON4 4

#define PIEZO_PIN 11
#endif

#ifdef ARDUINO_UNO
#define BUTTON1 2
#define BUTTON2 3
#define BUTTON3 4
#define BUTTON4 5

#define PIEZO_PIN 11
#endif
#define DEBOUNCE_DELAY 20

Simon::Simon(Adafruit_SSD1306 *_oled)
{
  oled = _oled;
}

uint32_t Simon::run()
{
  dP("Simon::run");
  main();
  return level;
}

void Simon::main()
{
  dP("Simon::main");
  // Original Simon game had 35 levels
  uint8_t sequence[34];
  for (uint8_t i = 0; i < 35; i++) {
    sequence[i] = random(4);
  }
  dP("Generated sequence");

  bool choseIncorrect = false;
  for (level = 0; ((level < 35) && !choseIncorrect); level++)
  {
    drawButtonState(-1);
    delay(500);
    dP("Play tones");
    for (uint8_t i = 0; i <= level; i++) {
      drawButtonState(sequence[i]);
      playTone(sequence[i], 400);
      delay(400);
      drawButtonState(-1);
      delay(300);
    }

    dP("User input");
    dP("Level: ");
    dP((String)level);
    for (uint8_t i = 0; ((i <= level) && !choseIncorrect); i++) {
      dP("i");
      dP((String)i);
      uint8_t buttonPressed = getButtonPress();
      dP("sequence[i]");
      dP((String)(sequence[i]));
      dP("Button");
      dP((String)buttonPressed);
      if (!(buttonPressed == sequence[i])) {
        dP("Set choseIncorrect");
        choseIncorrect = true;
      }
    }
    dP("-----------");
  }
  dP("Game over");
  oled->clearDisplay();
  oled->setCursor(0, 0);
  oled->setTextSize(2);

  if (choseIncorrect) {
    // Display fail message
    oled->print("Nice try!");
    oled->setTextSize(1);
    oled->setCursor(0, 22);
    oled->println((String)"You got to level " + (String)level);
  }
  else {
    // Display success message
    oled->print("Good job!");
    oled->setTextSize(1);
    oled->setCursor(0, 22);
    oled->println("You completed level 35!");
  }
  oled->println("Press any button");
  oled->println("to exit.");
  oled->display();

  while ((digitalRead(BUTTON1) == HIGH) && (digitalRead(BUTTON2) == HIGH) && (digitalRead(BUTTON3) == HIGH) && (digitalRead(BUTTON4) == HIGH)) {}
  delay(DEBOUNCE_DELAY);
  while ((digitalRead(BUTTON1) == LOW) || (digitalRead(BUTTON2) == LOW) || (digitalRead(BUTTON3) == LOW) || (digitalRead(BUTTON4) == LOW)) {}
}

void Simon::drawButtonState(uint8_t pressedButton) {
  oled->clearDisplay();

  // x = 0, y = 0, w = 30, h = 30, radius = 4, color = 1
  if (pressedButton == 0)
    oled->drawRoundRect(0, 0, 30, 30, 4, 1);
  else
    oled->fillRoundRect(0, 0, 30, 30, 4, 1);

  if (pressedButton == 1)
    oled->drawRoundRect(0, 34, 30, 30, 4, 1);
  else
    oled->fillRoundRect(0, 34, 30, 30, 4, 1);

  if (pressedButton == 2)
    oled->drawRoundRect(98, 0, 30, 30, 4, 1);
  else
    oled->fillRoundRect(98, 0, 30, 30, 4, 1);

  if (pressedButton == 3)
    oled->drawRoundRect(98, 34, 30, 30, 4, 1);
  else
    oled->fillRoundRect(98, 34, 30, 30, 4, 1);

  // Level
  oled->setCursor(43, 28);
  oled->print((String)"Level " + (String)(level + 1));

  oled->display();
}

void Simon::playTone(uint8_t pressedButton, int duration) {
  if (duration == -1) {
    switch (pressedButton) {
      case 0:
        tone(PIEZO_PIN, 392);
        break;
      case 1:
        tone(PIEZO_PIN, 262);
        break;
      case 2:
        tone(PIEZO_PIN, 330);
        break;
      case 3:
        tone(PIEZO_PIN, 784);
        break;
    }
  }
  else {
    switch (pressedButton) {
      case 0:
        tone(PIEZO_PIN, 392, duration);
        break;
      case 1:
        tone(PIEZO_PIN, 262, duration);
        break;
      case 2:
        tone(PIEZO_PIN, 330, duration);
        break;
      case 3:
        tone(PIEZO_PIN, 784, duration);
        break;
    }
  }
}

uint8_t Simon::getButtonPress() {
  bool button1 = false;
  bool button2 = false;
  bool button3 = false;
  bool button4 = false;
  dP("Get button press");
  while (!(button1 || button2 || button3 || button4)) {
    // Read buttons
    button1 = (digitalRead(BUTTON1) == LOW);
    button2 = (digitalRead(BUTTON2) == LOW);
    button3 = (digitalRead(BUTTON3) == LOW);
    button4 = (digitalRead(BUTTON4) == LOW);
  }
  dP("debounce");
  if (button1) {
    delay(DEBOUNCE_DELAY);
    drawButtonState(0);
    playTone(0, -1);
    while (digitalRead(BUTTON1) == LOW) {}
    noTone(PIEZO_PIN);
    drawButtonState(-1);
    return 0;
  }
  else if (button2) {
    delay(DEBOUNCE_DELAY);
    drawButtonState(1);
    playTone(1, -1);
    while (digitalRead(BUTTON2) == LOW) {}
    noTone(PIEZO_PIN);
    drawButtonState(-1);
    return 1;
  }
  else if (button3) {
    delay(DEBOUNCE_DELAY);
    drawButtonState(2);
    playTone(2, -1);
    while (digitalRead(BUTTON3) == LOW) {}
    noTone(PIEZO_PIN);
    drawButtonState(-1);
    return 2;
  }
  else if (button4) {
    delay(DEBOUNCE_DELAY);
    drawButtonState(3);
    playTone(3, -1);
    while (digitalRead(BUTTON4) == LOW) {}
    noTone(PIEZO_PIN);
    drawButtonState(-1);
    return 3;
  }
}

void Simon::dP(String str) {
#ifdef DEBUG_SIMON
  Serial.println(str);
#endif
}
