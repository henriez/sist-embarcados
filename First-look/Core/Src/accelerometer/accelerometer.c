#include "accelerometer.h"

#define ADXL345_DEVICE_ADDR (0x53 << 1)
#define ADXL345_REG_DEVID 0x00
#define ADXL345_REG_POWER_CTL 0x2D
#define ADXL345_REG_DATAX0 0x32

uint8_t accelerometer_init(void) {
    uint8_t device_id;

    // 1. Check if a device is present at the address.
    if (HAL_I2C_IsDeviceReady(&hi2c1, ADXL345_DEVICE_ADDR, 2, 100) != HAL_OK) {
        return ACCELEROMETER_ERROR_NO_DEVICE;
    }

    // 2. Try to read the Device ID register.
    HAL_StatusTypeDef status = HAL_I2C_Mem_Read(&hi2c1, ADXL345_DEVICE_ADDR, ADXL345_REG_DEVID, 1, &device_id, 1, 100);
    if (status != HAL_OK) {
        return ACCELEROMETER_ERROR_READ_FAIL;
    }

    // 3. Check if the device ID is the correct one for the ADXL345 (0xE5).
    if (device_id != 0xE5) {
        return ACCELEROMETER_ERROR_WRONG_ID;
    }

    // 4. Set the POWER_CTL register to 0x08 to enable measurement mode.
    uint8_t power_ctl_data = 0x08;
    status = HAL_I2C_Mem_Write(&hi2c1, ADXL345_DEVICE_ADDR, ADXL345_REG_POWER_CTL, 1, &power_ctl_data, 1, 100);
    if (status != HAL_OK) {
        return ACCELEROMETER_ERROR_WRITE_FAIL;
    }

    return ACCELEROMETER_OK;
}


void accelerometer_read_XYZ(int16_t* x, int16_t* y, int16_t* z) {
    uint8_t data_rec[6];

    // Read 6 bytes of data starting from the DATAX0 register.
    HAL_I2C_Mem_Read(&hi2c1, ADXL345_DEVICE_ADDR, ADXL345_REG_DATAX0, 1, data_rec, 6, 100);

    // Combine the two bytes for each axis.
    *x = (data_rec[1] << 8) | data_rec[0];
    *y = (data_rec[3] << 8) | data_rec[2];
    *z = (data_rec[5] << 8) | data_rec[4];
}
