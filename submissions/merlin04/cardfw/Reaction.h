#include <Adafruit_GFX.h>
#include "Adafruit_SSD1306.h"

class Reaction {
  Adafruit_SSD1306* oled;
  int scores[4];
  bool pressed[4];
  long prevMillis;
  int timeAmount;
  
  public:
    Reaction(Adafruit_SSD1306* _oled);
    uint32_t run(void);
  private:
    int main(void);
    void drawGame(void);
};
