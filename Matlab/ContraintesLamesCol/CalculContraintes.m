clear all;
%freeCAD pour tests simples

P = 1 ; %N  - effort
L = 50 ;  %mm  - longueur 
E = 21000; %MPa - Module d'Young de Creo
b = 10; %mm  - largeur 
h = 1;%mm  - hauteur
r = 10;%mm  - rayon
tc = 1;%mm  - epaisseur col
tl = 1;%mm  - epaisseur lames
theta = 30*pi()/180;


[K, strain]=col(E,tc,r,b,theta);

[K2,strain2]=lames(E,tl,L,b,theta);



%distinguer e lames et e col et changer 'e' pour 't'
%prendre en compte dtheta et pas theta

%tenter d'arriver à une contrainte max identique pour toute les liaison:
%meilleur modèle mécanique 

%découpler les deux liaisons
