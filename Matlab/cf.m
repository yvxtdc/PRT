function Cf = cf(type, E, r ,t, theta, L)

if strcmp(type, 'col')
Cf = (4*E)/(3*pi)*sqrt(t/r)*theta;
%disp('Liaison choisie: ''col''.');

elseif strcmp(type, 'lames')
Cf = (E*theta)/(L)*theta;
%disp('Liaison choisie: ''lames''.');

else 
    disp('Liaison non valide''.');

end 

end
