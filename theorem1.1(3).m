
K<w>:=QuadraticField(-2);
A<s,t>:=AffineSpace(Rationals(),2);
C:=Curve(A,s^2-4*t^3*(t^2+1)*(t^2+2*t-1));

//Model for C''
IsHyperelliptic(C);

P<x>:=PolynomialRing(Rationals());
C1:=HyperellipticCurve(-x^5 - x^4 - x^3 - x^2 , x^3 + x^2 + x + 1);
SimplifiedModel(C1);
C2:=HyperellipticCurve(x^6 - 2*x^5 -x^4 - x^2 + 2*x + 1);
//IsIsomorphic(C1,C);

J :=Jacobian(C2);
TwoTorsionSubgroup(J);
TorsionSubgroup(J);

C2K:=BaseExtend(C2,K);
Ct:=QuadraticTwist(C2K, K.1);
Jt :=Jacobian(Ct);

"The rank of J(K) is at most:";
RankBound(J)+ RankBound(Jt);

O := MaximalOrder(K);

//"3 fully splits in K:";
Factorization(3*O);
J3:=BaseChange(J, GF(3));
AbelianGroup(J3);

//"5 remains primes in K:";
Factorization(5*O);
J25:=BaseChange(J, GF(25));
AbelianGroup(J25);


"J(K)_tors has at most this many elements:";
Gcd(#BaseChange(J, GF(3)), #BaseChange(J, GF(25)));

//"Hence, J(K) == J(Q)";

pts := Points(C2: Bound := 10);
pts;

order5 := [];

for i in [1 .. 6] do
    for j in [1 .. 6] do
        if HasOrder(((pts[i] - pts[2])+(pts[j] - pts[2])), 5) eq true then
            order5 := Append(order5, ((pts[i] - pts[2])+(pts[j] - pts[2])));
        end if;
    end for;
end for;

generators := [];

A, m := TwoTorsionSubgroup(J);

for i in [1 .. 2] do
    generators := Append(generators, m(A.i));
end for;

//we will find torsion elements of J(K);
JTorsion := [];

for i in [1 .. 2] do
   for j in [1 .. 2] do
      for p in [1 .. 5] do
         JTorsion := Append(JTorsion, i*generators[1] + j*generators[2] + p*order5[1]);
      end for;
   end for;
end for;       

"We have found this many elements on J(K)_tors:";
#JTorsion;


//checking we have no duplicates
for i in [1 .. #JTorsion] do
    for j in [i+1 .. #JTorsion] do
        assert  not(JTorsion[i] eq JTorsion[j]);
    end for;
end for;

//checking Mumford representations
R:={};
for i in [1 .. #JTorsion] do
   R:= R join SequenceToSet(Roots(JTorsion[i][1]));
end for;

"All possible x-coordinates for points in C2(K) are:";
R;
