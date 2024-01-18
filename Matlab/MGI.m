function [lambdac, th1] = MGI(th2, L)
% La fonction MGI effectue le calcul du modèle géométrique inverse du
% systeme

% Recuperations des parametres geometriques (en m)
L1 = L(1);
L2 = L(2);
L3 = L(3);
b1 = L(6);
b2 = L(7);

% Simplification de la notation
c3 = cos(th2);
s3 = sin(th2);

% Calcul du MGI
lambdac = -L3*c3 + L2*s3 + b2 - sqrt(s3^2*L2^2 - 2*L3*c3*L2*s3 + c3^2*L3^2 + 2*s3*b1*L3 + 2*c3*b1*L2 - b1^2 + L1^2 - L2^2 - L3^2);
th1 = asin(-(b1-L3*s3-L2*c3)/L1);