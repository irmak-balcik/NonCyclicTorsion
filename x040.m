
K<w>:=QuadraticField(-1);
X:=SmallModularCurve(40);
XK:=BaseExtend(X,K);
p1:=XK![w,2*w+1,1];
G1,E1:=SubgroupScheme(p1,40);
E1;
g1:=DefiningSubschemePolynomial(G1);
Factorization(g1);
p2:=XK![w,-2*w+1,1];
G2,E2:=SubgroupScheme(p2,40);
E2;
g2:=DefiningSubschemePolynomial(G2);
Factorization(g2);
