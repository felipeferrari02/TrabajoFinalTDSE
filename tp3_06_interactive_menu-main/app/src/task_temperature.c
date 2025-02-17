//=====[Libraries]=============================================================

#include <task_temperature.h>
#include <main.h>
#include <app.h>

//=====[Declaration of private defines]========================================

#define LM35_NUMBER_OF_AVG_SAMPLES    10

//=====[Declaration of private data types]=====================================

//=====[Declaration and initialization of public global objects]===============

//AnalogIn lm35(A1);

//=====[Declaration of external public global variables]=======================

//=====[Declaration and initialization of public global variables]=============

//=====[Declaration and initialization of private global variables]============

float lm35TemperatureC = 0.0;
float lm35ReadingsArray[LM35_NUMBER_OF_AVG_SAMPLES];

//=====[Declarations (prototypes) of private functions]========================

static float analogReadingScaledWithTheLM35Formula( float analogReading );

//=====[Implementations of public functions]===================================

void temperatureSensorInit()
{
    int i;
    
    for( i=0; i<LM35_NUMBER_OF_AVG_SAMPLES ; i++ ) {
        lm35ReadingsArray[i] = 0;
    }
}

void temperatureSensorUpdate()
{
	float adc_value1;
	float adc_value2;
	float voltage1;
	float voltage2;

	HAL_ADC_Start(&hadc1);
	HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY);
	adc_value1 = HAL_ADC_GetValue(&hadc1);
	//printf("adc value1=%f\n", adc_value1);
	HAL_ADC_Stop(&hadc1);
	voltage1 = (adc_value1*3.3)/4096.0;
	temp_uC = ((1.34-voltage1) / 0.0043) + 25.0;

	HAL_ADC_Start(&hadc2);
	HAL_ADC_PollForConversion(&hadc2, HAL_MAX_DELAY);
	adc_value2 = HAL_ADC_GetValue(&hadc2);
	//printf("adc value2=%f\n", adc_value);
	HAL_ADC_Stop(&hadc2);
	voltage2 = (adc_value2*3.0)/4096.0;
	temp_amb = voltage2*100;
}


float temperatureSensorReadCelsius()
{
    return lm35TemperatureC;
}

float temperatureSensorReadFahrenheit()
{
    return celsiusToFahrenheit( lm35TemperatureC );
}

float celsiusToFahrenheit( float tempInCelsiusDegrees )
{
    return ( tempInCelsiusDegrees * 9.0 / 5.0 + 32.0 );
}

//=====[Implementations of private functions]==================================

static float analogReadingScaledWithTheLM35Formula( float analogReading )
{
    return ( analogReading * 5.0 / 0.01 );
}
