function [K,strain]=lames(E,tl,L,b,C,h)
K=(8*E*(b*tl^(3)))/(12*L);
strain=(E*tl)/(L)*(C/K);
sprintf('raideur dans les lames: %.2f : N/mm', K)
sprintf('Contrainte max lames: %.2f : MPa', strain)
end 