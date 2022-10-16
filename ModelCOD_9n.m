clear all;
close all;

	%lecture des fichiers
   load databasegeneral1.txt
   data = databasegeneral1'
      
  T_v = data(1,:)
  pH_v = data(2,:)
  CONCENTRATION_v = data(3,:)
  CONTAMINANT_v = data(4,:)
  US_v = data(5,:)
  UV_v = data(6,:)
  TIO_v = data(7,:)
  PRESULFAT_v = data(8,:)
  RS_v = data(9,:)
  
  %TEC_v=data(2,:)
  %CONT_v=data(3,:)
  %PH_v=data(4,:)
  
  %Output
  DQO_v=data(10,:)
  

%normalisation
T_norm = 0.8*((T_v - min(T_v))/(max(T_v) - min(T_v)))+0.1;
pH_norm = 0.8*((pH_v - min(pH_v))/(max(pH_v) - min(pH_v)))+0.1;
CONCENTRATION_norm = CONCENTRATION_v;
CONTAMINANT_norm = CONTAMINANT_v;
US_norm = 0.8*((US_v - min(US_v))/(max(US_v) - min(US_v)))+0.1;
UV_norm = 0.8*((UV_v - min(UV_v))/(max(UV_v) - min(UV_v)))+0.1;
TIO_norm = 0.8*((TIO_v - min(TIO_v))/(max(TIO_v) - min(TIO_v)))+0.1;
PRESULFAT_norm = 0.8*(( PRESULFAT_v - min( PRESULFAT_v))/(max( PRESULFAT_v) - min( PRESULFAT_v)))+0.1;
RS_norm = 0.8*((RS_v - min(RS_v))/(max(RS_v) - min(RS_v)))+0.1;


p=[T_norm;pH_norm;CONCENTRATION_norm;CONTAMINANT_norm;US_norm;UV_norm;TIO_norm;PRESULFAT_norm;RS_norm];

%t_110=(1.1*max(t_v));
%TEC_110=(1.1*max(TEC_v));
%CONT_110=(1.1*max(CONT_v));
%PH_110=(1.1*max(PH_v));
%DQO_110=(1.1*max(DQO_v));
%TOC_110=(1.1*max(TOC_v));

%Matriz de Entradas normalizadas
%p=[(t_v)/(1.1*max(t_v));(TEC_v);(CONT_v);(PH_v)/(1.1*max(PH_v))]

 

%Matriz de las salidas normalizadas
t=DQO_v;

[R,Q]=size(p);

iitst=3:4:Q;  % se entiende de la forma siguiente=100/4.
iival=3:4:Q;
iitr=[1:4:Q 2:4:Q 4:4:Q];
val.P = p(:,iival);
val.T = t(:,iival);
test.P = p(:,iitst);
test.T = t(:,iitst);
ptr = p(:,iitr);
ttr = t(:,iitr);

n=0;
c=1
while c==1
    
net=newff(minmax(p),[9,1],{'tansig','purelin'},'trainlm');
net.trainParam.show= 50;
%net.trainParam.lr= 0.05;
net.trainParam.Epoch= 1000;
net.trainParam.goal= 2.2e-16;

[net,tr]=train(net,ptr,ttr,[],[],val,test);
an= sim(net,p);
test.an = net(test.P);
perf = mse(net,test.T,test.an);
errors = gsubtract(t,an);
E = t-an;
performance = perform(net,an,t);
save Error.txt E -ascii;
save perform.txt perf -ascii;

[m,b,r]= postreg(an,t);
   r
    
if r > 0.992
    c=0;
    IW=net.IW{1,1};
    LW=net.LW{2,1};
    b1=net.b{1};
    b2=net.b{2};
    save IWyounessCOD_09n.txt IW -ascii;
    save LWyounessCOD_09n.txt LW -ascii;
    save b1younessCOD_09n.txt b1 -ascii;
    save b2younessCOD_09n.txt b2 -ascii;
    save regyounessCOD_09n.txt m b r -ascii;

else r <=  0.992
n=n+1
c=1;
end
if n >=2000000
      c=0;
end

end



figure(1)
plot(tr.epoch,tr.perf,tr.epoch,tr.vperf,tr.epoch,tr.tperf)
legend('training','validation','test');
ylabel('Mean square Error');xlabel('Epoch')

figure(2)
[m,b,r]= postreg(an,t);% m=pendiente,b=intercepto,r=coeficiente de correlación(r-cuadrada).

figure(3)
plotperform(tr)

figure(4)
plottrainstate(tr)

figure(5)
plotregression(t,an,'Regression')

figure(6)
ploterrhist(E,'bins',30)

figure(7)
plotperform(tr)

figure(8)
plotfit(an,p,t)

figure(9)
plot(test.P,'o');

figure(10)
plot(test.an,'r*');