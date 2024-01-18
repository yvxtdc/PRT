close all;
clc;

% Dimensions intiales du bras 1 (en m)
%L = [25e-3 56e-3 20e-3 65e-3 9.8e-3 50e-3 60e-3];

% Dimensions finales du bras 1 (en m)
L = [25e-3 52e-3 20e-3 65e-3 17.8e-3 42e-3 60e-3];

% Charge en bout de bras (en N)
Ch = 15;

% Course necessaire du systeme
th2 = linspace(-atan(L(5)/L(4)), 0,100);
fprintf(" --- Evolution des variables articulaires ---\n\nPlage de th2 = [%g° %g°] => dth2 = %g°\n",[round(-atan(L(5)/L(4))*(180/pi),1) 0 round(atan(L(5)/L(4))*(180/pi),1)]);

% Initialisation
[lambdac, th1] = MGI(th2(1), L);
drawArm(lambdac, th1, th2(1), L, -15, true);
figure()
lambdac = zeros(size(th2));
th1 = lambdac;
P = lambdac;
Rcx = lambdac;
Rcz = lambdac;

% Calcul des courses des parametres intermediaire
for i = 1:size(th2,2)
    [lambdac(i), th1(i)] = MGI(th2(i), L);
    [P(i), Rc, Ro, Rb] = contraintes(lambdac(i), th1(i), th2(i), L, 15);
    Rcx(i) = Rc(1,1);
    Rcz(i) = Rc(3,1);
end

% Affichage des resultats
fprintf("Plage de lambdac = [%g %g]mm => dlambdac = %gmm\n",[round(min(lambdac)*1000,1) round(max(lambdac)*1000,1) round(max(lambdac)*1000-min(lambdac)*1000,1)]);
fprintf("Plage de th1 = [%g° %g°] => dth1 = %g°\n",[round(min(th1)*(180/pi),1) round(max(th1)*(180/pi),1) round(max(th1)*(180/pi)-min(th1)*(180/pi),1)]);
fprintf("Plage de th13 (angle liaison en B) = [%g° %g°] => dth13 = %g°\n",[round(min(-(th2+th1))*(180/pi)+90,1) round(max(-(th2+th1))*(180/pi)+90,1) round(max(-(th2+th1))*(180/pi)-min(-(th2+th1))*(180/pi),1)]);

thCol = -round((max(atan(Rcx./Rcz)*180/pi)+min(atan(Rcx./Rcz)*180/pi))/2,1);
fprintf("\n --- Etudes des forces ---\n\nAngle d'orientation de la liaison : %g° => Il faut prendre %g° ou %g°\n",[thCol floor(thCol) floor(thCol)+1]);
fprintf("Contrainte max cisaillement : %gN (pour %g°) ou %gN (pour %g°)\n",[round(max(abs(Rcx*cos(floor(thCol)*pi/180) + Rcz*sin(floor(thCol)*pi/180))),1) floor(thCol) round(max(abs(Rcx*cos((floor(thCol)+1)*pi/180) + Rcz*sin((floor(thCol)+1)*pi/180))),1) floor(thCol)+1]);
fprintf("Contrainte max compression : %gN (pour %g°) ou %gN (pour %g°)\n",[round(max(abs(-Rcx*sin(floor(thCol)*pi/180) + Rcz*cos(floor(thCol)*pi/180))),1) floor(thCol) round(max(abs(-Rcx*sin((floor(thCol)+1)*pi/180) + Rcz*cos((floor(thCol)+1)*pi/180))),1) floor(thCol)+1]);

% Optimisation du col pour satisfaire le coefficiet de securite
e = 0.1:0.1:1;
e = e./1000;
K = zeros(size(e,2),1);
r = zeros(size(e,2),1);
for i = 1:size(e,2)
    [K(i), r(i)] = optimisationRaideurCol(100e6, 70e9, 1.2, e(i), 5e-3, 4*pi/180);
end
plot(e*1000,r*1000)
%r = optimisationCol(40e6, 3e9, 1.2, e(2), 5e-3, 4.3*pi/180,25)




