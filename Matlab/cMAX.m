function max1=cMAX(materiau, type, t, r, b, theta, L, F)
if strcmp(materiau, 'aluminium')
    E = 70000;
elseif strcmp(materiau, 'acier')
    E = 210000;
elseif strcmp(materiau, 'PLA')
    E = 3000;
elseif strcmp(materiau, 'ABS')
    E = 2000;
elseif strcmp(materiau, 'vero')
    E = 2495;
end
Cf = cf(type, E, r ,t, theta, L);
Cc = cc(type, F, b, t);
%max = sqrt(Cf^2+Cc^2);
max1 = abs(Cf+Cc);
%disp(['max Stress: ' num2str(max1) ' MPa']);
end