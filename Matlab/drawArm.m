function drawArm(d1, th2, th3, L, B)

L1 = L(1);
L2 = L(2);
L3 = L(3);
L4 = L(4);
L5 = L(5);

b1 = B(1);
b2 = B(2);

line([0 b1],[0 0],'color','r')
line([0 0],[0 -b2],'color','r')

line([b1 b1],[0 -d1],'color','b')

line([b1 b1+L1*sin(th2)],[-d1 -d1-L1*cos(th2)],'color','g')

line([0 L3*sin(th3)],[-b2 -b2+L3*cos(th3)],'color','black')
line([ L3*sin(th3) L3*sin(th3)+L2*cos(th3)],[-b2+L3*cos(th3) -b2+L3*cos(th3)-L2*sin(th3)],'color','black')
line([0 -L4*sin(th3)],[-b2 -b2-L4*cos(th3)],'color','black')
line([-L4*sin(th3) -L4*sin(th3)-L5*cos(th3)],[-b2-L4*cos(th3) -b2-L4*cos(th3)+L5*sin(th3)],'color','black')

axis([-L4 b1+L1 -b2-L4-.01 .01 ]) % Set the axis limits

set(gca,'DataAspectRatio',[1,1,1])

end