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
void FB_Motor(struct FB_Motor* inst)
{	
	inst->integrator.in = (inst->u / inst->ke - inst->w) / inst->Tm;
	FB_Integrator(&inst->integrator);
	inst->w = inst->integrator.out;
	
	inst->integrator_phi.in = inst->w;
	FB_Integrator(&inst->integrator_phi);
	inst->phi = inst->integrator_phi.out;
}

