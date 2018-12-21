clear;clc;
open ModerForV.slx
V=0.6675E-06;
V=num2str(V);
set_param('ModerForV/V','Value',V);
clear V;
sim('ModerForV');
clear tout;
clear yout;
FZV3=FZV1;
ToutV3=ToutV1;
TV3=TV1;
WV3=WV1;
X0V3=X0V1;
X1V3=X1V1;
save V3.mat
save_system;
exit;