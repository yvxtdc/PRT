function r = optimisationCol(Re, E, ksec, e, b, th)

% Calcule le rayon r en fonction des autres paramètres afin de respecter le
% coef de sécurité
r = (16*E^2*b^2*e^3*ksec^2*th^2)/(9*Pi^2*(Re^2*b^2*e^2 + 2*F*Re*b*e*ksec + F^2*ksec^2));