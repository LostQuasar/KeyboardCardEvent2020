#include <stdint.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define LEFT_BUTTON 0
#define MIDDLE_BUTTON 1
#define RIGHT_BUTTON 2

typedef struct SPosition {
  uint8_t x;
  uint8_t y;
} SPosition;

enum Direction {LEFT = 0, UP = 1, RIGHT = 2, DOWN = 3 };

typedef struct QuadrupleDirection  {
  Direction firstDirection : 2;
  Direction secondDirection : 2;
  Direction thirdDirection : 2;
  Direction fourthDirection : 2;
} QuadrupleDirection;

class SnakePath {
  static QuadrupleDirection snakePath[192]; // the path the snake travels, starting at the head. 2 bits per for cardinal neighbors, a max of 1024 pixels * 2 bits / 8

  public:
    Direction get(uint16_t index);
    void set(uint16_t index, Direction direction);
};

class Snake {
  static SnakePath snakePath;

  // STARTS AT THE TAIL
  static uint8_t board[96]; // 16 x 64 pixel board, / 8 for uint8
  static SPosition headPosition; // position of head of snake
  static SPosition tailPosition; // position of tail of snake
  static SPosition foodPosition;

  static Direction direction; // direction of the snake
  static Direction lastDirection;

  static uint16_t score;
  static bool gameOver;
  static bool scoredThisTurn;
  static uint8_t time;
  static uint8_t debounce;
  static uint8_t linksToAdd;

  Adafruit_SSD1306* oled;


  public:
    Snake(Adafruit_SSD1306* _oled);
    uint16_t run(void);
  private:
    void setup(void);
    void main(void);
    void moveSnake(void);
    void renderScreen(void);
    void sendToGrid(SPosition position, bool value);
    void checkInputs(void);
    void checkForPause(void);
    void updateTailPosition(void);
    void updateHeadPosition(void);
    void pushNewLink(void);
    void addDeltaToPosition(SPosition &pos, Direction delta);
    void checkGameOver(void);
    void renderRow(uint8_t row);
    void checkForScore(void);
    void setNewFoodPosition(void);
    bool checkForCollision(SPosition collisionPosition, bool includeHead);
};
