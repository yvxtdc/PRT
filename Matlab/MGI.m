function [d1, th2] = MGI(th3, L)

l1 = L(1);
l2 = L(2);
l3 = L(3);
b1 = L(6);
b2 = L(7);


c3 = cos(th3);
s3 = sin(th3);

d1 = -l3*c3 + l2*s3 + b2 - sqrt(s3^2*l2^2 - 2*l3*c3*l2*s3 + c3^2*l3^2 + 2*s3*b1*l3 + 2*c3*b1*l2 - b1^2 + l1^2 - l2^2 - l3^2);

th2 = asin(-(b1-l3*s3-l2*c3)/l1);

