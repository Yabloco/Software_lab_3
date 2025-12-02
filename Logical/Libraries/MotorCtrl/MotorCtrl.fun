
FUNCTION_BLOCK FB_Regulator
	VAR_INPUT
		e : REAL;
		e_prev : REAL;
	END_VAR
	VAR_OUTPUT
		u : REAL;
	END_VAR
	VAR
		u_raw : REAL;
		k_p : REAL;
		k_i : REAL;
		integrator : FB_Integrator;
		iyOld : REAL;
		max_abs_value : REAL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Motor
	VAR_INPUT
		u : REAL;
	END_VAR
	VAR_OUTPUT
		w : REAL;
		phi : REAL;
	END_VAR
	VAR
		integrator : FB_Integrator;
		integrator_phi : FB_Integrator;
		Tm : REAL;
		ke : REAL;
		enable_reg : BOOL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Integrator
	VAR_INPUT
		in : REAL;
	END_VAR
	VAR_OUTPUT
		out : REAL;
	END_VAR
	VAR
		dt : REAL;
		direct : BOOL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Axis
	VAR_INPUT
		u : USINT;
		endswitch_a_reached : BOOL;
		endswitch_b_reached : BOOL;
	END_VAR
	VAR_OUTPUT
		reset_error : BOOL;
		reset_counter : BOOL;
		pwm_value : INT;
		counter : INT;
		speed : REAL;
	END_VAR
	VAR
		last_counter : INT;
		InMotion : BOOL;
	END_VAR
END_FUNCTION_BLOCK
