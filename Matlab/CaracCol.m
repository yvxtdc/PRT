function [K,sigmaMax]=CaracCol(E,e,r,b,theta,Fcomp)
% La fonction CaracCol permet de calculer la raideur (en N.m/rad) ainsi que la
% contrainte maximale (en MPa) en fonction du matériau (module d'Young en MPa), des dimensions (en m), de
% l'angle (en rad) ainsi que de la Force de compression (en N)

% Raideur
K=(2*E*b*e^(2.5))/(9*pi()*sqrt(r));

% Contraine max en flexion
sigmaFlex=(4/(3*pi()))*E*sqrt(e/r)*theta;

% Contrainte en compression
sigmaComp=Fcomp/(e*b);

% Contrainte maximale
sigmaMax = sigmaFlex+sigmaComp;

% Affichage des résultats
sprintf('raideur dans le col: %.2f : N/mm', K)
sprintf('Contrainte max col: %.2f : MPa', sigmaFlex)
end 