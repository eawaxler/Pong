#include "myLib.h"
#include "paddle.h"
#include "ball.h"

u16 buttons;
u16 oldButtons;
u16 bgColor, fgColor;
int p1, p2;
int p1x, p2x, py;
int time;

// prototypes
void initialize();
void updateGame();
void draw();
void drawScore(int p1, int p2, u16 color, u16 bgColor);
void score(int player);
void winner();
void endGame();
void restartGame();


int main() {
    // first, set up
    initialize();

    while(1) {
        // update buttons
        oldButtons = buttons;
        buttons = BUTTONS;

        updateGame();
        waitForVBlank();
        draw();
    }
}

// sets up GBA
void initialize() {
    bgColor = LIGHTPINK;
    fgColor = WHITE;
    fillScreen(bgColor);
    time = 0;

    //player scores start at 0
    p1 = 0;
    p2 = 0;
    drawScore(p1, p2, fgColor, bgColor);

    //paddles start in the middle
    y1 = 80;
    y2 = 80;
    oldy1 = y1;
    oldy2 = y2;
    drawPaddles(y1, y2, fgColor);


    //ball starts in the middle
    bX = 120;
    bY = 80; 
    oldBX = bX;
    oldBY = bY;
    drawBall(bX, bY, BLACK);

    //initial ball velocity
    ballVX = 2;
    ballVY = 1;

    REG_DISPCTL = MODE3 | BG2_ENABLE;
}

void updateGame() {
	updatePaddles(); 
    if (time % 2 == 0) {
        updateBall();
    }
    time += 3;

    //check end game state
    if ((p1 == 3) || (p2 == 3)) {
        endGame();
    }

    //check to restart
    if ((ballVX == 0) && (BUTTON_HELD(BUTTON_R))) {
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
    drawBall(bX, bY, BLACK);
}

//player scores a point
void score(int player) {
    if (player == 1) {
        p1++;
    } else {
        p2++;
    }
}

void endGame() {
    //print win statement
    if (p1 == 3) {
        winner(90, 100, 1, fgColor);
    } else {
        winner(90, 100, 2, fgColor);
    }

    //stop ball in the center
    bX = 120;
    bY = 80;
    ballVX = 0;
    ballVY = 0;
}

void restartGame() {
    //clear win statement
    if (p1 == 3) {
        winner(90, 100, 1, bgColor);
    } else {
        winner(90, 100, 2, bgColor);
    }

    //clear player scores
    drawScore(p1, p2, bgColor, bgColor);

    //set player scores to zero
    p1 = 0;
    p2 = 0;

    //restart ball movement
    ballVX = 2;
    ballVY = 1;
}