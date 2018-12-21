clear;clc;
open ModerForV.slx
V=0.555625E-06;
V=num2str(V);
set_param('ModerForV/V','Value',V);
clear V;
sim('ModerForV');
clear tout;
clear yout;
FZV2=FZV1;
ToutV2=ToutV1;
TV2=TV1;
WV2=WV1;
X0V2=X0V1;
X1V2=X1V1;
save V2.mat
save_system;
exit;