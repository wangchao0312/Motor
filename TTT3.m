clear;clc;
open ModerForT.slx
T=0.008000000000;
T=num2str(T);
set_param('ModerForT/T','Value',T)
sim('ModerForT');
clear T;
clear tout;
clear yout;
ToutT3=ToutT1;
TT3=TT1;
WT3=WT1;
save T3.mat
save_system;
exit;