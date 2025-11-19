#ifndef SRC_ULTRASSONIC_SENSOR_ULTRASSONIC_SENSOR_H_
#define SRC_ULTRASSONIC_SENSOR_ULTRASSONIC_SENSOR_H_

#include "main.h"

void ultrassonic_sensor_init();
void ultrassonic_sensor_read();
float ultrassonic_sensor_get_dist_cm();


#endif /* SRC_ULTRASSONIC_SENSOR_ULTRASSONIC_SENSOR_H_ */
