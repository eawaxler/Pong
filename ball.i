# 1 "ball.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "ball.c"
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
# 2 "ball.c" 2
# 1 "paddle.h" 1






extern int y1, y2, oldy1, oldy2;

void drawPaddles(int y1, int y2, u16 color);
void updatePaddles();
# 3 "ball.c" 2
# 1 "ball.h" 1
extern int ballVX, ballVY, bX, bY, oldBX, oldBY;

void drawBall(int bX, int bY, u16 color);
void updateBall();
# 4 "ball.c" 2

int ballVX, ballVY, bX, bY, oldBX, oldBY;
void score();

drawBall(int bX, int bY, u16 color) {
    drawRect(bX, bY, 3, 3, color);
}

void updateBall() {


    oldBX = bX;
    oldBY = bY;

    bX += ballVX;
    bY += ballVY;


    if (bY < 0) {
  bY = 0;
        ballVY *= -1;
 } else if (bY + 3 > 160) {
  bY = (160 - 1) - (3 - 1);
        ballVY *= -1;
    }


    if (collision(1, y1, 2, 20, bX, bY, 3, 3)) {
  bX = 1 + 2;
        ballVX *= -1;
    } else if (collision(237, y2, 2, 20, bX, bY, 3, 3)) {
        bX = (237 - 1) - (3 - 1);
        ballVX *= -1;
    }


    if (bX < 0) {
        bX = 120;
        bY = 80;
        ballVX *= -1;
        score(2);
    } else if (bX + 3 > 240) {
        bX = 120;
        bY = 80;
        ballVX *= -1;
        score(1);
    }
}
