#include "myLib.h"
#include "paddle.h"

int y1, y2, oldy1, oldy2;

void drawPaddles(int y1, int y2, u16 color) {
    drawRect(x1, y1, pW, pH, color);
    drawRect(x2, y2, pW, pH, color);
}

void updatePaddles() {
    // paddle 1 moves up and down
    if (BUTTON_HELD(BUTTON_UP)) {
		y1--;
	} else if (BUTTON_HELD(BUTTON_DOWN)) {
		y1++;
	}

    //paddle 2 moves up and down
    if (BUTTON_HELD(BUTTON_A)) {
		y2--;
	} else if (BUTTON_HELD(BUTTON_B)) {
		y2++;
	}

    // boundary checks
 	if (y1 < 0) { // y1 top
		oldy1 = y1;
		y1 = 0;
	} else if (y1 + pH > SCREENHEIGHT) { // y1 bottom
		oldy1 = y1;
		y1 = (SCREENHEIGHT - 1) - (pH - 1);
	}
 	if (y2 < 0) { // y1 top
	    oldy2 = y2;
	    y2 = 0;
	}
    else if ((y2 + pH) > SCREENHEIGHT) { // y1 bottom
		oldy2 = y2;
		y2 = (SCREENHEIGHT - 1) - (pH - 1);
	}
}