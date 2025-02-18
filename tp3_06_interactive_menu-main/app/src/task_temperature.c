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

float lm35ReadingsArray1[LM35_NUMBER_OF_AVG_SAMPLES];
float lm35ReadingsArray2[LM35_NUMBER_OF_AVG_SAMPLES];

//=====[Declarations (prototypes) of private functions]========================



//=====[Implementations of public functions]===================================

void temperatureSensorInit()
{

    int i;

    for( i=0; i<LM35_NUMBER_OF_AVG_SAMPLES ; i++ ) {
        lm35ReadingsArray1[i] = 0;
    }
    for( i=0; i<LM35_NUMBER_OF_AVG_SAMPLES ; i++ ) {
            lm35ReadingsArray2[i] = 0;
        }

}

void temperatureSensorUpdate()
{
	float adc_value1;
	float adc_value2;
	float voltage1;
	float voltage2;
	float lm35ReadingsCumSum=0.0;
	for (int i=0; i<LM35_NUMBER_OF_AVG_SAMPLES; i++)
	{
		HAL_ADC_Start(&hadc1);
		HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY);
		lm35ReadingsArray1[i] = HAL_ADC_GetValue(&hadc1);
		lm35ReadingsCumSum+=lm35ReadingsArray1[i];
		HAL_ADC_Stop(&hadc1);
	}
	adc_value1=lm35ReadingsCumSum/LM35_NUMBER_OF_AVG_SAMPLES;
	voltage1 = (adc_value1*3.3)/4096.0;
	temp_uC = ((1.34-voltage1) / 0.0043) + 25.0;

	lm35ReadingsCumSum=0.0;
	for (int i=0; i<LM35_NUMBER_OF_AVG_SAMPLES; i++)
	{
		HAL_ADC_Start(&hadc2);
		HAL_ADC_PollForConversion(&hadc2, HAL_MAX_DELAY);
		adc_value2=HAL_ADC_GetValue(&hadc2);
		voltage2 = (adc_value2*3.3)/4095.0;
		lm35ReadingsArray2[i]= voltage2*100;
		lm35ReadingsCumSum+=lm35ReadingsArray2[i];
		HAL_ADC_Stop(&hadc2);

	}
	temp_amb = lm35ReadingsCumSum/LM35_NUMBER_OF_AVG_SAMPLES;
}
