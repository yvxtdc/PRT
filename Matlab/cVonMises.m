function VonMises=cVonMises(materiau, type, t, r, b, theta, L, F)
if strcmp(materiau, 'aluminium')
    E = 70000;
elseif strcmp(materiau, 'acier')
    E = 210000;
elseif strcmp(materiau, 'PLA')
    E = 3000;
elseif strcmp(materiau, 'ABS')
    E = 2000;
end
Cf = cf(type, E, r ,t, theta, L);
Cc = cc(type, F, b, t);
%VonMises = sqrt(Cf^2+Cc^2);
VonMises = abs(Cf+Cc);
%disp(['Von Mises Stress: ' num2str(VonMises) ' MPa']);
end