function Cc = cc(type, F, b, t)
if strcmp(type, 'col')
Cc = (F)/(b*t);
%disp('Liaison choisie: ''col''.');
elseif strcmp(type, 'lames')
Cc = (F)/(b*t*sqrt(2));
else 
    disp('Liaison non valide''.');
end
end
