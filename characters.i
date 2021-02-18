# 1 "characters.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "characters.c"
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
# 2 "characters.c" 2
int p1x, p2x, py;


p1x = 60;
p2x = 180;
py = 30;


void drawZero(int x, int y, u16 color) {
    drawRect(x + 1, y, 4, 1, color);
    drawRect(x, y + 1, 2, 5, color);
    drawRect(x + 4, y + 1, 2, 5, color);
    drawRect(x + 1, y + 6, 4, 1, color);
}

void drawOne(int x, int y, u16 color) {
    drawRect(x + 1, y, 2, 6, color);
    setPixel(x, y + 1, color);
    drawRect(x, y + 6, 4, 1, color);
}

void drawTwo(int x, int y, u16 color) {
    drawRect(x + 1, y, 4, 1, color);
    drawRect(x, y + 1, 2, 1, color);
    drawRect(x + 4, y + 1, 2, 2, color);
    drawRect(x + 2, y + 3, 3, 1, color);
    drawRect(x + 1, y + 4, 2, 1, color);
    drawRect(x, y + 5, 2, 1, color);
    drawRect(x, y + 6, 6, 1, color);
}

void drawThree(int x, int y, u16 color) {
    drawRect(x + 1, y, 4, 1, color);
    drawRect(x, y + 1, 2, 1, color);
    drawRect(x + 4, y + 1, 2, 2, color);
    drawRect(x + 2, y + 3, 3, 1, color);
    drawRect(x + 4, y + 4, 2, 2, color);
    drawRect(x, y + 5, 2, 1, color);
    drawRect(x + 1, y + 6, 4, 1, color);

}


void wins(int x, int y, u16 color) {

    drawRect(x, y, 1, 6, color);
    drawRect(x + 4, y, 1, 6, color);
    drawRect(x + 2, y + 4, 1, 2, color);
    setPixel(x + 1, y + 6, color);
    setPixel(x + 3, y + 6, color);


    drawRect(x + 6, y, 3, 1, color);
    drawRect(x + 6, y + 6, 3, 1, color);
    drawRect(x + 7, y + 1, 1, 5, color);


    drawRect(x + 10, y, 1, 7, color);
    drawRect(x + 13, y, 1, 7, color);
    setPixel(x + 11, y + 2, color);
    setPixel(x + 12, y + 3, color);


    drawRect(x + 15, y + 1, 1, 2, color);
    drawRect(x + 16, y, 2, 1, color);
    drawRect(x + 16, y + 3, 2, 1, color);
    drawRect(x + 16, y + 6, 2, 1, color);
    drawRect(x + 18, y + 4, 1, 2, color);
    setPixel(x + 18, y + 1, color);
    setPixel(x + 15, y + 5, color);


    drawRect(x + 20, y, 1, 5, color);
    setPixel(x + 20, y + 6, color);

}


void winner(int x, int y, int player, u16 color) {

    drawRect(x, y, 3, 1, color);
    drawRect(x, y + 1, 1, 6, color);
    drawRect(x + 3, y + 1, 1, 2, color);
    drawRect(x + 1, y + 3, 2, 1, color);


    drawRect(x + 5, y, 1, 6, color);
    drawRect(x + 5, y + 6, 4, 1, color);


    drawRect(x + 11, y, 2, 1, color);
    drawRect(x + 10, y + 1, 1, 6, color);
    drawRect(x + 13, y + 1, 1, 6, color);
    drawRect(x + 11, y + 3, 2, 1, color);


    drawRect(x + 15, y, 1, 3, color);
    drawRect(x + 18, y, 1, 6, color);
    drawRect(x + 16, y + 3, 2, 1, color);
    drawRect(x + 16, y + 6, 2, 1, color);
    setPixel(x + 15, y + 5, color);


    drawRect(x + 20, y, 1, 6, color);
    drawRect(x + 20, y, 4, 1, color);
    drawRect(x + 20, y + 6, 4, 1, color);
    drawRect(x + 20, y + 3, 3, 1, color);


    drawRect(x + 26, y, 2, 1, color);
    drawRect(x + 25, y + 1, 1, 6, color);
    drawRect(x + 28, y + 1, 1, 2, color);
    drawRect(x + 28, y + 4, 1, 3, color);
    drawRect(x + 26, y + 3, 2, 1, color);

    if (player == 1) {
        drawOne(x + 34, y, color);
        wins(x + 43, y, color);
    } else {
        drawTwo(x + 34, y, color);
        wins(x + 44, y, color);
    }
}


void drawScore(int p1, int p2, u16 color, u16 bgColor) {

    switch (p1) {
        case 0:
            drawZero(p1x, py, color);
            break;
        case 1:
            drawZero(p1x, py, bgColor);
            drawOne(p1x, py, color);
            break;
        case 2:
            drawOne(p1x, py, bgColor);
            drawTwo(p1x, py, color);
            break;
        case 3:
            drawTwo(p1x, py, bgColor);
            drawThree(p1x, py, color);
            break;
        default:
            break;
    }


    switch (p2) {
        case 0:
            drawZero(p2x, py, color);
            break;
        case 1:
            drawZero(p2x, py, bgColor);
            drawOne(p2x, py, color);
            break;
        case 2:
            drawOne(p2x, py, bgColor);
            drawTwo(p2x, py, color);
            break;
        case 3:
            drawTwo(p2x, py, bgColor);
            drawThree(p2x, py, color);
            break;
        default:
            break;
    }
}
