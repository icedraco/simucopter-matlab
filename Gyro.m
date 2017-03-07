classdef Gyro < matlab.System 

   methods (Access = protected)
       function [x, y, z] = stepImpl(~)
         coder.cinclude('simulink-requester.h');
         x = coder.ceval('copter_get_gyro_x');
         y = coder.ceval('copter_get_gyro_y');
         z = coder.ceval('copter_get_gyro_z');
      end
   end
end 

