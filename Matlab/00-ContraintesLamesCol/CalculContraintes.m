clear all;
%freeCAD pour tests simples

C = 50 ; %N.mm  - effort
L = 69.3 ;  %mm  - longueur 
E = 1786.06; %MPa - Module d'Young de Creo
b = 50; %mm  - largeur 
h = 50;%mm  - hauteur
r = 10;%mm  - rayon
tc = 1;%mm  - epaisseur col
tl = 1;%mm  - epaisseur lames
theta = 2.8*pi()/180;


%[K, strain]=col(E,tc,r,b,theta);

[K2,strain2]=lames(E,tl,L,b,C,h);

%25.078-11.158

%distinguer e lames et e col et changer 'e' pour 't'
%prendre en compte dtheta et pas theta

%tenter d'arriver à une contrainte max identique pour toute les liaison:
%meilleur modèle mécanique 

%découpler les deux liaisons
