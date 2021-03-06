%%%%%%%%%总体改变%%%%%%%   还原代码
%%%% n 行波波数
%%%% u 定转子动摩擦系数
%%%% ke 摩擦材料的等效刚度
%%%% R 转子等效半径
%%%% Dz 轴向阻尼系数
%%%% Dr 转子光电总阻尼
%%%% Fn 预压力
%%%%电机工作频率？？？？
%%%%行波波长？？？？
%%%%%%%%%%总体改变%%%%%%%%

%%%%%%%%%%%%%%%%参数值
J17=9;
J18=0.2;
J19=2.6E+09;
J20=1.5E-03;
J21=3.10E-03;
J22=0.00000066675;
J23=0.000000142;
J24=0.0005;
J25=9300;
J26=10;
J27=70000;
J28=2*3.1415926*J27;
J29=0.00014;
J30=0.0005;
%%%%%%%%%%%%%%%%%参数值
gain0=J17/J21;
gain1=1/gain0;
gain2=gain0;
gain3=gain1;
gain4=2*J18*J19*J22;
gain5=2;
gain6=J17*J21;
gain7=1/J23;
gain8=J21/gain0/J28;
gain9=gain1;
gain10=60/3.1415926/2;
gain11=2*J17*J19;
gain12=J25;
gain13=1/J24;
gain14=1;
gain15=gain1;
%%%%%%%%%%%%%转换为set_para可以用的字符串类型,并且不丢失精度
temp=sym(gain0);
gain0=char(vpa(temp,15));
temp=sym(gain1);
gain1=char(vpa(temp,15));
temp=sym(gain2);
gain2=char(vpa(temp,15));
temp=sym(gain3);
gain3=char(vpa(temp,15));
temp=sym(gain4);
gain4=char(vpa(temp,15));
temp=sym(gain5);
gain5=char(vpa(temp,15));
temp=sym(gain6);
gain6=char(vpa(temp,15));
temp=sym(gain7);
gain7=char(vpa(temp,15));
temp=sym(gain8);
gain8=char(vpa(temp,15));
temp=sym(gain9);
gain9=char(vpa(temp,15));
temp=sym(gain10);
gain10=char(vpa(temp,15));
temp=sym(gain11);
gain11=char(vpa(temp,15));
temp=sym(gain12);
gain12=char(vpa(temp,15));
temp=sym(gain13);
gain13=char(vpa(temp,15));
temp=sym(gain14);
gain14=char(vpa(temp,15));
temp=sym(gain15);
gain15=char(vpa(temp,15));

%%%将三个simulink模型参数调整
open ModerForJ.slx
set_param('ModerForJ/Gain0','Gain',gain0);
set_param('ModerForJ/Gain1','Gain',gain1);
set_param('ModerForJ/Gain2','Gain',gain2);
set_param('ModerForJ/Gain3','Gain',gain3);
set_param('ModerForJ/Gain4','Gain',gain4);
set_param('ModerForJ/Gain5','Gain',gain5);
set_param('ModerForJ/Gain6','Gain',gain6);
set_param('ModerForJ/Gain7','Gain',gain7);
set_param('ModerForJ/Gain8','Gain',gain8);
set_param('ModerForJ/Gain9','Gain',gain9);
set_param('ModerForJ/Gain10','Gain',gain10);
set_param('ModerForJ/Gain11','Gain',gain11);
set_param('ModerForJ/Gain12','Gain',gain12);
set_param('ModerForJ/Gain13','Gain',gain13);
set_param('ModerForJ/Gain14','Gain',gain14);
set_param('ModerForJ/Gain15','Gain',gain15);
save_system;
close_system


open ModerForT.slx
set_param('ModerForT/Gain0','Gain',gain0);
set_param('ModerForT/Gain1','Gain',gain1);
set_param('ModerForT/Gain2','Gain',gain2);
set_param('ModerForT/Gain3','Gain',gain3);
set_param('ModerForT/Gain4','Gain',gain4);
set_param('ModerForT/Gain5','Gain',gain5);
set_param('ModerForT/Gain6','Gain',gain6);
set_param('ModerForT/Gain7','Gain',gain7);
set_param('ModerForT/Gain8','Gain',gain8);
set_param('ModerForT/Gain9','Gain',gain9);
set_param('ModerForT/Gain10','Gain',gain10);
set_param('ModerForT/Gain11','Gain',gain11);
set_param('ModerForT/Gain12','Gain',gain12);
set_param('ModerForT/Gain13','Gain',gain13);
set_param('ModerForT/Gain14','Gain',gain14);
set_param('ModerForT/Gain15','Gain',gain15);
save_system;
close_system

open ModerForV.slx
set_param('ModerForV/Gain0','Gain',gain0);
set_param('ModerForV/Gain1','Gain',gain1);
set_param('ModerForV/Gain2','Gain',gain2);
set_param('ModerForV/Gain3','Gain',gain3);
set_param('ModerForV/Gain4','Gain',gain4);
set_param('ModerForV/Gain5','Gain',gain5);
set_param('ModerForV/Gain6','Gain',gain6);
set_param('ModerForV/Gain7','Gain',gain7);
set_param('ModerForV/Gain8','Gain',gain8);
set_param('ModerForV/Gain9','Gain',gain9);
set_param('ModerForV/Gain10','Gain',gain10);
set_param('ModerForV/Gain11','Gain',gain11);
set_param('ModerForV/Gain12','Gain',gain12);
set_param('ModerForV/Gain13','Gain',gain13);
set_param('ModerForV/Gain14','Gain',gain14);
set_param('ModerForV/Gain15','Gain',gain15);
save_system;
close_system