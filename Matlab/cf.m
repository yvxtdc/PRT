function Cf = cf(type, E, r ,t, theta, L)
if strcmp(type, 'col')
Cf = (4*E)/(3*pi)*sqrt(t/r)*theta;
elseif strcmp(type, 'lames')
Cf = (E/L)*t*theta;
else 
    disp('Liaison non valide''.');
end 
end
