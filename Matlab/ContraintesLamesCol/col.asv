%fonction de calcul de la contrainte du col

function [K,strain]=col(E,tc,r,b,theta)
K=(2*E*b*tc^(2.5))/(9*pi()*sqrt(r));
strain=(4/(3*pi()))*E*sqrt(tc/r)*theta;
sprintf('raideur dans le col: %.2f : N/mm', K)
sprintf('Contrainte max col: %.2f : MPa', strain)
end 