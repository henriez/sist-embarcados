#include <SoftwareSerial.h>

const int HC12_RX_PIN = 13;
const int HC12_TX_PIN = 15;

SoftwareSerial HC12(HC12_RX_PIN, HC12_TX_PIN); 

#pragma pack(push, 1)
typedef struct {
    uint8_t startByte;
    uint8_t deviceId;
    float   x;
    float   y;
    float   z;
    float   dist;
    uint8_t checksum;
} DataPacket;
#pragma pack(pop)

#define START_BYTE 0xAA
#define DEVICE_ID  0x42

void setup() {
  Serial.begin(115200); 
  HC12.begin(9600);

  Serial.println("x,y,z,dist");
}

void loop() {
  if (HC12.available() >= sizeof(DataPacket)) {
    if (HC12.peek() != START_BYTE) {
      HC12.read();
      return;
    }

    DataPacket receivedPkt;
    HC12.readBytes((char*)&receivedPkt, sizeof(DataPacket));

    if (receivedPkt.deviceId != DEVICE_ID) {
        return;
    }

    uint8_t calcChecksum = 0;
    uint8_t ptr = (uint8_t)&receivedPkt;
    for (int i = 0; i < sizeof(DataPacket) - 1; i++) {
        calcChecksum ^= ptr[i];
    }

    if (calcChecksum == receivedPkt.checksum) {
        float x = receivedPkt.x;
        float y = receivedPkt.y;
        float z = receivedPkt.z;
        float dist = receivedPkt.dist;
        
        Serial.print(x);
        Serial.print(',');
        Serial.print(y);
        Serial.print(',');
        Serial.print(z);
        Serial.print(',');
        Serial.println(dist);
    }
  }
}
