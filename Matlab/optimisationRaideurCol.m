function [K, r] = optimisationRaideurCol(Re, E, ksec, e, b, th)
% Donne la raideur du col optimise afin de respecter le coefficient de
% securite pour les dimensions e et b (en mm) donnees. Le rayon des cols
% est egalement calcule

r = optimisationCol(Re, E, ksec, e, b, th,25);
K = (e.^(2.5).*(2*E*b))./(sqrt(r).*(9*pi));