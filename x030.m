K<w>:=QuadraticField(-7);
X:=SmallModularCurve(30);
XK:=BaseExtend(X,K);
p1:=XK![1/2*(w-3),-w-3,1];
G1,E1:=SubgroupScheme(p1,30);
E1;
g1:=DefiningSubschemePolynomial(G1);
Factorization(g1);
p2:=XK![1/4*(w-3),1/32*(5*w+9),1];
G2,E2:=SubgroupScheme(p2,30);
E2;
g2:=DefiningSubschemePolynomial(G2);
Factorization(g2);
p3:=XK![1/4*(-w-3),1/16*(5*w-9),1];
G3,E3:=SubgroupScheme(p3,30);
E3;
g3:=DefiningSubschemePolynomial(G3);
Factorization(g3);
p4:=XK![1/2*(w-3),1/2*(w-15),1];
G4,E4:=SubgroupScheme(p2,30);
E4;
g4:=DefiningSubschemePolynomial(G4);
Factorization(g4);
