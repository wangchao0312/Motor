clear;clc;
open ModerForJ.slx
J=0.000000142142;
gain7=num2str(1/J);
set_param('ModerForJ/Gain7','Gain',gain7)
sim('ModerForJ')
TJ2=TJ3;
ToutJ2=ToutJ3;
WJ2=WJ3;
X0J2=X0J3;
X1J2=X1J3;
clear J;
clear gain7;
clear TJ3;
clear tout;
clear ToutJ3;
clear WJ3;
clear X0J3;
clear X1J3;
clear yout;
save J2.mat
exit