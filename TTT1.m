clear;clc;
open ModerForT.slx
T=0.000000000000;
T=num2str(T);
set_param('ModerForT/T','Value',T)
sim('ModerForT');
clear T;
clear tout;
clear yout;
save T1.mat
save_system;
exit;