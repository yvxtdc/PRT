function [P, Rc, Ro, Rb] = contraintes(d1, th2, th3, L, Ch)
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
F = -(Ck+(cos(th3)*L4-sin(th3)*L5)*Ch)/(cos(th2)*cos(th3)*L2+cos(th3)*sin(th2)*L3+sin(th3)*cos(th2)*L3-sin(th3)*sin(th2)*L2); % Force dans la bielle
RxC = F*sin(th2)-Ch;  % Force selon x dans la laison pivot
RzC = -F*cos(th2);     % Force selon z dans la liaison pivot

% PFS applique au piston
RxO = -F*sin(th2);
MrO = -F*sin(th2)*d1;
P = -F*cos(th2);

% Construction des torseurs d effort
Rb = [-F*sin(th2) 0 ; 0 0 ; F*cos(th2) 0];
Rc = [RxC 0 ; 0 0 ; RzC 0];
Ro = [RxO 0 ; 0 MrO ; 0 0];



