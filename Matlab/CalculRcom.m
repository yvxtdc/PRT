close all;
clear all;
clc;
clf;


L = [25e-3 56e-3 20e-3 65e-3 9.8e-3 50e-3 60e-3];

Ch = 15;
th3_angle = 0:-0.25:-8.75;
%th3_angle = -20:1:20;
th3 = th3_angle*pi/180;

th4_angle = 0:5:90;
th4 = th4_angle*pi/180;

d1 = zeros(size(th3));
th2 = d1;
P = d1;
Rcx = d1;
Rcz = d1;

for j=1:size(th4,2)

for i = 1:size(th3,2)
    [d1(i), th2(i)] = MGI(th3(i), L);
    [P(i), Rc, Ro, Rb] = contraintes(d1(i), th2(i), th3(i), L, 15);
    Rcx(i) = Rc(1,1);
    Rcz(i) = Rc(3,1);
    %Rcis(i)=sqrt( (Rcx(i)*cos(th4(j)))^2 + (Rcz(i)*sin(th4(j)))^2 );
    Rcom(i)=abs(-Rcx(i)*sin(th4(j)) + Rcz(i)*cos(th4(j)));
    
end
maximum(j)=max(Rcom);
plot(th3*(180/pi),Rcom);
hold on;

end

figure(1)
hXlabel=xlabel('Angle $\theta_{3}$ [rad]');
hYlabel=ylabel('$R_{com}$ [N]');
set(hXlabel,'Interpreter','latex');
set(hYlabel,'Interpreter','latex');
hTitle=title('Evolution de $R_{com}$ selon $\theta_{3}$');
set(hTitle,'Interpreter','latex');
grid on;


%title("Rcis")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2)
plot(th4*(180/pi),maximum);
hold on;
%legend('show');

hXlabel=xlabel('Angle $\theta_{4}$ [rad]');
hYlabel=ylabel('$R_{comMAX}$ [N]');
set(hXlabel,'Interpreter','latex');
set(hYlabel,'Interpreter','latex');
hTitle=title('Evolution de $R_{comMAX}$ selon $\theta_{4}$');
set(hTitle,'Interpreter','latex');
grid on;

% 
% %title("Rcis")
% 
% %plot(th4*(180/pi),maximum);
% hold on;
% %legend('show');
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% th4_angle2 = 40:1:50;
% th4 = th4_angle2*pi/180;
% 
% d1 = zeros(size(th3));
% th2 = d1;
% P = d1;
% Rcx = d1;
% Rcz = d1;
% 
% figure(3)
% 
% for j=1:size(th4,2)
% 
% for i = 1:size(th3,2)
%     [d1(i), th2(i)] = MGI(th3(i), L);
%     [P(i), Rc, Ro, Rb] = contraintes(d1(i), th2(i), th3(i), L, 15);
%     Rcx(i) = Rc(1,1);
%     Rcz(i) = Rc(3,1);
%     %Rcis(i)=sqrt( (Rcx(i)*cos(th4(j)))^2 + (Rcz(i)*sin(th4(j)))^2 );
%     Rcom(i)=abs(Rcx(i)*sin(th4(j)) + Rcz(i)*cos(th4(j)));
% 
% end
% maximum(j)=max(Rcom);
% plot(th3*(180/pi),Rcom);
% hold on;
% 
% end
% 
% 
% hXlabel=xlabel('Angle $\theta_{3}$ [rad]');
% hYlabel=ylabel('$R_{com}$ [N]');
% set(hXlabel,'Interpreter','latex');
% set(hYlabel,'Interpreter','latex');
% hTitle=title('Evolution de $R_{com}$ selon $\theta_{3}$');
% set(hTitle,'Interpreter','latex');
% grid on;
% 
% 
% %title("Rcis")
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure(4)
% plot(th4*(180/pi),maximum);
% hold on;
% %legend('show');
% 
% hXlabel=xlabel('Angle $\theta_{4}$ [rad]');
% hYlabel=ylabel('$R_{comMAX}$ [N]');
% set(hXlabel,'Interpreter','latex');
% set(hYlabel,'Interpreter','latex');
% hTitle=title('Evolution de $R_{ccomMAX}$ selon $\theta_{4}$');
% set(hTitle,'Interpreter','latex');
% grid on;
% 
% 
% %title("Rcis")
% 
% %plot(th4*(180/pi),maximum);
% hold on;
% %legend('show');
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% th4_angle2 = 45:0.2:47;
% th4 = th4_angle2*pi/180;
% 
% d1 = zeros(size(th3));
% th2 = d1;
% P = d1;
% Rcx = d1;
% Rcz = d1;
% 
% figure(5)
% 
% for j=1:size(th4,2)
% 
% for i = 1:size(th3,2)
%     [d1(i), th2(i)] = MGI(th3(i), L);
%     [P(i), Rc, Ro, Rb] = contraintes(d1(i), th2(i), th3(i), L, 15);
%     Rcx(i) = Rc(1,1);
%     Rcz(i) = Rc(3,1);
%     %Rcis(i)=sqrt( (Rcx(i)*cos(th4(j)))^2 + (Rcz(i)*sin(th4(j)))^2 );
%     Rcom(i)=abs(Rcx(i)*sin(th4(j)) + Rcz(i)*cos(th4(j)));
% 
% end
% maximum(j)=max(Rcom);
% plot(th3*(180/pi),Rcom);
% hold on;
% 
% end
% 
% 
% hXlabel=xlabel('Angle $\theta_{3}$ [rad]');
% hYlabel=ylabel('$R_{com}$ [N]');
% set(hXlabel,'Interpreter','latex');
% set(hYlabel,'Interpreter','latex');
% hTitle=title('Evolution de $R_{com}$ selon $\theta_{3}$');
% set(hTitle,'Interpreter','latex');
% grid on;
% 
% 
% %title("Rcis")
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure(6)
% plot(th4*(180/pi),maximum);
% hold on;
% %legend('show');
% 
% hXlabel=xlabel('Angle $\theta_{4}$ [rad]');
% hYlabel=ylabel('$R_{comMAX}$ [N]');
% set(hXlabel,'Interpreter','latex');
% set(hYlabel,'Interpreter','latex');
% hTitle=title('Evolution de $R_{comMAX}$ selon $\theta_{4}$');
% set(hTitle,'Interpreter','latex');
% grid on;
% 
% 
% %title("Rcis")
% 
% %plot(th4*(180/pi),maximum);
% hold on;
% %legend('show');
% 
% th4_angle2 = 46;
% th4 = th4_angle2*pi/180;
% 
% d1 = zeros(size(th3));
% th2 = d1;
% P = d1;
% Rcx = d1;
% Rcz = d1;
% 
% figure(7)
% 
% for j=1:size(th4,2)
% 
% for i = 1:size(th3,2)
%     [d1(i), th2(i)] = MGI(th3(i), L);
%     [P(i), Rc, Ro, Rb] = contraintes(d1(i), th2(i), th3(i), L, 15);
%     Rcx(i) = Rc(1,1);
%     Rcz(i) = Rc(3,1);
%     %Rcis(i)=sqrt( (Rcx(i)*cos(th4(j)))^2 + (Rcz(i)*sin(th4(j)))^2 );
%     Rcom(i)=abs(Rcx(i)*sin(th4(j)) + Rcz(i)*cos(th4(j)));
% 
% end
% maximum(j)=max(Rcom);
% plot(th3*(180/pi),Rcom);
% hold on;
% 
% end
% 
% 
% hXlabel=xlabel('Angle $\theta_{3}$ [rad]');
% hYlabel=ylabel('$R_{com}$ [N]');
% set(hXlabel,'Interpreter','latex');
% set(hYlabel,'Interpreter','latex');
% hTitle=title('Evolution de $R_{com}$ selon $\theta_{3}$');
% set(hTitle,'Interpreter','latex');
% grid on;
% 
% 
% %title("Rcis")
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 