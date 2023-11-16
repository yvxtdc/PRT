close all;
clc;
clf;

L = [25e-3 56e-3 20e-3 65e-3 9.8e-3 50e-3 60e-3];

Ch = 15;
th3_angle = 0:-0.25:-8.75;
%th3_angle = -20:1:20;
th3 = th3_angle*pi/180;

d1 = zeros(size(th3));
th2 = d1;
P = d1;
Rcx = d1;
Rcz = d1;

for i = 1:size(th3,2)
    [d1(i), th2(i)] = MGI(th3(i), L);
    [P(i), Rc, Ro, F] = contraintes(d1(i), th2(i), th3(i), L, Ch);
    Rcx(i) = Rc(1,1);
    Rcz(i) = Rc(3,1);
end


%drawArm(d1, th21, th31, L, Ch);

plot(th3*(180/pi),d1);
hold on;
plot(th3*(180/pi),th2);

figure()
plot(th3*(180/pi),Rcx);
hold on;
plot(th3*(180/pi),Rcz);

figure()
plot(th3*(180/pi),th2*(180/pi));

figure()
plot(th3*(180/pi),-(th3+th2)*(180/pi)+90);



figure()
th3 = 10*pi/180;
[d1, th2] = MGI(th3, L);
drawArm(d1, th2, th3, L, -15, false);