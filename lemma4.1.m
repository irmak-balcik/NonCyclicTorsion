
R<t>:=PolynomialRing(Rationals());
K<w>:=NumberField(t^2+19);
P2<x,y,z>:=ProjectiveSpace(Rationals(),2);
C:=Curve(P2,2*x^3*y + 2*x*y^3 + x^3*z + y^3*z + 5*x^2*y*z + 5*x*y^2*z + 2*x^2*z^2 + 2*y^2*z^2 + 2*x^2*y^2 + 2*x*y*z^2);

Points(C: Bound := 10);
CK:=BaseExtend(C,K);
p:=CK![1,-1,1];
SingularPoints(C);

E0,mp:=EllipticCurve(CK,p);
IsInvertible(mp);
E0K:=BaseExtend(E0,K);

E:=EllipticCurve([2,-1,2,-2,0]);
EK:=BaseExtend(E,K);
A,m:=IsIsomorphic(E0K,EK);
A;
m;

RankBounds(EK);
P<x>:=PolynomialRing(K);
l:=x*(x+10993263062353152*w - 37976902494666157)*(x-10437125916000000*w + 40849621725921875);
E1:=EllipticCurve(l);
E1K:=BaseExtend(E1,K);
TorsionSubgroup(E1K);
d:=-3;
Ed:=QuadraticTwist(E1,d);
EdK:=BaseExtend(E1,K);
TorsionSubgroup(EdK);
Composite := function( K1, L1 )
     T<y> := PolynomialRing( K1 );
    f := T!DefiningPolynomial( L1 );
    ff := Factorization(f);
    LKM := NumberField(ff[1][1]);
   return AbsoluteField(LKM);
end function;
L<e>:= NumberField(t^2+3);
KL:= Composite(K,L);
KL;
E1KL:=BaseExtend(E1K,KL);
TorsionSubgroup(E1KL);

