#include <Wire.h>
#include "dpad.cpp"

//struct for pieces

struct PieceSpace {
  byte umBlock[4][4];
  char Row;
  char Coloum;
};

class TinyTetris {
  byte pageArray[8] = { 0 };
  byte scoreDisplayBuffer[8][6] = { { 0 }, { 0 } };
  byte nextBlockBuffer[8][2] = { { 0 }, { 0 } };
  bool optomizePageArray[8] = { 0 };
  byte blockColoum[10] = { 0 };
  byte tetrisScreen[14][25] = { { 1 } , { 1 } };
  PieceSpace currentPiece = { 0 };
  PieceSpace oldPiece = { 0 };
  byte nextPiece = 0;
  //keyPress key = { 0 };
  bool gameOver = false;
  unsigned long moveTime = 0;
  int pageStart = 0;
  int pageEnd = 0;
  
  int score = 0;
  int acceleration = 0;
  int level = 0;
  int levellineCount = 0;
  int dropDelay = 1000;
  
  int lastKey = 0;
  
  public:
    TinyTetris();
    void Setup();
    int run(void);
  private:
    void OLEDCommand(byte command);
    void OLEDData(byte data);
    void fillTetrisArray(byte value);
    void fillTetrisScreen(byte value);
    void drawTetrisScreen();
    void drawTetrisLine(byte x);
    void loadPiece(byte pieceNumber, byte row, byte coloum, bool loadScreen);
    void drawPiece();
    void drawLandedPiece();
    void RotatePiece();
    bool movePieceDown();
    void movePieceLeft();
    void movePieceRight();
    bool checkColloision();
    void processCompletedLines();
    bool processKeys();
    void setScore(long score, bool blank);
    void setNextBlock(byte pieceNumber);
    void drawBottom();
    void drawSides();
};
