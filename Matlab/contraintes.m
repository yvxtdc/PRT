function [P, Rc, Ro, F] = contraintes(d1, th2, th3, L, Ch)

% Recuperation des longueurs
l3 = L(3);
l4 = L(4);
l5 = L(5);

% Raideur de la liaison
Ck = 0;

% PFS Bras
F = -(Ck+(cos(th3)*l4-sin(th3)*l5)*Ch)/(l3*(-sin(th2+th3)-cos(th2+th3))); % Force dans la bielle
RxC = Ch+F*sin(th2);  % Force selon x dans la laison pivot
RzC = -F*cos(th2);     % Force selon z dans la liaison pivot

% PFS Piston
RxO = -F*sin(th2);
MrO = -F*sin(th2)*d1;
P = -F*cos(th2);

% Attributions
Ra = [-F*sin(th2) 0 ; 0 0 ; F*cos(th2) 0];
Rb = -1*Ra;
Rc = [RxC 0 ; 0 0 ; RzC 0];
Ro = [RxO 0 ; 0 MrO ; 0 0];