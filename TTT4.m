clear;clc;
open ModerForT.slx
T=0.010000000000;
T=num2str(T);
set_param('ModerForT/T','Value',T)
sim('ModerForT');
clear T;
clear tout;
clear yout;
ToutT4=ToutT1;
TT4=TT1;
WT4=WT1;
save T4.mat
save_system;
exit;