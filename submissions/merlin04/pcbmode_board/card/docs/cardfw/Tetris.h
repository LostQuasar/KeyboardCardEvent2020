// File taken from Keebcard (https://github.com/rsheldiii/Keebcard/blob/master/Tetris.h), modified to support new screen, new GFX library, and new inputs

#include <stdint.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define PIXELS_IN_SHAPE 4

//TODO union type relativePosition with 4 bits for signed x and 4 for signed y


typedef struct {
  int8_t x;
  int8_t y;
} Position;

typedef struct {
  Position pixels[PIXELS_IN_SHAPE];
} Shape;

class Tetris {
  Position position;
  uint32_t score = 0;
  uint16_t lines = 0;
  uint8_t level = 0;

  Adafruit_SSD1306* oled;
  static uint8_t board[32];
  static const Shape shapes[];
  static const uint8_t numShapes;
  // so we don't fetch from progmem every frame
  static Shape shape;
  // required to keep track of rotations
  static uint8_t shapeIndex;

	public:
    Tetris(Adafruit_SSD1306* _oled);
		uint32_t run(void);
  private:
    void incrementLines(void);
    void incrementScore(uint8_t lines);
    uint16_t getMillisPerTick(void);
    bool checkCollision(Position delta);
    void addOrRemovePiece(bool add);
    void advancePiece(void);
    void assignRandomShape(void);
    void assignShape(uint8_t index);
    void checkForFullRows(void);
    void checkInputs(bool unsetFlags = false);
    void end(void);
    void goLeft(void);
    void goRight(void);
    void main(void);
    void resetButtons(void);
    void movePiece(bool moveDown);
    void renderBoard(bool wholeScreen = false, bool addPiece = true);
    void rotatePiece(void);
    void spawnNewPiece(void);
};
