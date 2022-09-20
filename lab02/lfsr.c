#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "lfsr.h"

void lfsr_calculate(uint16_t *reg) {
    /* YOUR CODE HERE */
    uint16_t bit_0=*reg & 1;
    uint16_t bit_2=(*reg & (1<<2)) >>2;
    uint16_t bit_3=(*reg & (1<<3)) >>3;
    uint16_t bit_5=(*reg & (1<<5)) >>5;
    uint16_t bit_15=bit_0^bit_2^bit_3^bit_5;
    *reg=(*reg>>1) | (bit_15 <<15);
}

