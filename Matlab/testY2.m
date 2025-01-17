close all;
clear all;
clc;

L = [25e-3 56e-3 20e-3 65e-3 9.8e-3 50e-3 60e-3];

th3_angle = 0:0.25:4;
th3 = th3_angle*pi/180;

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
%%
materiau = 'vero';
type = 'col';

%Paramètres
r = 5;
b = 5;
F = 25;
L=1;

coefSecu=1.2;

%limite élastique:

if strcmp(materiau, 'aluminium')
    Re = 100;
elseif strcmp(materiau, 'acier')
    Re = 250;
elseif strcmp(materiau, 'PLA')
    Re = 60;
elseif strcmp(materiau, 'ABS')
    Re = 40;
elseif strcmp(materiau, 'vero')
    Re = 50;
end

%Vecteur thickness
t =0.8:0.4:4;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
VectRe = zeros(size(t));

figure(1)

for j=1:size(t,2)

for i = 1:size(th3,2)
max1(i)=cMAX(materiau, type, t(j), r, b, th3(i), L, F);  
end
plot(th3, max1, 'DisplayName', ['t = ', num2str(t(j)),'mm']);
hold on;

max2(j)=max(max1);
if max2(j)<Re/coefSecu
ValeurPossible(j)=t(j);
end    

end

%affichage
legend('show');
hXlabel=xlabel('Angle $\theta_3$ [rad]');
hYlabel=ylabel(' $\sigma$ [MPa]');
set(hXlabel,'Interpreter','latex');
set(hYlabel,'Interpreter','latex');
hTitle=title('Evolution de $\sigma$ selon $\theta_{3}$');
set(hTitle,'Interpreter','latex');
grid on;

for i=1:size(th3,2)
VectRe(i) = Re/coefSecu;
end

plot(th3, VectRe,'DisplayName', 'Re', 'Color', 'red');

if strcmp(materiau, 'aluminium')
    disp('Materiau choisi: aluminium.');
elseif strcmp(materiau, 'acier')
    disp('Materiau choisi: acier.');
elseif strcmp(materiau, 'PLA')
    disp('Materiau choisi: PLA.');
elseif strcmp(materiau, 'ABS')
    disp('Materiau choisi: ABS.');
elseif strcmp(materiau, 'vero')
    disp('Materiau choisi: vero.');
end



if strcmp(type, 'col')
    disp('Liaison choisie: col.');
elseif strcmp(type, 'lames')
    disp('Liaison choisie: lames.');
end

if r>=5 
if exist('ValeurPossible', 'var') == 1
disp(['r en [mm]: ' num2str(r)]);
disp(['Voici les valeurs des epaisseurs possibles en [mm]: ' num2str(ValeurPossible)]);
else 
disp('Configuration impossible dans le domaine plastique')
end 
else
disp('Configuration impossible: rayon trop grand')
end 

%h= 2*r+t-2*sqrt{r^2-(r-x)^2}



















