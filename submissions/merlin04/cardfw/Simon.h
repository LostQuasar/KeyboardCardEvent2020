#include <Adafruit_GFX.h>
#include "Adafruit_SSD1306.h"

class Simon {
  Adafruit_SSD1306* oled;
  int level = 0;

	public:
    Simon(Adafruit_SSD1306* _oled);
		uint32_t run(void);
  private:
    void main(void);
    void drawButtonState(uint8_t pressedButton);
    void playTone(uint8_t pressedButton, int duration);
    uint8_t getButtonPress();
    void dP(String str);
};
