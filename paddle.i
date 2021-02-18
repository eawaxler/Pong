# 1 "paddle.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "paddle.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 25 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 44 "myLib.h"
void setPixel(int col, int row, unsigned short color);
void drawRect(int col, int row, int width, int height, unsigned short color);
void fillScreen(unsigned short color);


void waitForVBlank();
# 69 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 79 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "paddle.c" 2
# 1 "paddle.h" 1






extern int y1, y2, oldy1, oldy2;

void drawPaddles(int y1, int y2, u16 color);
void updatePaddles();
# 3 "paddle.c" 2

int y1, y2, oldy1, oldy2;

void drawPaddles(int y1, int y2, u16 color) {
    drawRect(1, y1, 2, 20, color);
    drawRect(237, y2, 2, 20, color);
}

void updatePaddles() {

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
  y1--;
 } else if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
  y1++;
 }


    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<0)))) {
  y2--;
 } else if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<1)))) {
  y2++;
 }


  if (y1 < 0) {
  oldy1 = y1;
  y1 = 0;
 } else if (y1 + 20 > 160) {
  oldy1 = y1;
  y1 = (160 - 1) - (20 - 1);
 }
  if (y2 < 0) {
     oldy2 = y2;
     y2 = 0;
 }
    else if ((y2 + 20) > 160) {
  oldy2 = y2;
  y2 = (160 - 1) - (20 - 1);
 }
}
