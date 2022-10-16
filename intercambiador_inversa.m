clear all
close all

global IW;
global LW;
global b1;
global b2;
global X1;
global X2;
global X3;
 load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5118R1.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5118R2.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5118R3.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5294R1.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5294R2.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5346.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5379R2.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5379R3.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5439R1.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5439R2.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5439R3.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5454.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5536R1.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5536R2.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5536R3.txt
   load alfredo/datosL/yolanda/COPpuntualesModificado/'COP en TXT/'datos5577.txt
   e51 = [datos5118R1; datos5118R2; datos5118R3];
   e52 = [datos5294R1; datos5294R2];
   e53a = datos5346;
   e53b = [datos5379R2; datos5379R3];
   e54a = [datos5439R1; datos5439R2; datos5439R3];
   e54b = datos5454;
   e55a = [datos5536R1; datos5536R2; datos5536R3];
   e55b = datos5577;
%les valeurs doivent etre en ligne
entre = [e51(:,3)' e52(:,3)' e53a(:,3)' e53b(:,3)' e54a(:,3)' e54b(:,3)' e55a(:,3)' e55b(:,3)';  
   e51(:,4)' e52(:,4)' e53a(:,4)' e53b(:,4)' e54a(:,4)' e54b(:,4)' e55a(:,4)' e55b(:,4)'; 
   e51(:,5)' e52(:,5)' e53a(:,5)' e53b(:,5)' e54a(:,5)' e54b(:,5)' e55a(:,5)' e55b(:,5)';
   e51(:,6)' e52(:,6)' e53a(:,6)' e53b(:,6)' e54a(:,6)' e54b(:,6)' e55a(:,6)' e55b(:,6)';
   e51(:,7)' e52(:,7)' e53a(:,7)' e53b(:,7)' e54a(:,7)' e54b(:,7)' e55a(:,7)' e55b(:,7)';
   e51(:,8)' e52(:,8)' e53a(:,8)' e53b(:,8)' e54a(:,8)' e54b(:,8)' e55a(:,8)' e55b(:,8)';
   e51(:,9)' e52(:,9)' e53a(:,9)' e53b(:,9)' e54a(:,9)' e54b(:,9)' e55a(:,9)' e55b(:,9)';
   e51(:,10)' e52(:,10)' e53a(:,10)' e53b(:,10)' e54a(:,10)' e54b(:,10)' e55a(:,10)' e55b(:,10)';
   e51(:,11)' e52(:,11)' e53a(:,11)' e53b(:,11)' e54a(:,11)' e54b(:,11)' e55a(:,11)' e55b(:,11)'; 
   e51(:,12)' e52(:,12)' e53a(:,12)' e53b(:,12)' e54a(:,12)' e54b(:,12)' e55a(:,12)' e55b(:,12)';
   e51(:,13)' e52(:,13)' e53a(:,13)' e53b(:,13)' e54a(:,13)' e54b(:,13)' e55a(:,13)' e55b(:,13)';
   e51(:,14)' e52(:,14)' e53a(:,14)' e53b(:,14)' e54a(:,14)' e54b(:,14)' e55a(:,14)' e55b(:,14)';
   e51(:,15)' e52(:,15)' e53a(:,15)' e53b(:,15)' e54a(:,15)' e54b(:,15)' e55a(:,15)' e55b(:,15)';
   e51(:,16)' e52(:,16)' e53a(:,16)' e53b(:,16)' e54a(:,16)' e54b(:,16)' e55a(:,16)' e55b(:,16)';
   e51(:,17)' e52(:,17)' e53a(:,17)' e53b(:,17)' e54a(:,17)' e54b(:,17)' e55a(:,17)' e55b(:,17)';
   e51(:,18)' e52(:,18)' e53a(:,18)' e53b(:,18)' e54a(:,18)' e54b(:,18)' e55a(:,18)' e55b(:,18)'];
%precible;
cible = [e51(:,19)' e52(:,19)' e53a(:,19)' e53b(:,19)' e54a(:,19)' e54b(:,19)' e55a(:,19)' e55b(:,19)'];

g = 0.391;
v = find(cible < g);
v1 = find(e51(:,19)' < g);
v2 = find(e52(:,19)' < g);
v3 = find(e53a(:,19)' < g);
v4 = find(e53b(:,19)' < g);
v5 = find(e54a(:,19)' < g);
v6 = find(e54b(:,19)' < g);
v7 = find(e55b(:,19)' < g);

%normalisation 
T1_110=(1.1*max(entre(1,v)));
T2_110=(1.1*max(entre(2,v)));
T3_110=(1.1*max(entre(3,v)));
T4_110=(1.1*max(entre(4,v)));
T5_110=(1.1*max(entre(5,v)));
T6_110=(1.1*max(entre(6,v)));
T7_110=(1.1*max(entre(7,v)));
T8_110=(1.1*max(entre(8,v)));
T9_110=(1.1*max(entre(9,v)));
T10_110=(1.1*max(entre(10,v)));
x1_110=(1.1*max(entre(11,v)));
x2_110=(1.1*max(entre(12,v)));
x3_110=(1.1*max(entre(13,v)));
x4_110=(1.1*max(entre(14,v)));
P1_110=(1.1*max(entre(15,v)));
P2_110=(1.1*max(entre(16,v)));
%COP_110=(1.1*max(cible(:,v)))..........el cop son valores entre[0,1] por

%meter datos
T1=89.6400;
T2=79.6100;
T3=95.1000;
T4=89.1200;
T5=89.6400;
T6=82.5100;
T7=42.3200;
T8=28.5200;
T9=36.5000;
T10=79.6100;
x1=55.3100;
x2=54.3300;
x3=54.3300;
x4=56.0700;
%%%PAB=11;
P2=21;
%COP=0.39;


%meter los pesos y bias del red
tic

IW =[ 1.0471    1.6234   -8.5413    1.7987    7.1516   -1.1964   -1.0951    2.5118   -0.0034   -2.3428  242.3930  -159.4554 -172.5887   20.8372  -19.4769  -65.5883...
    ;20.0710   -6.4628  -46.4698    6.3265   26.4226  -16.5479  -14.6389   37.4539    0.3227    4.4175 -216.8707 135.7784  115.0829   10.2770   17.5255  -47.0385...
  ;-3.7487   -0.1137    3.5127   -0.5452    0.6408    0.3451   -0.0254    0.0000    0.0032    0.1114   -0.4314 -7.1419   12.6125    3.2912   -0.1576   -1.1184];

LW =[ -0.1866    0.0239   -0.8825];

b1 =[129.0939 -17.7516 -6.4906 ];

b2 =[0.2427];

l1=-2*(IW(1,15))/P1_110;
l2=-2*(IW(2,15))/P1_110;
l3=-2*(IW(3,15))/P1_110;

X1=-2*((IW(1,1)*(T1/(T1_110)))+(IW(1,2)*(T2/(T2_110)))+(IW(1,3)*(T3/(T3_110)))+(IW(1,4)*(T4/(T4_110)))+(IW(1,5)*(T5/(T5_110)))...
    +(IW(1,6)*(T6/(T6_110)))+(IW(1,7)*(T7/(T7_110)))+(IW(1,8)*(T8/(T8_110)))+(IW(1,9)*(T9/(T9_110)))+(IW(1,10)*(T10/(T10_110)))...
    +(IW(1,11)*(x1/(x1_110)))+(IW(1,12)*(x2/(x2_110)))+(IW(1,13)*(x3/(x3_110)))+(IW(1,14)*(x4/(x4_110)))+(IW(1,16)*(P2/(P2_110)))+b1(1));

X2=-2*((IW(2,1)*(T1/(T1_110)))+(IW(2,2)*(T2/(T2_110)))+(IW(2,3)*(T3/(T3_110)))+(IW(2,4)*(T4/(T4_110)))+(IW(2,5)*(T5/(T5_110)))...
    +(IW(2,6)*(T6/(T6_110)))+(IW(2,7)*(T7/(T7_110)))+(IW(2,8)*(T8/(T8_110)))+(IW(2,9)*(T9/(T9_110)))+(IW(2,10)*(T10/(T10_110)))...
    +(IW(2,11)*(x1/(x1_110)))++(IW(2,12)*(x2/(x2_110)))+(IW(2,13)*(x3/(x3_110)))+(IW(2,14)*(x4/(x4_110)))+(IW(2,16)*(P2/(P2_110)))+b1(2));

X3=-2*((IW(3,1)*(T1/(T1_110)))+(IW(3,2)*(T2/(T2_110)))+(IW(3,3)*(T3/(T3_110)))+(IW(3,4)*(T4/(T4_110)))+(IW(3,5)*(T5/(T5_110)))...
    +(IW(3,6)*(T6/(T6_110)))+(IW(3,7)*(T7/(T7_110)))+(IW(3,8)*(T8/(T8_110)))+(IW(3,9)*(T9/(T9_110)))+(IW(3,10)*(T10/(T10_110)))...
    +(IW(3,11)*(x1/(x1_110)))+(IW(3,12)*(x2/(x2_110)))+(IW(3,13)*(x3/(x3_110)))+(IW(3,14)*(x4/(x4_110)))+(IW(3,16)*(P2/(P2_110)))+b1(3));



fonc='optintercambiador';PAB0=[10];



COP=0.39;

x=1;

more off

PAB=fmins('sce1',PAB0,[],[],x,COP,fonc);
%eval(['yc=' fonc '(p,x);']);
PAB
%in=[Ta; Va; Lv; p; Xa];
%aa1=tansig(Wi*in+b1);
%aa2=purelin(Wo*aa1+b2);
%error=[p*700 T aa2(2,1) T-aa2(2,1)]
error=11-PAB
porcenterr=(error/11)*100
toc