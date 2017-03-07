classdef Roll_state < matlab.System 

   methods (Access = protected)
   
       function roll = stepImpl(~)
          if coder.target('Rtw')
            coder.cinclude('simulink-requester.h');
            roll = coder.ceval('copter_get_state_roll');
         end
      end
   end
end 
