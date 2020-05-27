/* 
 * 
 * Dpad for Arduino TinyTetris 
 * 
 * Designed for https://github.com/AJRussell/Tiny-Tetris
 * 
 * Clumsy code by tobozo (c+) 2016
 * Apologies for coding horror
 * 
 */
 
#ifndef DPADCPP
#define DPADCPP

#include <Arduino.h>

static int dpadwarp[5] = { 0,0,0,0,0 };
static volatile int Debounce = 0;
static volatile bool processKey = true;
static volatile int currentPos;

static int buttonMap[] = { 3, 4, 2, 1 };

class Dpad
{

  static const int DebounceMax = 10;
  
  public:

    static int getPos() {
      
      currentPos = getPosition()*1;
      delay(100);
      return currentPos;
    }

    static boolean DoDebounce() {
      Debounce++;
      if(Debounce > DebounceMax) {
        return true;
      }
      return false;
    }

    static int setAccel(int acceleration, int offset) {
      if(processKey) {
        dpadwarp[currentPos] = millis();
      }
      if(millis() < dpadwarp[currentPos] + offset) {
        processKey = false;
      } else {
        processKey = true;
        acceleration = acceleration + 70;
        if (acceleration > offset) {
          acceleration = offset;
        }
      }
      return acceleration;
    }

  private:
  
    static int getPosition() {
      for(int i = 0; i < 4; i++) {
        if(digitalRead(i) == LOW) {
          return buttonMap[i];
        }
      }
      return -1;
    }
};

#endif



 
