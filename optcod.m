function COD=optcod(tiempo,x)

     									
   								
   								        
 									             
									             

            	 								
				

  T_norm = 0.1033 
  pH_norm = 0.3600 
  CONCENTRATION_norm =0.3090
  CONTAMINANT_norm =0.1000
  US_norm =0.1000
  UV_norm =0.1000
  TIO_norm =0.6333
  PRESULFAT_norm =0.7154
  RS_norm =0.9000		
  

  %Output
COD =  0.8043;
 

x=1;
%meter los pesos y bias del red


%meter los pesos y bias del red
IW=[ -0.3166    0.2236    7.2842    2.0881    1.8110    3.3471   -1.0447    1.7596    2.0459;...
   -0.5515   -0.9564   -3.8864    2.0139   -2.8670   -1.2945   -0.4500   -6.4122    2.1782;...
    1.4092   -8.0291  -12.0342   15.7374   -3.3130   -0.2425   -3.6828   11.6702   -3.6556;...
   -0.7383   -0.1696   -3.2518    1.2309   -0.3279   -1.0313   -0.5410   -2.8458    1.6688;...
   50.5050   -0.1108    6.7242    1.7719   -1.2484   -3.1512    1.6575   -1.4106   -3.0969;...
   -1.3825   -0.4662   -5.9643    5.8058    0.9334   -2.8553   -1.6653   -3.5912    2.8908;...
  -29.0201    0.7569    0.4108    0.2687   -0.0860   -0.6303    1.0245   -0.7546   -7.7876;...
   -3.7356    0.0012    0.9109   -0.6673   -0.7864   -1.2263    1.2131   -1.3882   -0.1462;...
   -5.5039    1.1252    3.2300   -2.7131   -0.7353    0.2545    1.9287   -3.0638    1.1390];


   
   LW=[0.6031   -5.9361    0.6256    7.0453   -6.0870   -0.6846    5.1270    1.7649   -0.6662]


   b1=[-5.2510 5.6355 -11.9996  2.6748 -2.4115  1.2615  1.4984 -0.0617 -0.6785]


    

b2=[12.9598]


l1=-2*(IW(1,1)); %l1=-2*(IW(1,1))/T_v_110
l2=-2*(IW(2,1));
l3=-2*(IW(3,1));
l4=-2*(IW(4,1));
l5=-2*(IW(5,1));
l6=-2*(IW(6,1));
l7=-2*(IW(7,1));
l8=-2*(IW(8,1));
l9=-2*(IW(9,1));



X1=-2*((IW(1,2)*(pH_norm ))+(IW(1,3)*(CONCENTRATION_norm))+(IW(1,4)*(CONTAMINANT_norm))+(IW(1,5)*(US_norm))+(IW(1,6)*(UV_norm))+(IW(1,7)*( TIO_norm))...
    +(IW(1,8)*(PRESULFAT_norm))+(IW(1,9)*(RS_norm))+b1(1));
X2=-2*((IW(2,2)*(pH_norm ))+(IW(2,3)*(CONCENTRATION_norm))+(IW(2,4)*(CONTAMINANT_norm))+(IW(2,5)*(US_norm))+(IW(2,6)*(UV_norm))+(IW(2,7)*( TIO_norm))...
    +(IW(2,8)*(PRESULFAT_norm))+(IW(2,9)*(RS_norm))+b1(2));
X3=-2*((IW(3,2)*(pH_norm ))+(IW(3,3)*(CONCENTRATION_norm))+(IW(3,4)*(CONTAMINANT_norm))+(IW(3,5)*(US_norm))+(IW(3,6)*(UV_norm))+(IW(3,7)*( TIO_norm))...
    +(IW(3,8)*(PRESULFAT_norm))+(IW(3,9)*(RS_norm))+b1(3));
X4=-2*((IW(4,2)*(pH_norm ))+(IW(4,3)*(CONCENTRATION_norm))+(IW(4,4)*(CONTAMINANT_norm))+(IW(4,5)*(US_norm))+(IW(4,6)*(UV_norm))+(IW(4,7)*( TIO_norm))...
    +(IW(4,8)*(PRESULFAT_norm))+(IW(4,9)*(RS_norm))+b1(4));
X5=-2*((IW(5,2)*(pH_norm ))+(IW(5,3)*(CONCENTRATION_norm))+(IW(5,4)*(CONTAMINANT_norm))+(IW(5,5)*(US_norm))+(IW(5,6)*(UV_norm))+(IW(5,7)*( TIO_norm))...
    +(IW(5,8)*(PRESULFAT_norm))+(IW(5,9)*(RS_norm))+b1(5));
X6=-2*((IW(6,2)*(pH_norm ))+(IW(6,3)*(CONCENTRATION_norm))+(IW(6,4)*(CONTAMINANT_norm))+(IW(6,5)*(US_norm))+(IW(6,6)*(UV_norm))+(IW(6,7)*( TIO_norm))...
    +(IW(6,8)*(PRESULFAT_norm))+(IW(6,9)*(RS_norm))+b1(6));
X7=-2*((IW(7,2)*(pH_norm ))+(IW(7,3)*(CONCENTRATION_norm))+(IW(7,4)*(CONTAMINANT_norm))+(IW(7,5)*(US_norm))+(IW(7,6)*(UV_norm))+(IW(7,7)*( TIO_norm))...
    +(IW(7,8)*(PRESULFAT_norm))+(IW(7,9)*(RS_norm))+b1(7));
X8=-2*((IW(8,2)*(pH_norm ))+(IW(8,3)*(CONCENTRATION_norm))+(IW(8,4)*(CONTAMINANT_norm))+(IW(8,5)*(US_norm))+(IW(8,6)*(UV_norm))+(IW(8,7)*( TIO_norm))...
    +(IW(8,8)*(PRESULFAT_norm))+(IW(8,9)*(RS_norm))+b1(8));
X9=-2*((IW(9,2)*(pH_norm ))+(IW(9,3)*(CONCENTRATION_norm))+(IW(9,4)*(CONTAMINANT_norm))+(IW(9,5)*(US_norm))+(IW(9,6)*(UV_norm))+(IW(9,7)*( TIO_norm))...
    +(IW(9,8)*(PRESULFAT_norm))+(IW(9,9)*(RS_norm))+b1(9));



%COD=((LW(1)*(-1+(2/(x+exp(X1+(l1*(tiempo)))))))+(LW(2)*(-1+(2/(x+exp(X2+(l2*(tiempo)))))))+(LW(3)*(-1+(2/(x+exp(X3+(l3*(tiempo)))))))+...
 %   (LW(4)*(-1+(2/(x+exp(X4+(l4*(tiempo)))))))+(LW(5)*(-1+(2/(x+exp(X5+(l5*(tiempo)))))))+(LW(6)*(-1+(2/(x+exp(X6+(l6*(tiempo)))))))+...
  %  (LW(7)*(-1+(2/(x+exp(X7+(l7*(tiempo)))))))+(LW(8)*(-1+(2/(x+exp(X8+(l8*(tiempo)))))))+(LW(9)*(-1+(2/(x+exp(X9+(l9*(tiempo)))))))+b2)

COD-b2+LW(1)+LW(2)+LW(3)+LW(4)+LW(5)+LW(6)+LW(7)+LW(8)+LW(9)=...
  ((LW(1)*2)/(x+exp(X1+(l1*(tiempo)))))+((LW(2)*2)/(x+exp(X2+(l2*(tiempo)))))+((LW(3)*2)/(x+exp(X3+(l3*(tiempo)))))+...
 ((LW(4)*2)/(x+exp(X4+(l4*(tiempo)))))+((LW(5)*2)/(x+exp(X5+(l5*(tiempo)))))+((LW(6)*2)/(x+exp(X6+(l6*(tiempo)))))+...
 ((LW(7)*2)/(x+exp(X7+(l7*(tiempo)))))+((LW(8)*2)/(x+exp(X8+(l8*(tiempo)))))+((LW(9)*2)/(x+exp(X9+(l9*(tiempo)))))




