#include "myLib.h"
#include "paddle.h"
#include "ball.h"

int ballVX, ballVY, bX, bY, oldBX, oldBY;
void score();

drawBall(int bX, int bY, u16 color) {
    drawRect(bX, bY, bH, bH, color);
}

void updateBall() {

    //update ball position
    oldBX = bX;
    oldBY = bY;
    
    bX += ballVX;
    bY += ballVY;

    //bounce off top and bottom
    if (bY < 0) { // top
		bY = 0;
        ballVY *= -1;
	} else if (bY + bH > SCREENHEIGHT) {
		bY = (SCREENHEIGHT - 1) - (bH - 1);
        ballVY *= -1;
    }

    //collision check paddles & bounce off of them
    if (collision(x1, y1, pW, pH, bX, bY, bH, bH)) {
		bX = x1 + pW;
        ballVX *= -1;
    } else if (collision(x2, y2, pW, pH, bX, bY, bH, bH)) {
        bX = (x2 - 1) - (bH - 1);
        ballVX *= -1;
    }

    //collision check walls & add points
    if (bX < 0) {   // left paddle misses
        bX = 120;
        bY = 80;
        ballVX *= -1;
        score(2);
    } else if (bX + bH > SCREENWIDTH) { //right paddle misses
        bX = 120;
        bY = 80;
        ballVX *= -1;
        score(1);
    }
}