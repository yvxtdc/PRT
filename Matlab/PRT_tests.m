clf;

L = [25e-3 56e-3 20e-3 65e-3 9.8e-3 50e-3 60e-3];

th3 = 10*pi/180;

[d1, th2] = MGI(th3, L);

Ch = 15;

[P, Rc, Ro, F] = contraintes(d1, th2, th3, L, Ch);

[th21, th22, th31, th32] = MGD(d1, L);

drawArm(d1, th21, th31, L, Ch);