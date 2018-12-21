clear;clc;
open ModerForV.slx
V=0.4445e-06;
V=num2str(V);
set_param('ModerForV/V','Value',V);
clear V;
sim('ModerForV');
clear tout;
clear yout;
save V1.mat
save_system;
exit;