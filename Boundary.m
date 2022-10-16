function  [Intercepto_sup Intercepto_inf Pendiente_sup Pendiente_inf  a  b]= Boundary(X,y)
x = X; 

% calculo de factores
n = length(x); 
n_x = length(x); 
n_y = length(y); 

x_media =  sum(x)/n ; 
y_media =  sum(y)/n ; 

for i = 1:n
    dX(i) = (x(i) - x_media); 
    dY(i) = (y(i) - y_media);
    dXdY(i) = dX(i)*dY(i);
    dXX(i) = (dX(i)^2); 
    dYY(i) = (dY(i)^2); 
end

b = sum(dXdY)/sum(dXX); 
a = y_media - (b*x_media); 

%errores de la regresion
y_t = a + (b*x);

figure(10)
plot(x, y,'o', x, y_t,'r-')
xlabel('ho experimental')
ylabel('ho neural network')

for i =1:n
    dY_t(i) = (y(i) - y_t(i));
    dYY_t(i) = dY_t(i)^2; 
    XX(i) = x(i)^2; 
end
Sb = sqrt( sum(dYY_t) / ( (n-2) * sum(dXX) ) );  
Sa = sqrt( (sum(dYY_t) * sum(XX)) / (n *(n-2) * sum(dXX)) ); 

% cargo la matriz de t-student
load('A.txt'); 
A = A; 
% seleccion de los interceptos
v = (n-2); 
% nomenclatura de confianza
% 60% = 2, 80% = 3, 90% = 4, 95% = 5, 98% = 6, 99% = 7, 99.8% = 8
Conf = 8; 
x = A(:,1);  
y = A(:,Conf); 
%interpolacion  lineal
t_stu = interp1(x,y,v,'lineal');

if n > 1000
    t_stu_v = [0, 0.842, 1.282, 1.645, 1.96, 2.326, 2.576, 0];     
    t_stu = t_stu_v(Conf);  
end

% niveles de confianza
Sat_stu = Sa*t_stu
Sbt_stu = Sb*t_stu 
Intercepto_sup = a + Sa*t_stu; 
Intercepto_inf = a - Sa*t_stu; 
Pendiente_sup = b + Sb*t_stu; 
Pendiente_inf = b - Sb*t_stu; 

