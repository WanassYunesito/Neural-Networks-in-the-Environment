function s=sce(p,x,y,fonc)
#yc=expo(p,x);
#yc=mich(p,x);
eval(['yc=' fonc '(p,x);']);
err=y-yc;
s=err'*err;