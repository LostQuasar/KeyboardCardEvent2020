#ifdef ARDUINO_UNO
#define TWIREMAP
#endif

// On the PCB, the display is connected to the alternate I2C pins. This needs to be selected in Tools > I2C (TWI) pins.
#ifndef TWIREMAP
#error "This sketch and hardware assumes the alternate I2C/TWI pins are used, please select that option"
#endif

// Includes for display
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

Adafruit_SSD1306 display(128, 64, &Wire, -1);

// Pins

/*
   Buttons:
   [1]  [3]
   [2]  [4]
*/

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

// Menu

#define MENU_LENGTH 7
const String menuItems[MENU_LENGTH] = {
  "KeyPCB",
  "Reaction",
  "Tetris",
  "Simon",
  "Snake",
  "Scores",
  "Settings"
};
uint8_t currentlySelected = 0;

#ifndef ARDUINO_UNO
// Tetris not supported on Arduino Uno
#include "Tetris.h"
#endif

#include "Simon.h"

void setup()
{
  // There's header pins for a serial port on the back of the board, under the MCU
  Serial.begin(115200);
  Serial.println("Starting up");

  randomSeed(analogRead(4));

  // Display init
  // Not sure why I need this but I was getting a lot of strange
  // behavior from every component if I didn't add it
  delay(100);
  // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C))
  {
    Serial.println(F("SSD1306 allocation failed"));
    for (;;)
      ; // Don't proceed, loop forever
  }
  display.clearDisplay();
  display.display();

  pinMode(BUTTON1, INPUT_PULLUP);
  pinMode(BUTTON2, INPUT_PULLUP);
  pinMode(BUTTON3, INPUT_PULLUP);
  pinMode(BUTTON4, INPUT_PULLUP);

  doIntro();
  drawMenu();
}

void loop()
{
  // Main menu loop
  if (digitalRead(BUTTON1) == LOW)
  {
    // Up
    debouncePress(BUTTON1);
    if (currentlySelected > 0)
    {
      currentlySelected -= 1;
      drawMenu();
    }
  }
  if (digitalRead(BUTTON2) == LOW)
  {
    // Down
    debouncePress(BUTTON2);
    if (currentlySelected < MENU_LENGTH - 1)
    {
      currentlySelected += 1;
      drawMenu();
    }
  }
  if (digitalRead(BUTTON3) == LOW)
  {
    // Select
    debouncePress(BUTTON3);
    Serial.print("Selected: ");
    Serial.println(currentlySelected);
    // For whatever reason, my switch statement didn't work, so
    // I'm using a bunch of ifs
    if (currentlySelected == 0) {
      // KeyPCB
      keypcb();
    }
    if (currentlySelected == 1) {
      // Reaction game
    }
    if (currentlySelected == 2) {
      // Tetris
      Tetris tetris(&display);
      uint32_t tetrisScore = tetris.run();
    }
    if (currentlySelected == 3) {
      // Simon
      Simon simon(&display);
      uint8_t simonScore = simon.run();
    }
    if (currentlySelected == 4) {
      // Snake
    }
    if (currentlySelected == 5) {
      // High scores
    }
    if (currentlySelected == 6) {
      // Settings
      settings();
    }
    drawMenu();
  }
  if (digitalRead(BUTTON4) == LOW)
  {
    // Back
    debouncePress(BUTTON4);
    doIntro();
  }
}

void play_sound(int note, int duration)
{
  // TODO: Settings
  if (true)
  {
    tone(PIEZO_PIN, note, duration);
  }
}

void drawMenu()
{
  display.clearDisplay();
  display.setCursor(0, 0);
  for (uint8_t i = 0; i < MENU_LENGTH; i += 1) {
    if (currentlySelected == i) {
      display.setTextSize(2);
      display.setTextColor(BLACK, WHITE);
      display.println(" " + menuItems[i] + " ");
    }
    else {
      display.setTextSize(1);
      display.setTextColor(WHITE, BLACK);
      display.println(menuItems[i]);
    }
  }
  display.display();
}

void doIntro()
{
  display.clearDisplay();
  display.setCursor(0, 0);
  display.setTextSize(3);
  display.setTextColor(WHITE, BLACK);
  display.println("KeyPCB");
  display.setTextSize(1);
  display.println("Custom keyboard PCBs");
  display.println("https://keypcb.xyz");
  display.println("me@keypcb.xyz");
  display.println("Press any button");
  display.println("to continue...");
  display.display();
  while ((digitalRead(BUTTON1) == HIGH) && (digitalRead(BUTTON2) == HIGH) && (digitalRead(BUTTON3) == HIGH) && (digitalRead(BUTTON4) == HIGH)) {}
  delay(DEBOUNCE_DELAY);
  while ((digitalRead(BUTTON1) == LOW) || (digitalRead(BUTTON2) == LOW) || (digitalRead(BUTTON3) == LOW) || (digitalRead(BUTTON4) == LOW)) {}
}

void debouncePress(uint8_t buttonPin)
{
  delay(DEBOUNCE_DELAY);
  while (digitalRead(buttonPin) == LOW)
  {
  }
}

void keypcb() {
  bool exitApp = false;
  uint8_t page = 0;
  keypcb_drawPage(page);
  while (!exitApp) {
    if (digitalRead(BUTTON1) == LOW)
    {
      // Up
      debouncePress(BUTTON1);
      if (page > 0)
      {
        page -= 1;
        keypcb_drawPage(page);
      }
    }
    if (digitalRead(BUTTON2) == LOW)
    {
      // Down
      debouncePress(BUTTON2);
      if (page < 5)
      {
        page += 1;
        keypcb_drawPage(page);
      }
    }
    if (digitalRead(BUTTON3) == LOW)
    {
      // Exit
      debouncePress(BUTTON3);
      exitApp = true;
    }
    if (digitalRead(BUTTON4) == LOW)
    {
      // Exit
      debouncePress(BUTTON4);
      exitApp = true;
    }
  }
}

void keypcb_drawPage(uint8_t page) {
  display.clearDisplay();
  display.setCursor(0, 0);
  switch (page) {
    case 0:
      printH1("KeyPCB");
      printP("Designing custom");
      printP("keyboards");
      printH2("PCB design commission");
      printP("I design PCBs for");
      printP("people who want to");
      break;
    case 1:
      printP("turn their idea into");
      printP("a working keyboard.");
      printP("Email me at");
      printP("me@keypcb.xyz, or");
      printP("message me on");
      printP("Reddit (/u/keypcb).");
      printH2("Keyboards");
      printH2("Washington Macropad");
      break;
    case 2:
      printP("A macropad shaped");
      printP("like the state of");
      printP("Washington, made for");
      printP("the cKeys Winter 2020");
      printP("meetup. It supports");
      printP("MX, Alps, and Choc");
      printP("switches as well as a");
      printP("rotary encoder and an");
      break;
    case 3:
      printP("OLED display.");
      printH2("ErgoDash-LP");
      printP("ErgoDash-LP is a");
      printP("modification to the");
      printP("ErgoDash split ergo");
      printP("keyboard that allows");
      printP("it to use Kailh Choc");
      printP("low-profile switches.");
      break;
    case 4:
      printP("It was sold in a");
      printP("group buy from 2019.");
      printH2("Fractal");
      printP("Fractal is a 50%");
      printP("ortholinear keyboard");
      printP("kit sold in a group");
      printP("buy from 2018.");
      break;
    case 5:
      printH2("See more details on");
      printH2("the keyboards I've");
      printH2("designed on my");
      printH2("website,");
      printH2("https://keypcb.xyz.");
      break;
  }
  display.display();
}

void printH1(String text) {
  display.setTextSize(3);
  display.setTextColor(WHITE, BLACK);
  display.println(text);
}

void printH2(String text) {
  display.setTextSize(1);
  display.setTextColor(BLACK, WHITE);
  display.println(text);
}

void printP(String text) {
  display.setTextSize(1);
  display.setTextColor(WHITE, BLACK);
  display.println(text);
}

void settings() {
  display.clearDisplay();
  display.setCursor(0, 0);
  printP((String)"Free RAM: " + (String)freeMemory() + (String)"B");
  display.display();
  delay(2000);
}

#ifdef __arm__
// should use uinstd.h to define sbrk but Due causes a conflict
extern "C" char* sbrk(int incr);
#else  // __ARM__
extern char *__brkval;
#endif  // __arm__

int freeMemory() {
  char top;
#ifdef __arm__
  return &top - reinterpret_cast<char*>(sbrk(0));
#elif defined(CORE_TEENSY) || (ARDUINO > 103 && ARDUINO != 151)
  return &top - __brkval;
#else  // __arm__
  return __brkval ? &top - __brkval : &top - __malloc_heap_start;
#endif  // __arm__
}
