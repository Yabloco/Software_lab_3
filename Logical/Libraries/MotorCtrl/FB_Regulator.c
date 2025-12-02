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
void FB_Regulator(struct FB_Regulator* inst)
{	
	if (inst->integrator.direct)
		inst->integrator.in = inst->k_i * inst->e_prev + inst->iyOld / inst->integrator.dt;
	else
		inst->integrator.in = inst->k_i * inst->e + inst->iyOld / inst->integrator.dt;
	FB_Integrator(&inst->integrator);
	inst->u_raw = (inst->k_p * inst->e <= inst->max_abs_value ? inst->k_p * inst->e : inst->max_abs_value) +
		inst->integrator.out;
	inst->u = inst->u_raw < inst->max_abs_value ? inst->u_raw : inst->max_abs_value;
	inst->iyOld = inst->u - inst->u_raw;
}

