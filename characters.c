#include "myLib.h"
int p1x, p2x, py;

//locations of score on screen
p1x = 60;
p2x = 180;
py = 30;

//draw individual scores
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

// draw "WINS!"
void wins(int x, int y, u16 color) {
    //W
    drawRect(x, y, 1, 6, color);
    drawRect(x + 4, y, 1, 6, color);
    drawRect(x + 2, y + 4, 1, 2, color);
    setPixel(x + 1, y + 6, color);
    setPixel(x + 3, y + 6, color);

    //I
    drawRect(x + 6, y, 3, 1, color);
    drawRect(x + 6, y + 6, 3, 1, color);
    drawRect(x + 7, y + 1, 1, 5, color);

    //N
    drawRect(x + 10, y, 1, 7, color);
    drawRect(x + 13, y, 1, 7, color);
    setPixel(x + 11, y + 2, color);
    setPixel(x + 12, y + 3, color);

    //S
    drawRect(x + 15, y + 1, 1, 2, color);
    drawRect(x + 16, y, 2, 1, color);
    drawRect(x + 16, y + 3, 2, 1, color);
    drawRect(x + 16, y + 6, 2, 1, color);
    drawRect(x + 18, y + 4, 1, 2, color);
    setPixel(x + 18, y + 1, color);
    setPixel(x + 15, y + 5, color);

    //!
    drawRect(x + 20, y, 1, 5, color);
    setPixel(x + 20, y + 6, color);

}

// draw "PLAYER [PLAYER #]"
void winner(int x, int y, int player, u16 color) {
    //P
    drawRect(x, y, 3, 1, color);
    drawRect(x, y + 1, 1, 6, color);
    drawRect(x + 3, y + 1, 1, 2, color);
    drawRect(x + 1, y + 3, 2, 1, color);

    //L
    drawRect(x + 5, y, 1, 6, color);
    drawRect(x + 5, y + 6, 4, 1, color);

    //A
    drawRect(x + 11, y, 2, 1, color);
    drawRect(x + 10, y + 1, 1, 6, color);
    drawRect(x + 13, y + 1, 1, 6, color);
    drawRect(x + 11, y + 3, 2, 1, color);

    //Y
    drawRect(x + 15, y, 1, 3, color);
    drawRect(x + 18, y, 1, 6, color);
    drawRect(x + 16, y + 3, 2, 1, color);
    drawRect(x + 16, y + 6, 2, 1, color);
    setPixel(x + 15, y + 5, color);

    //E
    drawRect(x + 20, y, 1, 6, color);
    drawRect(x + 20, y, 4, 1, color);
    drawRect(x + 20, y + 6, 4, 1, color);
    drawRect(x + 20, y + 3, 3, 1, color);

    //R
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

//draw each player's score on screen
void drawScore(int p1, int p2, u16 color, u16 bgColor) {
    //draw score for player one
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

     //draw score for player two
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


