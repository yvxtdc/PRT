function [K,strain]=lames(E,tl,L,b,theta)
K=(8*E*(b*tl^(3)))/(L);
strain=(E*tl)/(L)*theta;
sprintf('raideur dans les lames: %.2f : N/mm', K)
sprintf('Contrainte max lames: %.2f : MPa', strain)
end 