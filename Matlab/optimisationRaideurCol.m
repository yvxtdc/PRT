function [K, r] = optimisationRaideurCol(Re, E, ksec, e, b, th)

r = optimisationCol(Re, E, ksec, e, b, th,25);
K = (e.^(2.5).*(2*E*b))./(sqrt(r).*(9*pi));