close all;
clc;

%L = [25e-3 56e-3 20e-3 65e-3 9.8e-3 50e-3 60e-3];

L = [25e-3 52e-3 20e-3 65e-3 17.8e-3 42e-3 60e-3];

Ch = 15;
th3 = linspace(-atan(L(5)/L(4)), 0,100);
fprintf(" --- Evolution des variables articulaires ---\n\nPlage de th3 = [%g° %g°] => dth3 = %g°\n",[round(-atan(L(5)/L(4))*(180/pi),1) 0 round(atan(L(5)/L(4))*(180/pi),1)]);


[d1, th2] = MGI(th3(1), L);
drawArm(d1, th2, th3(1), L, -15, true);
figure()

d1 = zeros(size(th3));
th2 = d1;
P = d1;
Rcx = d1;
Rcz = d1;

for i = 1:size(th3,2)
    [d1(i), th2(i)] = MGI(th3(i), L);
    [P(i), Rc, Ro, Rb] = contraintes(d1(i), th2(i), th3(i), L, 15);
    Rcx(i) = Rc(1,1);
    Rcz(i) = Rc(3,1);
end

fprintf("Plage de d1 = [%g %g]mm => dd1 = %gmm\n",[round(min(d1)*1000,1) round(max(d1)*1000,1) round(max(d1)*1000-min(d1)*1000,1)]);
fprintf("Plage de th2 = [%g° %g°] => dth2 = %g°\n",[round(min(th2)*(180/pi),1) round(max(th2)*(180/pi),1) round(max(th2)*(180/pi)-min(th2)*(180/pi),1)]);
fprintf("Plage de th23 (angle liaison en B) = [%g° %g°] => dth23 = %g°\n",[round(min(-(th3+th2))*(180/pi)+90,1) round(max(-(th3+th2))*(180/pi)+90,1) round(max(-(th3+th2))*(180/pi)-min(-(th3+th2))*(180/pi),1)]);

thCol = -round((max(atan(Rcx./Rcz)*180/pi)+min(atan(Rcx./Rcz)*180/pi))/2,1);
fprintf("\n --- Etudes des forces ---\n\nAngle d'orientation de la liaison : %g° => Il faut prendre %g° ou %g°\n",[thCol floor(thCol) floor(thCol)+1]);
fprintf("Contrainte max cisaillement : %gN (pour %g°) ou %gN (pour %g°)\n",[round(max(abs(Rcx*cos(floor(thCol)*pi/180) + Rcz*sin(floor(thCol)*pi/180))),1) floor(thCol) round(max(abs(Rcx*cos((floor(thCol)+1)*pi/180) + Rcz*sin((floor(thCol)+1)*pi/180))),1) floor(thCol)+1]);
fprintf("Contrainte max compression : %gN (pour %g°) ou %gN (pour %g°)\n",[round(max(abs(-Rcx*sin(floor(thCol)*pi/180) + Rcz*cos(floor(thCol)*pi/180))),1) floor(thCol) round(max(abs(-Rcx*sin((floor(thCol)+1)*pi/180) + Rcz*cos((floor(thCol)+1)*pi/180))),1) floor(thCol)+1]);



e = 0.1:0.1:1;
e = e./1000;
K = zeros(size(e,2),1);
r = zeros(size(e,2),1);
for i = 1:size(e,2)
    [K(i), r(i)] = optimisationRaideurCol(100e6, 70e9, 1.2, e(i), 5e-3, 4*pi/180);
end
plot(e*1000,r*1000)
%r = optimisationCol(40e6, 3e9, 1.2, e(2), 5e-3, 4.3*pi/180,25)




