# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "paddle.h" 1






extern int y1, y2, oldy1, oldy2;

void drawPaddles(int y1, int y2, u16 color);
void updatePaddles();
# 3 "main.c" 2
# 1 "ball.h" 1
extern int ballVX, ballVY, bX, bY, oldBX, oldBY;

void drawBall(int bX, int bY, u16 color);
void
updateBall();
# 4 "main.c" 2

u16 buttons;
u16 oldButtons;
u16 bgColor, fgColor;
int p1, p2;
int p1x, p2x, py;
int time;


void initialize();
void updateGame();
void draw();
void drawScore(int p1, int p2, u16 color, u16 bgColor);
void score(int player);
void winner();
void endGame();
void restartGame();


int main() {

    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        updateGame();
        waitForVBlank();
        draw();
    }
}


void initialize() {
    bgColor = ((31) | (24)<<5 | (29)<<10);
    fgColor = ((31) | (31)<<5 | (31)<<10);
    fillScreen(bgColor);
    time = 0;


    p1 = 0;
    p2 = 0;
    drawScore(p1, p2, fgColor, bgColor);


    y1 = 80;
    y2 = 80;
    oldy1 = y1;
    oldy2 = y2;
    drawPaddles(y1, y2, fgColor);



    bX = 120;
    bY = 80;
    oldBX = bX;
    oldBY = bY;
    drawBall(bX, bY, 0);


    ballVX = 2;
    ballVY = 1;

    (*(volatile unsigned short *)0x4000000) = 3 | (1<<10);
}

void updateGame() {
 updatePaddles();
    if (time % 2 == 0) {
        updateBall();
    }
    time += 3;


    if ((p1 == 3) || (p2 == 3)) {
        endGame();
    }


    if ((ballVX == 0) && ((~((*(volatile unsigned short *)0x04000130)) & ((1<<8))))) {
        restartGame();
    }
}

void draw() {
    drawPaddles(oldy1, oldy2, bgColor);
    drawPaddles(y1, y2, fgColor);
    oldy1 = y1;
    oldy2 = y2;

    drawScore(p1, p2, fgColor, bgColor);

    drawBall(oldBX, oldBY, bgColor);
    drawBall(bX, bY, 0);
}


void score(int player) {
    if (player == 1) {
        p1++;
    } else {
        p2++;
    }
}

void endGame() {

    if (p1 == 3) {
        winner(90, 100, 1, fgColor);
    } else {
        winner(90, 100, 2, fgColor);
    }


    bX = 120;
    bY = 80;
    ballVX = 0;
    ballVY = 0;
}

void restartGame() {

    if (p1 == 3) {
        winner(90, 100, 1, bgColor);
    } else {
        winner(90, 100, 2, bgColor);
    }


    drawScore(p1, p2, bgColor, bgColor);


    p1 = 0;
    p2 = 0;


    ballVX = 2;
    ballVY = 1;
}
