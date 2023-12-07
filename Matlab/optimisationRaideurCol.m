function [K, r] = optimisationRaideurCol(Re, E, ksec, e, b, th)

r = optimisationCol(Re, E, ksec, e, b, th);
K = (2*E*b*e^(2.5))/(9*pi*sqrt(r));