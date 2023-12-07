function r = optimisationCol(Re, E, ksec, e, b, th,F)

% Calcule le rayon r en fonction des autres paramètres afin de respecter le
% coef de sécurité
r = (e.^3.*(16*E^2*b^2*ksec^2*th^2))./(9*pi^2*(Re^2*b^2*e.^2 - e.*2*F*Re*b*ksec + F^2*ksec^2));