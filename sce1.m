function s=sce(p,x,y,fonc)

eval(['yc=' fonc '(p,x);']);
err=y-yc;
s=err'*err;