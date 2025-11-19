#ifndef SRC_ACCELEROMETER_ACCELEROMETER_H_
#define SRC_ACCELEROMETER_ACCELEROMETER_H_

#include "main.h"

#define ACCELEROMETER_OK              0
#define ACCELEROMETER_ERROR_NO_DEVICE 1
#define ACCELEROMETER_ERROR_WRONG_ID  2
#define ACCELEROMETER_ERROR_READ_FAIL 3
#define ACCELEROMETER_ERROR_WRITE_FAIL 4

extern I2C_HandleTypeDef hi2c1;

// implemented with an ADXL345, but caller doesnt need to know
uint8_t accelerometer_init(void);
void accelerometer_read_XYZ(int16_t* x, int16_t* y, int16_t* z);

#endif /* SRC_ACCELEROMETER_ACCELEROMETER_H_ */
