// Theorem 1.1(2) 

K<w>:=QuadraticField(-19);
Qt<t>:=FunctionField(K);
Qtx<x>:=PolynomialRing(Qt);
E2x10:=EllipticCurve([t^3+t^2-5*t-1,-t*(t-1)*(t+1)^3,-t*(t-1)*(t+1)^3*(t^2-4*t-1),0,0]);
P3:=DivisionPolynomial(E2x10,3);
P2:=DivisionPolynomial(E2x10,2);

q20:=x*P2-P3;
q20;
S<a>:=quo<Qtx | q20>;
ES:=BaseChange(E2x10,S);
Q:=Points(ES,a)[1];
P20:=ES!Q;
(2*P20) eq (ES![0,0]);

// You can see below an explicit example

K<w>:=QuadraticField(-19);
Qt<t>:=FunctionField(K);
Qtx<x>:=PolynomialRing(Qt);
t:=1/76729*(7308*w + 103);
s:=1/21253933*(2864736*w - 8783459);
Ets:=EllipticCurve([t^3+t^2-5*t-1,-t*(t-1)*(t+1)^3,-t*(t-1)*(t+1)^3*(t^2-4*t-1),0,0]);
TorsionSubgroup(Ets);
P:=Ets![0,0];
Q:=Ets![(-2*t+s-1)*(s+1)*t,(s+1)^2*((s+1)*t^2-2*t-2*s^2)];
Order(P);
Order(Q);
