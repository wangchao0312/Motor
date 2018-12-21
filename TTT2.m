clear;clc;
open ModerForT.slx
T=0.005000000000;
T=num2str(T);
set_param('ModerForT/T','Value',T)
sim('ModerForT');
clear T;
clear tout;
clear yout;
ToutT2=ToutT1;
TT2=TT1;
WT2=WT1;
save T2.mat
save_system;
exit;