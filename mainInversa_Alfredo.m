%inversa COD:
clear all
close all

i1=0.10333333333333;
i2=0.36000000000000;
i3=0.30900000000000;
i4=0.10000000000000;
i5=0.10000000000000;
i6=0.10000000000000;
i7=0.633333333333333333333;
i8=0.71538461538462;
i9=0.90000000000000;


cod=0.8043;

load IWyounessCOD_9n.txt
load LWyounessCOD_9n.txt;
load b1younessCOD_9n.txt
load b2younessCOD_9n.txt;

fonc='optInversaCOD';P0=[0.8];

y=cod-b2younessCOD_9n+LWyounessCOD_9n(1)+LWyounessCOD_9n(2)+LWyounessCOD_9n(3)+LWyounessCOD_9n(4)...
    +LWyounessCOD_9n(5)+LWyounessCOD_9n(6)+LWyounessCOD_9n(7)+LWyounessCOD_9n(8)+LWyounessCOD_9n(9);

x=1;

more off

p=fmins('sce1',P0,[],[],x,y,fonc);
errorPorcentaje=((i1-p)/i1)*100
T=(p-0.1)*(480/0.8);
in=[i1;i2;i3;i4;i5;i6;i7;i8;i9];
aa=tansig(IWyounessCOD_9n*in+b1younessCOD_9n);
a=purelin(LWyounessCOD_9n*aa+b2younessCOD_9n);
e=cod-a;