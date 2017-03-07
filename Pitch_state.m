classdef Pitch_state < matlab.System 

   methods (Access = protected)
       function pitch = stepImpl(~)
         if coder.target('Rtw')
            coder.cinclude('simulink-requester.h');
            pitch = coder.ceval('copter_get_state_pitch');
         end
      end
   end
end 
