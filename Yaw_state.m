classdef Yaw_state < matlab.System 

   methods (Access = protected)
   
       function yaw = stepImpl(~)
          if coder.target('Rtw')
            coder.cinclude('simulink-requester.h');
            yaw = coder.ceval('copter_get_state_yaw');
         end
      end
      
   end
end 
