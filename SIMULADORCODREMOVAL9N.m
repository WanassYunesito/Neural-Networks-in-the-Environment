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

%Matriz de entrada normalizada
p=[T_norm;pH_norm;CONCENTRATION_norm;CONTAMINANT_norm;US_norm;UV_norm;TIO_norm;PRESULFAT_norm;RS_norm]
%Matriz de las salidas normalizadas
t=(DQO_v);

%Matriz de las salidas normalizadas
load IWyounessCOD_9n.txt
load LWyounessCOD_9n.txt
load b1younessCOD_9n.txt
load b2younessCOD_9n.txt

for i=1:length(p)
   	in=p(:,i);
	a1 = tansig(IWyounessCOD_9n*in+b1younessCOD_9n);
	a2 = purelin(LWyounessCOD_9n*a1+b2younessCOD_9n);
	simulados(i)=a2;
end

save simulados.txt simulados -ascii
save DQO_v.txt DQO_v -ascii
[DQO_v' simulados'];
%[simulados'];
%hist(DQO_v);
%hist(simulados);
%bar(DQO_v)
%bar(DQO_v)
%bar(simulados)


%[DQO_v',simulados']

%plot(DQO_v,data(1,:),'*')
%hold on
%plot(simulados,data(1,:),'k--')

    
    %figure(1)
%plot(DQO_v,simulados,'*')
%xlabel('Experimental')
%ylabel('Simulado')


for i=1
         figure(i+1);
         [pente(i),origine(i),coeffreg(i)]=postreg(simulados,DQO_v)
end  




[Intercepto_sup Intercepto_inf Pendiente_sup Pendiente_inf  a  b]=Boundary(simulados,DQO_v)

[R,Q]=size(p)
%val=[3:4:Q,3:4:Q];
val=[3:4:Q];
app=[1:4:Q 2:4:Q 4:4:Q];

TargetVal=DQO_v(val);
TargetApp=DQO_v(app);
SimuladosVal=simulados(val);
SimuladosApp=simulados(app);

ea=SimuladosApp-TargetApp;
ev=SimuladosVal-TargetVal;

scea=ea*ea';
scev=ev*ev';

rmsea=sqrt(scea/Q)
rmsev=sqrt(scev/Q)
%%%%%%%%%%%%%%%%data append
figure(3)
plot(TargetApp,SimuladosApp,'k*',TargetVal,SimuladosVal,'bo')

%figure(4)
%plot(TargetApp,SimuladosApp,'*',TargetVal,SimuladosVal,'ok')
%[pente(4),origine(4),coeffreg(4)]=postreg(TargetApp,SimuladosApp)
%figure(5)
%plot(TargetVal,SimuladosVal,'o')
 %[pente(5),origine(5),coeffreg(5)]=postreg(SimuladosVal, TargetVal)
 %figure(6)
 %plot(TargetApp,SimuladosApp,'ok');
 %[pente(6),origine(6),coeffreg(6)]=postreg(SimuladosVal, TargetVal)

