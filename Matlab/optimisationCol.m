function r = optimisationCol(Re, E, ksec, e, b, th,F)
% Calcule le rayon r de la liaison a cols circulaire en fonction des autres paramètres afin de respecter le
% coefficient de sécurité (toutes les dimensions des cols en m)

r = (e.^3.*(16*E^2*b^2*ksec^2*th^2))./(9*pi^2*(Re^2*b^2*e.^2 - e.*2*F*Re*b*ksec + F^2*ksec^2));