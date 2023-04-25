%% 4a, 10.2

f1 = @(x1, x2, x3)3*x1-cos(x2*x3)-.5;
f1x1 = @(x1, x2, x3)3;
f1x2 = @(x1, x2, x3)x3 * sin(x2*x3);
f1x3 = @(x1, x2, x3)x2 * sin(x2*x3);

f2 = @(x1, x2, x3)4*(x1^2)-625*(x2^2)+2*x2 - 1;
f2x1 = @(x1, x2, x3)8*x1;
f2x2 = @(x1, x2, x3)-1250*x2 + 2;
f2x3 = @(x1, x2, x3)0;


f3 = @(x1, x2, x3)exp(-1*x1*x2)+20*x3+(10*pi-3)/3;
f3x1 = @(x1, x2, x3)-exp(-x1*x2) * x2;
f3x2 = @(x1, x2, x3)-exp(-x1*x2) * x1;
f3x3 = @(x1, x2, x3)20;


TOL = 1;
x10 = 1;
x20 = 1;
x30 = 1;
x = [x10; x20; x30];
while(TOL > 10^-6)
    F(1, 1) = f1(x10, x20, x30);
    F(2, 1) = f2(x10, x20, x30);
    F(3, 1) = f3(x10, x20, x30);

    J(1, 1) = f1x1(x10, x20, x30);
    J(1, 2) = f1x2(x10, x20, x30);
    J(1, 3) = f1x3(x10, x20, x30);

    J(2, 1) = f2x1(x10, x20, x30);
    J(2, 2) = f2x2(x10, x20, x30);
    J(2, 3) = f2x3(x10, x20, x30);

    J(3, 1) = f3x1(x10, x20, x30);
    J(3, 2) = f3x2(x10, x20, x30);
    J(3, 3) = f3x3(x10, x20, x30);
    Y = (J^-1)*-F;
    x = x + Y
    x10 = x(1, 1);
    x20 = x(2, 1);
    x30 = x(3, 1);
    TOL = norm(Y);
end
%% 7c
c1 = @(x, y, z)(z^3) + y * x^2 - x*z + 6;
c1x = @(x, y, z) 2*y*x - z;
c1y = @(x, y, z)x^2;
c1z = @(x, y, z)3*z^2 - x; 

c2 = @(x, y, z)exp(x) + exp(y) - z;
c2x = @(x, y, z)exp(x);
c2y = @(x, y, z) exp(y);
c2z = @(x, y, z)-1;

c3 = @(x, y, z)(y^2) - 2*x*z -4;
c3x = @(x, y, z)-2*z;
c3y = @(x, y, z)2*y;
c3z = @(x, y, z)-2*x;

xint = [-1 2 1]';

tol = 1;
while( tol > 10^-6)
    x1 = xint(1, 1);
    x2 = xint(2, 1);
    x3 = xint(3, 1);
    F(1, 1) = c1(x1, x2, x3);
    F(2, 1) = c2(x1, x2, x3);
    F(3, 1) = c3(x1, x2, x3);

    J(1, 1) = c1x(x1, x2, x3);
    J(1, 2) = c1y(x1, x2, x3);
    J(1, 3) = c1z(x1, x2, x3);

    J(2, 1) = c2x(x1, x2, x3);
    J(2, 2) = c2y(x1, x2, x3);
    J(2, 3) = c2z(x1, x2, x3);
    
    J(3, 1) = c3x(x1, x2, x3);
    J(3, 2) = c3y(x1, x2, x3);
    J(3, 3) = c3z(x1, x2, x3);
    
    y = (J^-1)*-F;
    xint = y + xint
     tol = norm(y);
end



%% 9


f1 = @(x1, x2, x3)3*x1-cos(x2*x3)-.5;
f1x1 = @(x1, x2, x3)3;
f1x2 = @(x1, x2, x3)x3 * sin(x2*x3);
f1x3 = @(x1, x2, x3)x2 * sin(x2*x3);

f2 = @(x1, x2, x3)4*(x1^2)-625*(x2^2)+2*x2 - 1;
f2x1 = @(x1, x2, x3)8*x1;
f2x2 = @(x1, x2, x3)-1250*x2 + 2;
f2x3 = @(x1, x2, x3)0;


f3 = @(x1, x2, x3)exp(-1*x1*x2)+20*x3+(10*pi-3)/3;
f3x1 = @(x1, x2, x3)-exp(-x1*x2) * x2;
f3x2 = @(x1, x2, x3)-exp(-x1*x2) * x1;
f3x3 = @(x1, x2, x3)20;


TOL = 1;
x10 = 1;
x20 = 1;
x30 = -1;
x = [x10; x20; x30];
while(TOL > 10^-6)
    F(1, 1) = f1(x10, x20, x30);
    F(2, 1) = f2(x10, x20, x30);
    F(3, 1) = f3(x10, x20, x30);

    J(1, 1) = f1x1(x10, x20, x30);
    J(1, 2) = f1x2(x10, x20, x30);
    J(1, 3) = f1x3(x10, x20, x30);

    J(2, 1) = f2x1(x10, x20, x30);
    J(2, 2) = f2x2(x10, x20, x30);
    J(2, 3) = f2x3(x10, x20, x30);

    J(3, 1) = f3x1(x10, x20, x30);
    J(3, 2) = f3x2(x10, x20, x30);
    J(3, 3) = f3x3(x10, x20, x30);
    Y = (J^-1)*-F;
    x = x + Y;
    x10 = x(1, 1);
    x20 = x(2, 1);
    x30 = x(3, 1);
    quiver3(x, y, z, x);
    TOL = norm(Y);
end

    %% 10.3 4a
g1 = @(x1, x2, x3)3*x1-cos(x2*x3)-.5;
g1x1 = @(x1, x2, x3)3;
g1x2 = @(x1, x2, x3)x3 * sin(x2*x3);
g1x3 = @(x1, x2, x3)x2 * sin(x2*x3);

g2 = @(x1, x2, x3)4*(x1^2)-625*(x2^2)+2*x2 - 1;
g2x1 = @(x1, x2, x3)8*x1;
g2x2 = @(x1, x2, x3)-1250*x2 + 2;
g2x3 = @(x1, x2, x3)0;


g3 = @(x1, x2, x3)exp(-1*x1*x2)+20*x3+(10*pi-3)/3;
g3x1 = @(x1, x2, x3)-exp(-x1*x2) * x2;
g3x2 = @(x1, x2, x3)-exp(-x1*x2) * x1;
g3x3 = @(x1, x2, x3)20;

xint = [1 1 1]';
x10 = xint(1, 1);
x20 = xint(2, 1);
x30 = xint(3, 1);
%find f to find v
F(1, 1) = f1(x10, x20, x30);
F(2, 1) = f2(x10, x20, x30);
F(3, 1) = f3(x10, x20, x30);
v = F;    
%find jacobian once to find matrix A's starting point
J(1, 1) = f1x1(x10, x20, x30);
J(1, 2) = f1x2(x10, x20, x30);
J(1, 3) = f1x3(x10, x20, x30);

J(2, 1) = f2x1(x10, x20, x30);
J(2, 2) = f2x2(x10, x20, x30);
J(2, 3) = f2x3(x10, x20, x30);

J(3, 1) = f3x1(x10, x20, x30);
J(3, 2) = f3x2(x10, x20, x30);
J(3, 3) = f3x3(x10, x20, x30);
A = J^-1; 
s = -A*v;
xint = s + xint;
k = 2;
numIt = 4; %when to stop iterations
while(k < numIt)
    x10 = xint(1, 1);
    x20 = xint(2, 1);
    x30 = xint(3, 1);
    %step 5
    w = v;
    F(1, 1) = f1(x10, x20, x30);
    F(2, 1) = f2(x10, x20, x30);
    F(3, 1) = f3(x10, x20, x30);
    v = F;  
    y = v - w;
    %step 6
    z = -A*y;
    %step 7
    p = -s' * z;
    %step 8
    u = (s'*A)';
    %step 9 
    A = A +(1/p)*(s+z)*u';
    %step 10
    s = -A*v;
    %step 11
    xint = xint + s

    k = k+1;
end

   %% 10.3 4c

d1 = @(x, y, z)(z^3) + y * x^2 - x*z + 6;
d1x = @(x, y, z) 2*y*x - z;
d1y = @(x, y, z)x^2;
d1z = @(x, y, z)3*z^2 - x; 

d2 = @(x, y, z)exp(x) + exp(y) - z;
d2x = @(x, y, z)exp(x);
d2y = @(x, y, z) exp(y);
d2z = @(x, y, z)-1;

d3 = @(x, y, z)(y^2) - 2*x*z -4;
d3x = @(x, y, z)-2*z;
d3y = @(x, y, z)2*y;
d3z = @(x, y, z)-2*x;

xstart = [-1 -2 1]'; 
xa = xstart(1, 1);
xb = xstart(2, 1);
xc = xstart(3, 1);

f(1, 1) = d1(xa, xb, xc);
f(2, 1) = d2(xa, xb, xc);
f(3, 1) = d3(xa, xb, xc);
v = f; 

j(1, 1) = d1x(xa, xb, xc);
j(1, 2) = d1y(xa, xb, xc);
j(1, 3) = d1z(xa, xb, xc);

j(2, 1) = d2x(xa, xb, xc);
j(2, 2) = d2y(xa, xb, xc);
j(2, 3) = d2z(xa, xb, xc);

j(3, 1) = d3x(xa, xb, xc);
j(3, 2) = d3y(xa, xb, xc);
j(3, 3) = d3z(xa, xb, xc);
a = j^-1; 
S = -a*v;
xstart = S + xstart;
k = 2;
numIt = 4; 
while(k < numIt)
    xa = xstart(1, 1);
    xb = xstart(2, 1);
    xc = xstart(3, 1);
    %step 5
    w = v;
    f(1, 1) = d1(xa, xb, xc);
    f(2, 1) = d2(xa, xb, xc);
    f(3, 1) = d3(xa, xb, xc);
    v = f;  
    y = v - w;
    %step 6
    z = -a*y;
    %step 7
    p = -S' * z;
    %step 8
    u = (S'*a)';
    %step 9 
    a = a +(1/p)*(S+z)*u';
    %step 10
    S = -a*v;
    %step 11
    xstart = xstart + S

    k = k+1;
end
