M = [0.125 0 0
     0 0.034 0
     0 0 0.016];

D = [0.125 0 0
     0 0.068 0
     0 0 0.048];

tau1 = 20;
omega20 = 1.3e-2;
K0 = [-9 -6];
tau2 = 0.33;

Ln = [0.058 0 0 -0.058 0 0 0 0 0
     0 0.063 0 0 -0.063 0 0 0 0
     0 0 0.059 0 0 -0.059 0 0 0
     -0.058 0 0 0.235 0 0 -0.085 -0.092 0
     0 -0.063 0 0 0.296 0 -0.161 0 -0.072
     0 0 -0.059 0 0 0.330 0 -0.170 -0.101
     0 0 0 -0.085 -0.161 0 0.246 0 0
     0 0 0 -0.092 0 -0.170 0 0.262 0
     0 0 0 0 -0.072 -0.101 0 0 0.173];

Lgg = Ln(1:3, 1:3);
Lgl = Ln(1:3, 4:9);
Llg = Ln(4:9, 1:3);
Lll = Ln(4:9, 4:9);

A = [zeros(3, 3) eye(3)
     inv(M)*(-Lgg + Lgl * inv(Lll) * Llg) -inv(M) * D];

B = [zeros(3, 3); inv(M)];
Ba = B(:, 2);
Bp = B(:, 3);
Cp = [0 0 1 0 0 0];
r = 2;

epsilon = 0.01;
L = 0.1;
c0 = 6;
c1 = 11;
c2 = 6;
b0 = 62.5;

T1 = [Cp; Cp*A];
T0 = [1 0 0 0 0 0
      0 1 0 0 0 0
      0 0 0 1 0 0
      0 0 0 0 1 0];

T = [T0; T1];
T_inv = inv(T);
T0_inv = T_inv(:, 1:4);
T1_inv = T_inv(:, 5:6);

F0 = T0*A*T0_inv;
G0 = T0*A*T1_inv;
H0 = Cp*(A^r)*T0_inv;
K = Cp*(A^r)*T1_inv;
G0a = T0*Ba;
b = Cp*(A^(r-1))*Bp;

Ka = (-1)*acker(F0, G0a, [1/tau1 1/tau1 1/tau1 1/tau1]);

kappa1 = 50;
kcr1 = [kappa1*c2; kappa1^2*c1; kappa1^3*c0];
A_obs1 =    [-kappa1*c2   1 0
            -kappa1^2*c1 0 1
            -kappa1^3*c0 0 0];
kappa2 = 100;
kcr2 = [kappa2*c2; kappa2^2*c1; kappa2^3*c0];
A_obs2 =    [-kappa2*c2   1 0
            -kappa2^2*c1 0 1
            -kappa2^3*c0 0 0];
kappa3 = 200;
kcr3 = [kappa3*c2; kappa3^2*c1; kappa3^3*c0];
A_obs3 =    [-kappa3*c2   1 0
            -kappa3^2*c1 0 1
            -kappa3^3*c0 0 0];

B_obs = [0; b0; 0];

x0 = [0; 0; 0; 0; omega20; 0];
xi_ext0 = [0; 0.085; 0.01];