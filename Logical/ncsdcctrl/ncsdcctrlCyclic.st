
PROGRAM _CYCLIC

        
(* ### BEGIN Axis_X ### *)
        
(* life counter emulation of digital inputs *)
        Axis_X_DiDoIf.iLifeCntReference := Axis_X_DiDoIf.iLifeCntReference + 1;
        Axis_X_DiDoIf.iLifeCntNegHwEnd  := Axis_X_DiDoIf.iLifeCntNegHwEnd  + 1;
        Axis_X_DiDoIf.iLifeCntPosHwEnd  := Axis_X_DiDoIf.iLifeCntPosHwEnd  + 1;
        
(* ### END Axis_X ### *)

END_PROGRAM

