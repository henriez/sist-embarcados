#ifndef FONTS_H
#define FONTS_H

#include <stdint.h>

typedef struct {
	uint16_t width;
	uint16_t height;
	uint16_t min_character;
	uint16_t max_character;
	const uint16_t *data;
} Font;

extern Font Font11x18;

#endif
