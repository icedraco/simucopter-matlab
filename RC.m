classdef RC < matlab.System 

   methods (Access = protected)
       function [thort, yawR, pitch, roll] = stepImpl(~)
         coder.cinclude('simulink-requester.h');
         yawR = coder.ceval('copter_get_desired_yaw'); 
         roll = coder.ceval('copter_get_desired_roll'); 
         pitch = coder.ceval('copter_get_desired_pitch'); 
         thort = coder.ceval('copter_get_desired_throttle'); 
      end
   end
end 

