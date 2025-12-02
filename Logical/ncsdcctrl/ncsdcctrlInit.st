
PROGRAM _INIT


        
(* ### BEGIN Axis_X ### *)
        
(* initialize variables *)
        Axis_X_HW.DrvIf_Typ := ncSDC_DRVSERVO16;
        brsstrcpy(ADR(Axis_X_HW.DrvIf_Name[0]), ADR('Axis_X_DrvIf'));
        Axis_X_HW.DiDoIf_Typ := ncSDC_DIDO;
        brsstrcpy(ADR(Axis_X_HW.DiDoIf_Name[0]), ADR('Axis_X_DiDoIf'));
         
(* force variable offset generation *)
        Axis_X.size                      := Axis_X.size;
        Axis_X_DrvIf.iLifeCnt            := Axis_X_DrvIf.iLifeCnt;
        Axis_X_DiDoIf.iLifeCntDriveReady := Axis_X_DiDoIf.iLifeCntDriveReady;
        Axis_X_ModuleOk                  := Axis_X_ModuleOk;
         
(* assign your hardware inputs here*)
  
(*      Axis_X_DiDoIf.iPosHwEnd  := Axis_X_DiDoIf.iPosHwEnd;
        Axis_X_DiDoIf.iNegHwEnd  := Axis_X_DiDoIf.iNegHwEnd;
        Axis_X_DiDoIf.iReference := Axis_X_DiDoIf.iReference;
 *)
        
(* ### END Axis_X ### *)

END_PROGRAM

