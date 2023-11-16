
syms d1 th2 th3 L1 L2 L3 b1 b2 eq1 eq2
eq1 = d1 - b2 + L3*cos(th3) - L2*sin(th3) + L1*cos(th2)
eq2 = b1 - L3*sin(th3) - L2*cos(th3) + L1*sin(th2)

sol = solve(eq1, eq2, th3, th2)

th31 = sol.th3(1)
th32 = sol.th3(2)
th21 = sol.th2(1)
th22 = sol.th2(2)

b1 = 50
b2 = 65

line([0 b1],[0 0],'color','r')
line([0 0],[0 b2],'color','r')
axis([-100 100 -100 100]) % Set the axis limits

