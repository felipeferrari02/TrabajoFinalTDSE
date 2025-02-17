/*
 * Copyright (c) 2023 Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 *
 * @file   : task_system.c
 * @date   : Set 26, 2023
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 * @version	v1.0.0
 */

/********************** inclusions *******************************************/
/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "board.h"
#include "app.h"
#include "task_system_attribute.h"
#include "task_system_interface.h"
#include "task_system.h"
#include "task_actuator_attribute.h"
#include "task_actuator_interface.h"
#include "task_menu_attribute.h"
#include "task_menu_interface.h"
#include "task_temperature.h"
#include "display.h"
/********************** macros and definitions *******************************/
#define G_TASK_SYS_CNT_INI			0ul
#define G_TASK_SYS_TICK_CNT_INI		0ul

#define DEL_SYS_XX_MIN				0ul
#define DEL_SYS_XX_MED				50ul
#define DEL_SYS_XX_MAX				10000ul

#define MAX_PERMANENCIA				15
#define MAX_ACTIVACION				20

/********************** internal data declaration ****************************/
task_system_dta_t task_system_dta =
	{DEL_SYS_XX_MIN, ST_SYS_APAGADO, EV_SYS_SWITCH_OFF /*NO HACE NADA*/, false};

#define SYSTEM_DTA_QTY	(sizeof(task_system_dta)/sizeof(task_system_dta_t))

float temp_uC;
float temp_amb;

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/
const char *p_task_system 		= "Task System (System Statechart)";
const char *p_task_system_ 		= "Non-Blocking & Update By Time Code";

/********************** external data declaration ****************************/
uint32_t g_task_system_cnt;
volatile uint32_t g_task_system_tick_cnt;
int del_sys_permanencia=MAX_PERMANENCIA*1E3 ;
int del_sys_activacion=MAX_ACTIVACION*1E3;

/********************** external functions definition ************************/
void task_system_init(void *parameters)
{
	task_system_dta_t 	*p_task_system_dta;
	task_system_st_t	state;
	task_system_ev_t	event;
	bool b_event;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - %s\r\n", GET_NAME(task_system_init), p_task_system);
	LOGGER_LOG("  %s is a %s\r\n", GET_NAME(task_system), p_task_system_);

	g_task_system_cnt = G_TASK_SYS_CNT_INI;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_system_cnt), g_task_system_cnt);

	init_queue_event_task_system();

	/* Update Task Actuator Configuration & Data Pointer */
	p_task_system_dta = &task_system_dta;

	/* Print out: Task execution FSM */
	state = p_task_system_dta->state;
	LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);

	event = p_task_system_dta->event;
	LOGGER_LOG("   %s = %lu", GET_NAME(event), (uint32_t)event);

	b_event = p_task_system_dta->flag;
	LOGGER_LOG("   %s = %s\r\n", GET_NAME(b_event), (b_event ? "true" : "false"));

	g_task_system_tick_cnt = G_TASK_SYS_TICK_CNT_INI;
}

void task_system_update(void *parameters)
{

	task_system_dta_t *p_task_system_dta;
	bool b_time_update_required = false;
	char str[5];
	/* Update Task System Counter */
	g_task_system_cnt++;

	/* Protect shared resource (g_task_system_tick) */
	__asm("CPSID i");	/* disable interrupts*/
    if (G_TASK_SYS_TICK_CNT_INI < g_task_system_tick_cnt)
    {
    	g_task_system_tick_cnt--;
    	b_time_update_required = true;
    }
    __asm("CPSIE i");	/* enable interrupts*/
    while (b_time_update_required)
    {
		/* Protect shared resource (g_task_system_tick) */
		__asm("CPSID i");	/* disable interrupts*/
		if (G_TASK_SYS_TICK_CNT_INI < g_task_system_tick_cnt)
		{
			g_task_system_tick_cnt--;
			b_time_update_required = true;
		}
		else
		{
			b_time_update_required = false;
		}
		__asm("CPSIE i");	/* enable interrupts*/

    	/* Update Task System Data Pointer */
		p_task_system_dta = &task_system_dta;

		if (true == any_event_task_system())
		{
			p_task_system_dta->flag = true;
			p_task_system_dta->event = get_event_task_system();

		}
		switch (p_task_system_dta->state)
		{
			case ST_SYS_APAGADO:
				if ((true == p_task_system_dta->flag) && (EV_SYS_SWITCH_ON == p_task_system_dta->event))
				{
					printf("standbyme\n");
					p_task_system_dta->flag = false;
					p_task_system_dta->state = ST_SYS_STAND_BY;
					put_event_task_actuator(EV_LED_XX_ON, ID_LED_01);
					displayClear();
					displayCharPositionWrite(0, 0);
					displayStringWrite("Perm:");
					snprintf(str, sizeof(str), "%d", del_sys_permanencia/1000);
					displayCharPositionWrite(5, 0);
					displayStringWrite(str);
					displayCharPositionWrite(7, 0);
					displayStringWrite(" TuC:");
					sprintf(str, "%.1f", temp_uC);
					displayCharPositionWrite(12, 0);
					displayStringWrite(str);
					displayCharPositionWrite(0, 1);
					displayStringWrite("Act:");
					snprintf(str, sizeof(str), "%d", del_sys_activacion/1000);
					displayCharPositionWrite(4, 1);
					displayStringWrite(str);
					displayCharPositionWrite(6, 1);
					displayStringWrite(" Tamb:");
					sprintf(str, "%.1f", temp_amb);
					displayCharPositionWrite(12, 1);
					displayStringWrite(str);
				}

				break;

			case ST_SYS_STAND_BY:
				if ((true == p_task_system_dta->flag) && (EV_SYS_ENCENDIDO == p_task_system_dta->event))
				{
					printf("WAITING\n");
					p_task_system_dta->flag = false;
					p_task_system_dta->tick = del_sys_activacion;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_01);
					put_event_task_actuator(EV_LED_XX_BLINK, ID_LED_02);
					put_event_task_actuator(EV_LED_XX_ON, ID_LED_03);
					p_task_system_dta->state = ST_SYS_WAITING;
					displayClear();
					displayCharPositionWrite(0, 0);
					displayStringWrite("Perm:");
					snprintf(str, sizeof(str), "%d", del_sys_permanencia/1000);
					displayCharPositionWrite(5, 0);
					displayStringWrite(str);
					displayCharPositionWrite(7, 0);
					displayStringWrite(" TuC:");
					sprintf(str,"%.1f", temp_uC);
					displayCharPositionWrite(12, 0);
					displayStringWrite(str);
					displayCharPositionWrite(0, 1);
					displayStringWrite("Act:");
					snprintf(str, sizeof(str), "%d", del_sys_activacion/1000);
					displayCharPositionWrite(4, 1);
					displayStringWrite(str);
					displayCharPositionWrite(6, 1);
					displayStringWrite(" Tamb:");
					sprintf(str,"%.1f", temp_amb);
					displayCharPositionWrite(12, 1);
					displayStringWrite(str);
				}
				if ((true == p_task_system_dta->flag) && (EV_SYS_ENTER == p_task_system_dta->event))
				{
					printf("BLOCK\n");
					p_task_system_dta->flag = false;
					p_task_system_dta->state = ST_SYS_BLOQUEO;
					put_event_task_menu(EV_MENU_START);

				}
				if ((true == p_task_system_dta->flag) && (EV_SYS_SWITCH_OFF == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->state = ST_SYS_APAGADO;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_01);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_LED_02);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_03);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_04);
					put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZ_01);
					printf("APAGADO\n");
					displayClear();
				}

				break;

			case ST_SYS_WAITING:
				if (p_task_system_dta->tick > 0)
					p_task_system_dta->tick--;
				if (p_task_system_dta->tick == 0)
				{
					printf("EXCEDE ACTIVACION\n");
					p_task_system_dta->state = ST_SYS_EXCEDE_ACTIVACION;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_01);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_LED_02);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_03);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_04);
					put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZ_01);
				}
				if ((true == p_task_system_dta->flag) && (EV_SYS_INFRARROJO == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->tick = del_sys_permanencia;
					printf("BOLAS\n");
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_03);
					put_event_task_actuator(EV_LED_XX_ON, ID_LED_04);
					p_task_system_dta->state = ST_SYS_WAITINGBALLS;

					sprintf(str,"%.1f", temp_uC);
					displayCharPositionWrite(12, 0);
					displayStringWrite("       ");
					displayCharPositionWrite(12, 0);
					displayStringWrite(str);
					sprintf(str, "%.1f", temp_amb);
					displayCharPositionWrite(12, 1);
					displayStringWrite("       ");
					displayCharPositionWrite(12, 1);
					displayStringWrite(str);
				}
				if ((true == p_task_system_dta->flag) && (EV_SYS_SWITCH_OFF == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->state = ST_SYS_APAGADO;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_01);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_LED_02);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_03);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_04);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_BUZZ_01);
					printf("APAGADO\n");
					displayClear();
				}

				break;
			case ST_SYS_WAITINGBALLS:
				if (p_task_system_dta->tick > 0)
					p_task_system_dta->tick--;
				if (p_task_system_dta->tick == 0)
				{
					p_task_system_dta->state = ST_SYS_EXCEDE_PERMANENCIA;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_01);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_LED_02);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_03);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_04);
					printf("EXCEDE PERMANENCIA\n");
					put_event_task_actuator(EV_LED_XX_BLINK, ID_BUZZ_01);
				}
				if ((true == p_task_system_dta->flag) && (EV_SYS_EGRESO == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->tick = del_sys_activacion;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_04);
					put_event_task_actuator(EV_LED_XX_ON, ID_LED_03);
					printf("WAITING\n");
					p_task_system_dta->state = ST_SYS_WAITING;

					sprintf(str, "%.1f", temp_uC);
					displayCharPositionWrite(12, 0);
					displayStringWrite("       ");
					displayCharPositionWrite(12, 0);
					displayStringWrite(str);
					sprintf(str, "%.1f", temp_amb);
					displayCharPositionWrite(12, 1);
					displayStringWrite("       ");
					displayCharPositionWrite(12, 1);
					displayStringWrite(str);
				}
				if ((true == p_task_system_dta->flag) && (EV_SYS_SWITCH_OFF == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->state = ST_SYS_APAGADO;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_01);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_LED_02);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_03);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_04);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_BUZZ_01);
					printf("APAGADO\n");
					displayClear();
				}

				break;

			case ST_SYS_EXCEDE_PERMANENCIA:
				if ((true == p_task_system_dta->flag) && (EV_SYS_SWITCH_OFF == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->state = ST_SYS_APAGADO;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_01);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_LED_02);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_03);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_04);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_BUZZ_01);
					printf("APAGADO\n");
					displayClear();
				}

				break;
			case ST_SYS_EXCEDE_ACTIVACION:
				if ((true == p_task_system_dta->flag) && (EV_SYS_SWITCH_OFF == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->state = ST_SYS_APAGADO;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_01);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_LED_02);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_03);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_04);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_BUZZ_01);
					printf("APAGADO\n");
					displayClear();
				}

				break;
			case ST_SYS_BLOQUEO:
				if ((true == p_task_system_dta->flag) && (EV_SYS_UNBLOCK == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->state = ST_SYS_STAND_BY;
					put_event_task_actuator(EV_LED_XX_ON, ID_LED_01);
					printf("standbyme\n");
					displayClear();
					displayCharPositionWrite(0, 0);
					displayStringWrite("Perm:");
					snprintf(str, sizeof(str), "%d", del_sys_permanencia/1000);
					displayCharPositionWrite(5, 0);
					displayStringWrite(str);
					displayCharPositionWrite(7, 0);
					displayStringWrite(" TuC:");
					sprintf(str, "%.1f", temp_uC);
					displayCharPositionWrite(12, 0);
					displayStringWrite(str);
					displayCharPositionWrite(0, 1);
					displayStringWrite("Act:");
					snprintf(str, sizeof(str), "%d", del_sys_activacion/1000);
					displayCharPositionWrite(4, 1);
					displayStringWrite(str);
					displayCharPositionWrite(6, 1);
					displayStringWrite(" Tamb:");
					sprintf(str, "%.1f", temp_amb);
					displayCharPositionWrite(12, 1);
					displayStringWrite(str);
				}
				if ((true == p_task_system_dta->flag) && (EV_SYS_SWITCH_OFF == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->state = ST_SYS_APAGADO;
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_01);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_LED_02);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_03);
					put_event_task_actuator(EV_LED_XX_OFF, ID_LED_04);
					put_event_task_actuator(EV_LED_XX_NOBLINK, ID_BUZZ_01);
					printf("APAGADO\n");
					displayClear();
				}


				break;

			default:

				break;
		}
	}
}

/********************** end of file ******************************************/
