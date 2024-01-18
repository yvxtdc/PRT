function [P, Rc, Ro, Rb] = contraintes(lambdac, th1, th2, L, Ch)
% La fonction contrainte calcule les forces en jeu dans les liaisons en
% fonction de la position du mécanisme et de la charge Ch (en N)

% Recuperation des longueurs (en m)
L2 = L(2);
L3 = L(3);
L4 = L(4);
L5 = L(5);

% Raideur de la liaison (en N.m/rad)
Ck = 0;

% PFS applique au bras (toutes les forces en N et couples en N.m)
F = -(Ck+(cos(th2)*L4-sin(th2)*L5)*Ch)/(cos(th1)*cos(th2)*L2+cos(th2)*sin(th1)*L3+sin(th2)*cos(th1)*L3-sin(th2)*sin(th1)*L2); % Force dans la bielle
RxC = F*sin(th1)-Ch;  % Force selon x dans la laison pivot
RzC = -F*cos(th1);     % Force selon z dans la liaison pivot

% PFS applique au piston
RxO = -F*sin(th1);
MrO = -F*sin(th1)*lambdac;
P = -F*cos(th1);

% Construction des torseurs d effort
Rb = [-F*sin(th1) 0 ; 0 0 ; F*cos(th1) 0];
Rc = [RxC 0 ; 0 0 ; RzC 0];
Ro = [RxO 0 ; 0 MrO ; 0 0];



