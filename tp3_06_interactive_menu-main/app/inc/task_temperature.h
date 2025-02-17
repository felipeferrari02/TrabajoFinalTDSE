//=====[#include guards - begin]===============================================

#ifndef _TEMPERATURE_SENSOR_H_
#define _TEMPERATURE_SENSOR_H_

//=====[Declaration of public defines]=========================================

//=====[Declaration of public data types]======================================

//=====[Declarations (prototypes) of public functions]=========================

void temperatureSensorInit();
void temperatureSensorUpdate();
float temperatureSensorReadCelsius();
float temperatureSensorReadFahrenheit();
float celsiusToFahrenheit( float tempInCelsiusDegrees );

//float temp_uC;
//float temp_amb;

//=====[#include guards - end]=================================================

#endif // _TEMPERATURE_SENSOR_H_
