#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
#include "MotorCtrl.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void FB_Axis(struct FB_Axis* inst)
{
	if (inst->InMotion)
	{
		if (inst->endswitch_a_reached || inst->endswitch_b_reached)
		{
			inst->pwm_value = 0;
			inst->speed = 0;
			inst->reset_error = 1;
			inst->InMotion = 0;
		}
		else
		{
			inst->pwm_value = inst->u / 24.0 * 32767;
			inst->speed = 50;
			inst->reset_error = 0;
		}
	}
}

