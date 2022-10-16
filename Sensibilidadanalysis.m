IW=[7.9771940e-01 1.5921221e+00 5.8276862e+00 8.4046430e-01 1.4838018e+00 4.0475542e+00 -2.9823614e-01 -2.4389576e+00 6.7378753e+00;
   7.4074581e-01 1.5044872e-01 2.5140508e-01 3.8539501e-01 1.1079910e+00 -2.9954505e+00 -7.8100719e-02 -1.7474727e+00 -1.0086559e+00;
   2.5115862e+00 -2.2720064e+00 -2.1592840e+00 3.1326613e+00 6.1514582e+00 -5.4374034e-01 -1.8597335e+00 1.2211731e+00 -1.4773917e-01;
   1.4895078e+00 3.3823433e+00 -6.2555515e+00 -1.7586623e+00 3.4543973e-01 3.7693352e+00 -3.8693500e-01 -2.4546020e+00 1.4882556e+00;
  -5.6702531e+01 -2.9833632e-01 -7.4682620e+00 -1.6763896e+00 8.5713705e-01 -2.5074829e+01 -5.5768803e-01 7.3664899e-01 -2.5007884e+01;
   1.0345253e+01 -1.8605696e-01 -1.4641772e+01 3.8749083e+01 2.1624254e-02 -2.6647264e+00 1.7991352e+00 -2.4968989e+01 -4.0612534e+00;
   3.6423682e+00 1.7905435e+00 -1.9818346e+01 1.1920176e+01 -1.2915713e+00 -9.5104166e+00 -1.7907525e+00 3.4043592e+00 -8.5542911e+00;
   6.9677448e-01 -2.4238132e-01 -6.8280801e+00 1.6353949e-01 3.1099758e+00 1.8221321e+00 -1.2373724e-01 -3.3696859e+00 4.3503416e+00;
  -2.7070221e+01 8.0310834e-01 5.2872304e-01 1.6952838e-01 -2.1323639e-01 -6.3614383e-01 5.3824946e-01 -6.0218667e-01 -7.0581329e+00];

   
   %LW = [0.603068200000000;-5.936075800000000; 0.625631980000000; 7.045297500000000;...
       %-6.086958500000000;-0.684642350000000; 5.126961800000000; 1.764914900000000;-0.666177640000000];
   
   LW = [3.2427016e+00;-5.6451732e+00;3.9005572e-01;-1.0452366e+00;...
       2.5730218e+00;-4.0525159e-01;3.3514435e-01;2.0617697e+00;4.9835834e+00];
       


    
  
  IIn1_numerador = ((abs(IW(1,1))/(abs(IW(1,1))+abs(IW(1,2))+...
    abs(IW(1,3))+abs(IW(1,4))+abs(IW(1,5))+abs(IW(1,6))+abs(IW(1,7))+abs(IW(1,8))+...
    abs(IW(1,9))))*abs(LW(1,1)))+...
    ((abs(IW(2,1))/(abs(IW(2,1))+abs(IW(2,2))+...
    abs(IW(2,3))+abs(IW(2,4))+abs(IW(2,5))+abs(IW(2,6))+abs(IW(2,7))+abs(IW(2,8))+...
    abs(IW(2,9))))*abs(LW(2,1)))+...
    ((abs(IW(3,1))/(abs(IW(3,1))+abs(IW(3,2))+...
    abs(IW(3,3))+abs(IW(3,4))+abs(IW(3,5))+abs(IW(3,6))+abs(IW(3,7))+abs(IW(3,8))+...
    abs(IW(3,9))))*abs(LW(3,1)))+...
    ((abs(IW(4,1))/(abs(IW(4,1))+abs(IW(4,2))+...
    abs(IW(4,3))+abs(IW(4,4))+abs(IW(4,5))+abs(IW(4,6))+abs(IW(4,7))+abs(IW(4,8))+...
    abs(IW(4,9))))*abs(LW(4,1)))+...
    ((abs(IW(5,1))/(abs(IW(5,1))+abs(IW(5,2))+...
    abs(IW(5,3))+abs(IW(5,4))+abs(IW(5,5))+abs(IW(5,6))+abs(IW(5,7))+abs(IW(5,8))+...
    abs(IW(5,9))))*abs(LW(5,1)))+...
    ((abs(IW(6,1))/(abs(IW(6,1))+abs(IW(6,2))+...
    abs(IW(6,3))+abs(IW(6,4))+abs(IW(6,5))+abs(IW(6,6))+abs(IW(6,7))+abs(IW(6,8))+...
    abs(IW(6,9))))*abs(LW(6,1)))+...
    ((abs(IW(7,1))/(abs(IW(7,1))+abs(IW(7,2))+...
    abs(IW(7,3))+abs(IW(7,4))+abs(IW(7,5))+abs(IW(7,6))+abs(IW(7,7))+abs(IW(7,8))+...
    abs(IW(7,9))))*abs(LW(7,1)))+...
    ((abs(IW(8,1))/(abs(IW(8,1))+abs(IW(8,2))+...
    abs(IW(8,3))+abs(IW(8,4))+abs(IW(8,5))+abs(IW(8,6))+abs(IW(8,7))+abs(IW(8,8))+...
    abs(IW(8,9))))*abs(LW(8,1)))+...
    ((abs(IW(9,1))/(abs(IW(9,1))+abs(IW(9,2))+...
    abs(IW(9,3))+abs(IW(9,4))+abs(IW(9,5))+abs(IW(9,6))+abs(IW(9,7))+abs(IW(9,8))+...
    abs(IW(9,9))))*abs(LW(9,1)));

IIn2_numerador = ((abs(IW(1,2))/(abs(IW(1,1))+abs(IW(1,2))+...
    abs(IW(1,3))+abs(IW(1,4))+abs(IW(1,5))+abs(IW(1,6))+abs(IW(1,7))+abs(IW(1,8))+...
    abs(IW(1,9))))*abs(LW(1,1)))+...
    ((abs(IW(2,2))/(abs(IW(2,1))+abs(IW(2,2))+...
    abs(IW(2,3))+abs(IW(2,4))+abs(IW(2,5))+abs(IW(2,6))+abs(IW(2,7))+abs(IW(2,8))+...
    abs(IW(2,9))))*abs(LW(2,1)))+...
    ((abs(IW(3,2))/(abs(IW(3,1))+abs(IW(3,2))+...
    abs(IW(3,3))+abs(IW(3,4))+abs(IW(3,5))+abs(IW(3,6))+abs(IW(3,7))+abs(IW(3,8))+...
    abs(IW(3,9))))*abs(LW(3,1)))+...
    ((abs(IW(4,2))/(abs(IW(4,1))+abs(IW(4,2))+...
    abs(IW(4,3))+abs(IW(4,4))+abs(IW(4,5))+abs(IW(4,6))+abs(IW(4,7))+abs(IW(4,8))+...
    abs(IW(4,9))))*abs(LW(4,1)))+...
    ((abs(IW(5,2))/(abs(IW(5,1))+abs(IW(5,2))+...
    abs(IW(5,3))+abs(IW(5,4))+abs(IW(5,5))+abs(IW(5,6))+abs(IW(5,7))+abs(IW(5,8))+...
    abs(IW(5,9))))*abs(LW(5,1)))+...
    ((abs(IW(6,2))/(abs(IW(6,1))+abs(IW(6,2))+...
    abs(IW(6,3))+abs(IW(6,4))+abs(IW(6,5))+abs(IW(6,6))+abs(IW(6,7))+abs(IW(6,8))+...
    abs(IW(6,9))))*abs(LW(6,1)))+...
    ((abs(IW(7,2))/(abs(IW(7,1))+abs(IW(7,2))+...
    abs(IW(7,3))+abs(IW(7,4))+abs(IW(7,5))+abs(IW(7,6))+abs(IW(7,7))+abs(IW(7,8))+...
    abs(IW(7,9))))*abs(LW(7,1)))+...
    ((abs(IW(8,2))/(abs(IW(8,1))+abs(IW(8,2))+...
    abs(IW(8,3))+abs(IW(8,4))+abs(IW(8,5))+abs(IW(8,6))+abs(IW(8,7))+abs(IW(8,8))+...
    abs(IW(8,9))))*abs(LW(8,1)))+...
    ((abs(IW(9,2))/(abs(IW(9,1))+abs(IW(9,2))+...
    abs(IW(9,3))+abs(IW(9,4))+abs(IW(9,5))+abs(IW(9,6))+abs(IW(9,7))+abs(IW(9,8))+...
    abs(IW(9,9))))*abs(LW(9,1)));
IIn3_numerador = ((abs(IW(1,3))/(abs(IW(1,1))+abs(IW(1,2))+...
    abs(IW(1,3))+abs(IW(1,4))+abs(IW(1,5))+abs(IW(1,6))+abs(IW(1,7))+abs(IW(1,8))+...
    abs(IW(1,9))))*abs(LW(1,1)))+...
    ((abs(IW(2,3))/(abs(IW(2,1))+abs(IW(2,2))+...
    abs(IW(2,3))+abs(IW(2,4))+abs(IW(2,5))+abs(IW(2,6))+abs(IW(2,7))+abs(IW(2,8))+...
    abs(IW(2,9))))*abs(LW(2,1)))+...
    ((abs(IW(3,3))/(abs(IW(3,1))+abs(IW(3,2))+...
    abs(IW(3,3))+abs(IW(3,4))+abs(IW(3,5))+abs(IW(3,6))+abs(IW(3,7))+abs(IW(3,8))+...
    abs(IW(3,9))))*abs(LW(3,1)))+...
    ((abs(IW(4,3))/(abs(IW(4,1))+abs(IW(4,2))+...
    abs(IW(4,3))+abs(IW(4,4))+abs(IW(4,5))+abs(IW(4,6))+abs(IW(4,7))+abs(IW(4,8))+...
    abs(IW(4,9))))*abs(LW(4,1)))+...
    ((abs(IW(5,3))/(abs(IW(5,1))+abs(IW(5,2))+...
    abs(IW(5,3))+abs(IW(5,4))+abs(IW(5,5))+abs(IW(5,6))+abs(IW(5,7))+abs(IW(5,8))+...
    abs(IW(5,9))))*abs(LW(5,1)))+...
    ((abs(IW(6,3))/(abs(IW(6,1))+abs(IW(6,2))+...
    abs(IW(6,3))+abs(IW(6,4))+abs(IW(6,5))+abs(IW(6,6))+abs(IW(6,7))+abs(IW(6,8))+...
    abs(IW(6,9))))*abs(LW(6,1)))+...
    ((abs(IW(7,3))/(abs(IW(7,1))+abs(IW(7,2))+...
    abs(IW(7,3))+abs(IW(7,4))+abs(IW(7,5))+abs(IW(7,6))+abs(IW(7,7))+abs(IW(7,8))+...
    abs(IW(7,9))))*abs(LW(7,1)))+...
    ((abs(IW(8,3))/(abs(IW(8,1))+abs(IW(8,2))+...
    abs(IW(8,3))+abs(IW(8,4))+abs(IW(8,5))+abs(IW(8,6))+abs(IW(8,7))+abs(IW(8,8))+...
    abs(IW(8,9))))*abs(LW(8,1)))+...
    ((abs(IW(9,3))/(abs(IW(9,1))+abs(IW(9,2))+...
    abs(IW(9,3))+abs(IW(9,4))+abs(IW(9,5))+abs(IW(9,6))+abs(IW(9,7))+abs(IW(9,8))+...
    abs(IW(9,9))))*abs(LW(9,1)));
IIn4_numerador = ((abs(IW(1,4))/(abs(IW(1,1))+abs(IW(1,2))+...
    abs(IW(1,3))+abs(IW(1,4))+abs(IW(1,5))+abs(IW(1,6))+abs(IW(1,7))+abs(IW(1,8))+...
    abs(IW(1,9))))*abs(LW(1,1)))+...
    ((abs(IW(2,4))/(abs(IW(2,1))+abs(IW(2,2))+...
    abs(IW(2,3))+abs(IW(2,4))+abs(IW(2,5))+abs(IW(2,6))+abs(IW(2,7))+abs(IW(2,8))+...
    abs(IW(2,9))))*abs(LW(2,1)))+...
    ((abs(IW(3,4))/(abs(IW(3,1))+abs(IW(3,2))+...
    abs(IW(3,3))+abs(IW(3,4))+abs(IW(3,5))+abs(IW(3,6))+abs(IW(3,7))+abs(IW(3,8))+...
    abs(IW(3,9))))*abs(LW(3,1)))+...
    ((abs(IW(4,4))/(abs(IW(4,1))+abs(IW(4,2))+...
    abs(IW(4,3))+abs(IW(4,4))+abs(IW(4,5))+abs(IW(4,6))+abs(IW(4,7))+abs(IW(4,8))+...
    abs(IW(4,9))))*abs(LW(4,1)))+...
    ((abs(IW(5,4))/(abs(IW(5,1))+abs(IW(5,2))+...
    abs(IW(5,3))+abs(IW(5,4))+abs(IW(5,5))+abs(IW(5,6))+abs(IW(5,7))+abs(IW(5,8))+...
    abs(IW(5,9))))*abs(LW(5,1)))+...
    ((abs(IW(6,4))/(abs(IW(6,1))+abs(IW(6,2))+...
    abs(IW(6,3))+abs(IW(6,4))+abs(IW(6,5))+abs(IW(6,6))+abs(IW(6,7))+abs(IW(6,8))+...
    abs(IW(6,9))))*abs(LW(6,1)))+...
    ((abs(IW(7,4))/(abs(IW(7,1))+abs(IW(7,2))+...
    abs(IW(7,3))+abs(IW(7,4))+abs(IW(7,5))+abs(IW(7,6))+abs(IW(7,7))+abs(IW(7,8))+...
    abs(IW(7,9))))*abs(LW(7,1)))+...
    ((abs(IW(8,4))/(abs(IW(8,1))+abs(IW(8,2))+...
    abs(IW(8,3))+abs(IW(8,4))+abs(IW(8,5))+abs(IW(8,6))+abs(IW(8,7))+abs(IW(8,8))+...
    abs(IW(8,9))))*abs(LW(8,1)))+...
    ((abs(IW(9,4))/(abs(IW(9,1))+abs(IW(9,2))+...
    abs(IW(9,3))+abs(IW(9,4))+abs(IW(9,5))+abs(IW(9,6))+abs(IW(9,7))+abs(IW(9,8))+...
    abs(IW(9,9))))*abs(LW(9,1)));

IIn5_numerador = ((abs(IW(1,5))/(abs(IW(1,1))+abs(IW(1,2))+...
    abs(IW(1,3))+abs(IW(1,4))+abs(IW(1,5))+abs(IW(1,6))+abs(IW(1,7))+abs(IW(1,8))+...
    abs(IW(1,9))))*abs(LW(1,1)))+...
    ((abs(IW(2,5))/(abs(IW(2,1))+abs(IW(2,2))+...
    abs(IW(2,3))+abs(IW(2,4))+abs(IW(2,5))+abs(IW(2,6))+abs(IW(2,7))+abs(IW(2,8))+...
    abs(IW(2,9))))*abs(LW(2,1)))+...
    ((abs(IW(3,5))/(abs(IW(3,1))+abs(IW(3,2))+...
    abs(IW(3,3))+abs(IW(3,4))+abs(IW(3,5))+abs(IW(3,6))+abs(IW(3,7))+abs(IW(3,8))+...
    abs(IW(3,9))))*abs(LW(3,1)))+...
    ((abs(IW(4,5))/(abs(IW(4,1))+abs(IW(4,2))+...
    abs(IW(4,3))+abs(IW(4,4))+abs(IW(4,5))+abs(IW(4,6))+abs(IW(4,7))+abs(IW(4,8))+...
    abs(IW(4,9))))*abs(LW(4,1)))+...
    ((abs(IW(5,5))/(abs(IW(5,1))+abs(IW(5,2))+...
    abs(IW(5,3))+abs(IW(5,4))+abs(IW(5,5))+abs(IW(5,6))+abs(IW(5,7))+abs(IW(5,8))+...
    abs(IW(5,9))))*abs(LW(5,1)))+...
    ((abs(IW(6,5))/(abs(IW(6,1))+abs(IW(6,2))+...
    abs(IW(6,3))+abs(IW(6,4))+abs(IW(6,5))+abs(IW(6,6))+abs(IW(6,7))+abs(IW(6,8))+...
    abs(IW(6,9))))*abs(LW(6,1)))+...
    ((abs(IW(7,5))/(abs(IW(7,1))+abs(IW(7,2))+...
    abs(IW(7,3))+abs(IW(7,4))+abs(IW(7,5))+abs(IW(7,6))+abs(IW(7,7))+abs(IW(7,8))+...
    abs(IW(7,9))))*abs(LW(7,1)))+...
    ((abs(IW(8,3))/(abs(IW(8,1))+abs(IW(8,2))+...
    abs(IW(8,5))+abs(IW(8,4))+abs(IW(8,5))+abs(IW(8,6))+abs(IW(8,7))+abs(IW(8,8))+...
    abs(IW(8,9))))*abs(LW(8,1)))+...
    ((abs(IW(9,5))/(abs(IW(9,1))+abs(IW(9,2))+...
    abs(IW(9,3))+abs(IW(9,4))+abs(IW(9,5))+abs(IW(9,6))+abs(IW(9,7))+abs(IW(9,8))+...
    abs(IW(9,9))))*abs(LW(9,1)));
IIn6_numerador = ((abs(IW(1,6))/(abs(IW(1,1))+abs(IW(1,2))+...
    abs(IW(1,3))+abs(IW(1,4))+abs(IW(1,5))+abs(IW(1,6))+abs(IW(1,7))+abs(IW(1,8))+...
    abs(IW(1,9))))*abs(LW(1,1)))+...
    ((abs(IW(2,6))/(abs(IW(2,1))+abs(IW(2,2))+...
    abs(IW(2,3))+abs(IW(2,4))+abs(IW(2,5))+abs(IW(2,6))+abs(IW(2,7))+abs(IW(2,8))+...
    abs(IW(2,9))))*abs(LW(2,1)))+...
    ((abs(IW(3,6))/(abs(IW(3,1))+abs(IW(3,2))+...
    abs(IW(3,3))+abs(IW(3,4))+abs(IW(3,5))+abs(IW(3,6))+abs(IW(3,7))+abs(IW(3,8))+...
    abs(IW(3,9))))*abs(LW(3,1)))+...
    ((abs(IW(4,6))/(abs(IW(4,1))+abs(IW(4,2))+...
    abs(IW(4,3))+abs(IW(4,4))+abs(IW(4,5))+abs(IW(4,6))+abs(IW(4,7))+abs(IW(4,8))+...
    abs(IW(4,9))))*abs(LW(4,1)))+...
    ((abs(IW(5,6))/(abs(IW(5,1))+abs(IW(5,2))+...
    abs(IW(5,3))+abs(IW(5,4))+abs(IW(5,5))+abs(IW(5,6))+abs(IW(5,7))+abs(IW(5,8))+...
    abs(IW(5,9))))*abs(LW(5,1)))+...
    ((abs(IW(6,6))/(abs(IW(6,1))+abs(IW(6,2))+...
    abs(IW(6,3))+abs(IW(6,4))+abs(IW(6,5))+abs(IW(6,6))+abs(IW(6,7))+abs(IW(6,8))+...
    abs(IW(6,9))))*abs(LW(6,1)))+...
    ((abs(IW(7,6))/(abs(IW(7,1))+abs(IW(7,2))+...
    abs(IW(7,3))+abs(IW(7,4))+abs(IW(7,5))+abs(IW(7,6))+abs(IW(7,7))+abs(IW(7,8))+...
    abs(IW(7,9))))*abs(LW(7,1)))+...
    ((abs(IW(8,6))/(abs(IW(8,1))+abs(IW(8,2))+...
    abs(IW(8,3))+abs(IW(8,4))+abs(IW(8,5))+abs(IW(8,6))+abs(IW(8,7))+abs(IW(8,8))+...
    abs(IW(8,9))))*abs(LW(8,1)))+...
    ((abs(IW(9,6))/(abs(IW(9,1))+abs(IW(9,2))+...
    abs(IW(9,3))+abs(IW(9,4))+abs(IW(9,5))+abs(IW(9,6))+abs(IW(9,7))+abs(IW(9,8))+...
    abs(IW(9,9))))*abs(LW(9,1)));
IIn7_numerador = ((abs(IW(1,7))/(abs(IW(1,1))+abs(IW(1,2))+...
    abs(IW(1,3))+abs(IW(1,4))+abs(IW(1,5))+abs(IW(1,6))+abs(IW(1,7))+abs(IW(1,8))+...
    abs(IW(1,9))))*abs(LW(1,1)))+...
    ((abs(IW(2,7))/(abs(IW(2,1))+abs(IW(2,2))+...
    abs(IW(2,3))+abs(IW(2,4))+abs(IW(2,5))+abs(IW(2,6))+abs(IW(2,7))+abs(IW(2,8))+...
    abs(IW(2,9))))*abs(LW(2,1)))+...
    ((abs(IW(3,7))/(abs(IW(3,1))+abs(IW(3,2))+...
    abs(IW(3,3))+abs(IW(3,4))+abs(IW(3,5))+abs(IW(3,6))+abs(IW(3,7))+abs(IW(3,8))+...
    abs(IW(3,9))))*abs(LW(3,1)))+...
    ((abs(IW(4,7))/(abs(IW(4,1))+abs(IW(4,2))+...
    abs(IW(4,3))+abs(IW(4,4))+abs(IW(4,5))+abs(IW(4,6))+abs(IW(4,7))+abs(IW(4,8))+...
    abs(IW(4,9))))*abs(LW(4,1)))+...
    ((abs(IW(5,7))/(abs(IW(5,1))+abs(IW(5,2))+...
    abs(IW(5,3))+abs(IW(5,4))+abs(IW(5,5))+abs(IW(5,6))+abs(IW(5,7))+abs(IW(5,8))+...
    abs(IW(5,9))))*abs(LW(5,1)))+...
    ((abs(IW(6,7))/(abs(IW(6,1))+abs(IW(6,2))+...
    abs(IW(6,3))+abs(IW(6,4))+abs(IW(6,5))+abs(IW(6,6))+abs(IW(6,7))+abs(IW(6,8))+...
    abs(IW(6,9))))*abs(LW(6,1)))+...
    ((abs(IW(7,7))/(abs(IW(7,1))+abs(IW(7,2))+...
    abs(IW(7,3))+abs(IW(7,4))+abs(IW(7,5))+abs(IW(7,6))+abs(IW(7,7))+abs(IW(7,8))+...
    abs(IW(7,9))))*abs(LW(7,1)))+...
    ((abs(IW(8,7))/(abs(IW(8,1))+abs(IW(8,2))+...
    abs(IW(8,3))+abs(IW(8,4))+abs(IW(8,5))+abs(IW(8,6))+abs(IW(8,7))+abs(IW(8,8))+...
    abs(IW(8,9))))*abs(LW(8,1)))+...
    ((abs(IW(9,7))/(abs(IW(9,1))+abs(IW(9,2))+...
    abs(IW(9,3))+abs(IW(9,4))+abs(IW(9,5))+abs(IW(9,6))+abs(IW(9,7))+abs(IW(9,8))+...
    abs(IW(9,9))))*abs(LW(9,1)));
IIn8_numerador = ((abs(IW(1,8))/(abs(IW(1,1))+abs(IW(1,2))+...
    abs(IW(1,3))+abs(IW(1,4))+abs(IW(1,5))+abs(IW(1,6))+abs(IW(1,7))+abs(IW(1,8))+...
    abs(IW(1,9))))*abs(LW(1,1)))+...
    ((abs(IW(2,8))/(abs(IW(2,1))+abs(IW(2,2))+...
    abs(IW(2,3))+abs(IW(2,4))+abs(IW(2,5))+abs(IW(2,6))+abs(IW(2,7))+abs(IW(2,8))+...
    abs(IW(2,9))))*abs(LW(2,1)))+...
    ((abs(IW(3,8))/(abs(IW(3,1))+abs(IW(3,2))+...
    abs(IW(3,3))+abs(IW(3,4))+abs(IW(3,5))+abs(IW(3,6))+abs(IW(3,7))+abs(IW(3,8))+...
    abs(IW(3,9))))*abs(LW(3,1)))+...
    ((abs(IW(4,8))/(abs(IW(4,1))+abs(IW(4,2))+...
    abs(IW(4,3))+abs(IW(4,4))+abs(IW(4,5))+abs(IW(4,6))+abs(IW(4,7))+abs(IW(4,8))+...
    abs(IW(4,9))))*abs(LW(4,1)))+...
    ((abs(IW(5,8))/(abs(IW(5,1))+abs(IW(5,2))+...
    abs(IW(5,3))+abs(IW(5,4))+abs(IW(5,5))+abs(IW(5,6))+abs(IW(5,7))+abs(IW(5,8))+...
    abs(IW(5,9))))*abs(LW(5,1)))+...
    ((abs(IW(6,8))/(abs(IW(6,1))+abs(IW(6,2))+...
    abs(IW(6,3))+abs(IW(6,4))+abs(IW(6,5))+abs(IW(6,6))+abs(IW(6,7))+abs(IW(6,8))+...
    abs(IW(6,9))))*abs(LW(6,1)))+...
    ((abs(IW(7,8))/(abs(IW(7,1))+abs(IW(7,2))+...
    abs(IW(7,3))+abs(IW(7,4))+abs(IW(7,5))+abs(IW(7,6))+abs(IW(7,7))+abs(IW(7,8))+...
    abs(IW(7,9))))*abs(LW(7,1)))+...
    ((abs(IW(8,8))/(abs(IW(8,1))+abs(IW(8,2))+...
    abs(IW(8,3))+abs(IW(8,4))+abs(IW(8,5))+abs(IW(8,6))+abs(IW(8,7))+abs(IW(8,8))+...
    abs(IW(8,9))))*abs(LW(8,1)))+...
    ((abs(IW(9,8))/(abs(IW(9,1))+abs(IW(9,2))+...
    abs(IW(9,3))+abs(IW(9,4))+abs(IW(9,5))+abs(IW(9,6))+abs(IW(9,7))+abs(IW(9,8))+...
    abs(IW(9,9))))*abs(LW(9,1)));
IIn9_numerador = ((abs(IW(1,9))/(abs(IW(1,1))+abs(IW(1,2))+...
    abs(IW(1,3))+abs(IW(1,4))+abs(IW(1,5))+abs(IW(1,6))+abs(IW(1,7))+abs(IW(1,8))+...
    abs(IW(1,9))))*abs(LW(1,1)))+...
    ((abs(IW(2,9))/(abs(IW(2,1))+abs(IW(2,2))+...
    abs(IW(2,3))+abs(IW(2,4))+abs(IW(2,5))+abs(IW(2,6))+abs(IW(2,7))+abs(IW(2,8))+...
    abs(IW(2,9))))*abs(LW(2,1)))+...
    ((abs(IW(3,9))/(abs(IW(3,1))+abs(IW(3,2))+...
    abs(IW(3,3))+abs(IW(3,4))+abs(IW(3,5))+abs(IW(3,6))+abs(IW(3,7))+abs(IW(3,8))+...
    abs(IW(3,9))))*abs(LW(3,1)))+...
    ((abs(IW(4,9))/(abs(IW(4,1))+abs(IW(4,2))+...
    abs(IW(4,3))+abs(IW(4,4))+abs(IW(4,5))+abs(IW(4,6))+abs(IW(4,7))+abs(IW(4,8))+...
    abs(IW(4,9))))*abs(LW(4,1)))+...
    ((abs(IW(5,9))/(abs(IW(5,1))+abs(IW(5,2))+...
    abs(IW(5,3))+abs(IW(5,4))+abs(IW(5,5))+abs(IW(5,6))+abs(IW(5,7))+abs(IW(5,8))+...
    abs(IW(5,9))))*abs(LW(5,1)))+...
    ((abs(IW(6,9))/(abs(IW(6,1))+abs(IW(6,2))+...
    abs(IW(6,3))+abs(IW(6,4))+abs(IW(6,5))+abs(IW(6,6))+abs(IW(6,7))+abs(IW(6,8))+...
    abs(IW(6,9))))*abs(LW(6,1)))+...
    ((abs(IW(7,9))/(abs(IW(7,1))+abs(IW(7,2))+...
    abs(IW(7,3))+abs(IW(7,4))+abs(IW(7,5))+abs(IW(7,6))+abs(IW(7,7))+abs(IW(7,8))+...
    abs(IW(7,9))))*abs(LW(7,1)))+...
    ((abs(IW(8,9))/(abs(IW(8,1))+abs(IW(8,2))+...
    abs(IW(8,3))+abs(IW(8,4))+abs(IW(8,5))+abs(IW(8,6))+abs(IW(8,7))+abs(IW(8,8))+...
    abs(IW(8,9))))*abs(LW(8,1)))+...
    ((abs(IW(9,9))/(abs(IW(9,1))+abs(IW(9,2))+...
    abs(IW(9,3))+abs(IW(9,4))+abs(IW(9,5))+abs(IW(9,6))+abs(IW(9,7))+abs(IW(9,8))+...
    abs(IW(9,9))))*abs(LW(9,1)));

IIn_denumerador = IIn1_numerador+IIn2_numerador+IIn3_numerador+IIn4_numerador+...
    IIn5_numerador+IIn6_numerador+IIn7_numerador+IIn8_numerador+IIn9_numerador;
IJ1 = (IIn1_numerador/IIn_denumerador)*100; % La importancia del tiempo;
IJ2 = (IIn2_numerador/IIn_denumerador)*100; % La importancia del pH;
IJ3 = (IIn3_numerador/IIn_denumerador)*100; % La importancia del Herbicide concentration;
IJ4 = (IIn4_numerador/IIn_denumerador)*100; % La importancia del Contaminate;
IJ5 = (IIn5_numerador/IIn_denumerador)*100; % La importancia de US Ultra Sound;
IJ6 = (IIn6_numerador/IIn_denumerador)*100; % La importancia de UV Light Intensity;
IJ7 = (IIn7_numerador/IIn_denumerador)*100; % La importnacia de [TiO2];
IJ8 = (IIn8_numerador/IIn_denumerador)*100; % La importancia de [K2S2O8];
IJ9 = (IIn9_numerador/IIn_denumerador)*100; % La importnacia de SR Solar Radiation;


X=[IJ1 IJ2 IJ3 IJ4 IJ5 IJ6 IJ7 IJ8 IJ9];
explode = [1 1 1 1 1 1 1 1 1];
pie3 (X, explode);
colormap('default');
X(1); % Reaction time;
X(2); % pH;
X(3); % Herbicide concentration;
X(4); % Contaminant;
X(5); % US Ultrasound;
X(6); % UV Light Intensity;
X(7); % Dioxyde of Titanium concentration;
X(8); % Presulfate of potassium;
X(9); % Solar radiation
disp(X);
% X(1) = 'Reaction time';
% X(9) = 'Solar radiation';
