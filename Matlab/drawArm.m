function drawArm(d1, th2, th3, L, Ch, DispForces)

% Definition parametres
L1 = L(1);
L3 = L(3);
L4 = L(4);
L5 = L(5);
b1 = L(6);
b2 = L(7);

% Definition des axes
axis([-L4 b1+L1 -b2-L4-.01 .01 ])
set(gca,'DataAspectRatio',[1,1,1])

% Position des points
O = [b1 0];
C = [0 -b2];
A = O + [0 -d1];
B = A + [L1*sin(th2) -L1*cos(th2)];
BC = C + [L3*sin(th3) L3*cos(th3)];
CE = C + [-L4*sin(th3) -L4*cos(th3)];
E = CE + [-L5*cos(th3) L5*sin(th3)];

% Lignes entre les points
line([0 O(1)],[0 O(2)],'color','cyan')
line([0 C(1)],[0 C(2)],'color','cyan')
line([O(1) A(1)],[O(2) A(2)],'color','b')
line([A(1) B(1)],[A(2) B(2)],'color','g')
line([C(1) BC(1)],[C(2) BC(2)],'color','black')
line([BC(1) B(1)],[BC(2) B(2)],'color','black')
line([C(1) CE(1)],[C(2) CE(2)],'color','black')
line([CE(1) E(1)],[CE(2) E(2)],'color','black')


if(DispForces == true)
    % Affichage des contraintes internes
    scale = .0005;
    [P, Rc, Ro, Rb] = contraintes(d1, th2, th3, L, Ch);
    ln = line([C(1) C(1)+Rc(1,1)*scale],[C(2) C(2)+Rc(3,1)*scale],'color','r');
    ln.LineWidth = 3;
    ln = line([O(1) O(1)+Ro(1,1)*scale],[O(2) O(2)+Ro(3,1)*scale],'color','r');
    ln.LineWidth = 3;
    ln = line([E(1) E(1)+Ch*scale],[E(2) E(2)],'color','r');
    ln.LineWidth = 3;
    ln = line([B(1) B(1)+Rb(1,1)*scale],[B(2) B(2)+Rb(3,1)*scale],'color','r');
    ln.LineWidth = 3;
end

end