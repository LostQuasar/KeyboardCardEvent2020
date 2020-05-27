#include "Reaction.h"

#define BUTTON1 0
#define BUTTON2 1
#define BUTTON3 2
#define BUTTON4 3

#define PIEZO_PIN 11

#define DEBOUNCE_DELAY 20

Reaction::Reaction(Adafruit_SSD1306 *_oled)
{
  oled = _oled;
}

uint32_t Reaction::run()
{
  return main();
}

int Reaction::main()
{
  delay(200);
  while ((digitalRead(BUTTON1) == LOW) || (digitalRead(BUTTON2) == LOW) || (digitalRead(BUTTON3) == LOW) || (digitalRead(BUTTON4) == LOW)) {}
  
  timeAmount = random(3000, 8000);
  prevMillis = millis();

  for(uint8_t i = 0; i < 4; i++) {
    pressed[i] = false;
  }
  
  while(!(pressed[0] && pressed[1] && pressed[2] && pressed[3])) {
    for(uint8_t i = 0; i < 4; i++) {
      if(digitalRead(i) == LOW && !pressed[i]) {
        scores[i] = (millis() - (prevMillis + timeAmount));
        tone(PIEZO_PIN, 300, 50);
        pressed[i] = true;
      }
    }
    drawGame();
  }

  delay(3000);
  
  oled->clearDisplay();
  oled->setCursor(0, 0);
  oled->setTextSize(2);

  int bestScore = scores[0];
  uint8_t winner = 0;
  for(uint8_t i = 0; i < 4; i++) {
    if(!(i == 0) && (abs(scores[i]) < abs(bestScore))) {
      bestScore = scores[i];
      winner = i;
    }
  }
  
  // Display message
  oled->print((String)(winner + 1) + (String)" wins!");
  oled->setTextSize(1);
  oled->setCursor(0, 22);
  oled->println((String)"Player " + (String)(winner + 1) + (String)" got a score of " + (String)bestScore);
  oled->println("Press any button");
  oled->println("to exit.");
  oled->display();

  while ((digitalRead(BUTTON1) == HIGH) && (digitalRead(BUTTON2) == HIGH) && (digitalRead(BUTTON3) == HIGH) && (digitalRead(BUTTON4) == HIGH)) {}
  delay(DEBOUNCE_DELAY);
  while ((digitalRead(BUTTON1) == LOW) || (digitalRead(BUTTON2) == LOW) || (digitalRead(BUTTON3) == LOW) || (digitalRead(BUTTON4) == LOW)) {}
  return bestScore;
}

void Reaction::drawGame() {
  oled->clearDisplay();

  for(uint8_t i = 0; i < 4; i++) {
    switch(i) {
      case 0:
        oled->setCursor(0, 0);
        break;
      case 1:
        oled->setCursor(0, 34);
        break;
      case 2:
        oled->setCursor(94, 0);
        break;
      case 3:
        oled->setCursor(94, 34);
        break;
    }
    
    if(pressed[i]) {
      oled->setTextSize(1);
      oled->print((String)scores[i]);
    }
    else {
      oled->setTextSize(3);
      oled->print((String)(i+1));
    }
  }

  oled->setCursor(43, 28);
  oled->setTextSize(1);
  long currentMillis = millis();
  if(currentMillis < prevMillis + timeAmount) {
    oled->print((String)"-" + (String)((prevMillis + timeAmount) - currentMillis));
  }
  else {
    oled->print((String)(currentMillis - (prevMillis + timeAmount)));
  }
  
  oled->display();
}
