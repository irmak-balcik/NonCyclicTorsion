A<x,y>:=AffinePlane(Rationals());
C:=Curve(A,y^2*(2*x+1)+x^4+2*x^3);
D<x,y,z>:=ProjectiveClosure(C);
SingularPoints(D);
p:=D![0,0,1];
E,mP:=EllipticCurve(D,p);
E;
mP,nP:=IsInvertible(mP);
nP;
K:=QuadraticField(-19);
EK:=BaseExtend(E,K);
AbelianGroup(EK);
Rank(EK);
p1:=Generators(EK)[1];
p2:=Generators(EK)[2];
p3:=Generators(EK)[1]+Generators(EK)[2];
nP(p1);
nP(p2);
nP(p3);
