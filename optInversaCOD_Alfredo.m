function y=optInversaCOD(a1,x);

%i1=0.10333333333333;
i2=0.36000000000000;
i3=0.30900000000000;
i4=0.10000000000000;
i5=0.10000000000000;
i6=0.10000000000000;
i7=0.633333333333333333333;
i8=0.71538461538462;
i9=0.90000000000000;

%cod=0.8043;

IWyounessCOD_9n=[-3.1657148e-001  2.2363675e-001  7.2841687e+000  2.0880795e+000  1.8109594e+000  3.3470607e+000 -1.0446562e+000  1.7595978e+000  2.0458607e+000
 -5.5154597e-001 -9.5641328e-001 -3.8864177e+000  2.0138613e+000 -2.8670162e+000 -1.2944854e+000 -4.5002338e-001 -6.4122388e+000  2.1782436e+000
  1.4092346e+000 -8.0290728e+000 -1.2034176e+001  1.5737414e+001 -3.3130408e+000 -2.4248135e-001 -3.6828477e+000  1.1670182e+001 -3.6555507e+000
 -7.3832514e-001 -1.6962386e-001 -3.2518032e+000  1.2309096e+000 -3.2790598e-001 -1.0312635e+000 -5.4097745e-001 -2.8457978e+000  1.6688412e+000
  5.0504954e+001 -1.1083024e-001  6.7242229e+000  1.7718708e+000 -1.2483601e+000 -3.1511552e+000  1.6575248e+000 -1.4105787e+000 -3.0968630e+000
 -1.3825318e+000 -4.6622448e-001 -5.9643332e+000  5.8057601e+000  9.3339387e-001 -2.8553214e+000 -1.6652627e+000 -3.5912480e+000  2.8907711e+000
 -2.9020134e+001  7.5693425e-001  4.1082352e-001  2.6872377e-001 -8.5967358e-002 -6.3026125e-001  1.0244688e+000 -7.5463408e-001 -7.7876185e+000
 -3.7356218e+000  1.2429240e-003  9.1090942e-001 -6.6733962e-001 -7.8642338e-001 -1.2262768e+000  1.2131164e+000 -1.3882046e+000 -1.4616442e-001
 -5.5038504e+000  1.1252257e+000  3.2299655e+000 -2.7131155e+000 -7.3530531e-001  2.5447537e-001  1.9286608e+000 -3.0637503e+000  1.1389721e+000
];
LWyounessCOD_9n=[6.0306820e-001 -5.9360758e+000  6.2563198e-001  7.0452975e+000 -6.0869585e+000 -6.8464235e-001  5.1269618e+000  1.7649149e+000 -6.6617764e-001
];
b1younessCOD_9n=[-5.2509703e+000
  5.6355392e+000
 -1.1999610e+001
  2.6747871e+000
 -2.4115498e+000
  1.2615342e+000
  1.4984202e+000
 -6.1703136e-002
 -6.7846285e-001];
b2younessCOD_9n=[1.2959809e+001];

X1=-2*((IWyounessCOD_9n(1,2)*i2)+(IWyounessCOD_9n(1,3)*i3)+(IWyounessCOD_9n(1,4)*i4)+...
    (IWyounessCOD_9n(1,5)*i5)+(IWyounessCOD_9n(1,6)*i6)+(IWyounessCOD_9n(1,7)*i7)+(IWyounessCOD_9n(1,8)*i8)+...
    (IWyounessCOD_9n(1,9)*i9)+b1younessCOD_9n(1,1));
X2=-2*((IWyounessCOD_9n(2,2)*i2)+(IWyounessCOD_9n(2,3)*i3)+(IWyounessCOD_9n(2,4)*i4)+...
    (IWyounessCOD_9n(2,5)*i5)+(IWyounessCOD_9n(2,6)*i6)+(IWyounessCOD_9n(2,7)*i7)+(IWyounessCOD_9n(2,8)*i8)+...
    (IWyounessCOD_9n(2,9)*i9)+b1younessCOD_9n(2,1));
X3=-2*((IWyounessCOD_9n(3,2)*i2)+(IWyounessCOD_9n(3,3)*i3)+(IWyounessCOD_9n(3,4)*i4)+...
    (IWyounessCOD_9n(3,5)*i5)+(IWyounessCOD_9n(3,6)*i6)+(IWyounessCOD_9n(3,7)*i7)+(IWyounessCOD_9n(3,8)*i8)+...
    (IWyounessCOD_9n(3,9)*i9)+b1younessCOD_9n(3,1));
X4=-2*((IWyounessCOD_9n(4,2)*i2)+(IWyounessCOD_9n(4,3)*i3)+(IWyounessCOD_9n(4,4)*i4)+...
    (IWyounessCOD_9n(4,5)*i5)+(IWyounessCOD_9n(4,6)*i6)+(IWyounessCOD_9n(4,7)*i7)+(IWyounessCOD_9n(4,8)*i8)+...
    (IWyounessCOD_9n(4,9)*i9)+b1younessCOD_9n(4,1));
X5=-2*((IWyounessCOD_9n(5,2)*i2)+(IWyounessCOD_9n(5,3)*i3)+(IWyounessCOD_9n(5,4)*i4)+...
    (IWyounessCOD_9n(5,5)*i5)+(IWyounessCOD_9n(5,6)*i6)+(IWyounessCOD_9n(5,7)*i7)+(IWyounessCOD_9n(5,8)*i8)+...
    (IWyounessCOD_9n(5,9)*i9)+b1younessCOD_9n(5,1));
X6=-2*((IWyounessCOD_9n(6,2)*i2)+(IWyounessCOD_9n(6,3)*i3)+(IWyounessCOD_9n(6,4)*i4)+...
    (IWyounessCOD_9n(6,5)*i5)+(IWyounessCOD_9n(6,6)*i6)+(IWyounessCOD_9n(6,7)*i7)+(IWyounessCOD_9n(6,8)*i8)+...
    (IWyounessCOD_9n(6,9)*i9)+b1younessCOD_9n(6,1));
X7=-2*((IWyounessCOD_9n(7,2)*i2)+(IWyounessCOD_9n(7,3)*i3)+(IWyounessCOD_9n(7,4)*i4)+...
    (IWyounessCOD_9n(7,5)*i5)+(IWyounessCOD_9n(7,6)*i6)+(IWyounessCOD_9n(7,7)*i7)+(IWyounessCOD_9n(7,8)*i8)+...
    (IWyounessCOD_9n(7,9)*i9)+b1younessCOD_9n(7,1));
X8=-2*((IWyounessCOD_9n(8,2)*i2)+(IWyounessCOD_9n(8,3)*i3)+(IWyounessCOD_9n(8,4)*i4)+...
    (IWyounessCOD_9n(8,5)*i5)+(IWyounessCOD_9n(8,6)*i6)+(IWyounessCOD_9n(8,7)*i7)+(IWyounessCOD_9n(8,8)*i8)+...
    (IWyounessCOD_9n(8,9)*i9)+b1younessCOD_9n(8,1));
X9=-2*((IWyounessCOD_9n(9,2)*i2)+(IWyounessCOD_9n(9,3)*i3)+(IWyounessCOD_9n(9,4)*i4)+...
    (IWyounessCOD_9n(9,5)*i5)+(IWyounessCOD_9n(9,6)*i6)+(IWyounessCOD_9n(9,7)*i7)+(IWyounessCOD_9n(9,8)*i8)+...
    (IWyounessCOD_9n(9,9)*i9)+b1younessCOD_9n(9,1));


y=((2*LWyounessCOD_9n(1))/(x+exp((IWyounessCOD_9n(1,1)*(-2)*(a1))+X1)))...
    +((2*LWyounessCOD_9n(2))/(x+exp((IWyounessCOD_9n(2,1)*(-2)*(a1))+X2)))...
    +((2*LWyounessCOD_9n(3))/(x+exp((IWyounessCOD_9n(3,1)*(-2)*(a1))+X3)))...
    +((2*LWyounessCOD_9n(4))/(x+exp((IWyounessCOD_9n(4,1)*(-2)*(a1))+X4)))...
    +((2*LWyounessCOD_9n(5))/(x+exp((IWyounessCOD_9n(5,1)*(-2)*(a1))+X5)))...
    +((2*LWyounessCOD_9n(6))/(x+exp((IWyounessCOD_9n(6,1)*(-2)*(a1))+X6)))...
    +((2*LWyounessCOD_9n(7))/(x+exp((IWyounessCOD_9n(7,1)*(-2)*(a1))+X7)))...
    +((2*LWyounessCOD_9n(8))/(x+exp((IWyounessCOD_9n(8,1)*(-2)*(a1))+X8)))...
    +((2*LWyounessCOD_9n(9))/(x+exp((IWyounessCOD_9n(9,1)*(-2)*(a1))+X9)));

