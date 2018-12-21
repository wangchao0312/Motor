clear;clc;
open ModerForJ.slx
J=0.000000220433;
gain7=num2str(1/J);
set_param('ModerForJ/Gain7','Gain',gain7)
sim('ModerForJ')
% TJ3=TJ3;
% ToutJ1=ToutJ3;
% WJ1=WJ3;
% X0J1=X0J3;
% X1J1=X1J3;
clear J;
clear gain7;
clear tout;
clear yout;
save J3.mat
save_system;
exit;