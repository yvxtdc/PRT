------------------------------------------------------------
Creo Simulate Structure Version P-80-44:spg
Fichier journal de diagnostic Log
Fri Jan 19, 2024   11:20:28
-----------------------------------------

Commencer la cr�ation d'une base de donn�es pour l'�tude de conception
Fri Jan 19, 2024   11:20:28

Commencer la v�rification d'erreurs en mode int�gr�
Fri Jan 19, 2024   11:20:28

Commencer � g�n�rer les �l�ments
Fri Jan 19, 2024   11:20:28

Commencer la v�rification d'erreurs en mode int�gr�
Fri Jan 19, 2024   11:20:29

D�marrage du comptage du solveur
Fri Jan 19, 2024   11:20:29

Commencer l'analyse : "Analysis1"
Fri Jan 19, 2024   11:20:29

Utilisation du solveur �parse

Commencer la calcul de masse
Fri Jan 19, 2024   11:20:29

D�marrer l'it�ration 1
Fri Jan 19, 2024   11:20:29

D�marrage du traitement des restrictions ponctuelles multiples
Fri Jan 19, 2024   11:20:29

Commencer la minimisation du profil de matrice
Fri Jan 19, 2024   11:20:29

Commencer le calcul des �l�ments, passe 1
Fri Jan 19, 2024   11:20:29

Commencer l'assemblage de la matrice globale, passe 1
Fri Jan 19, 2024   11:20:29

Commencer la r�solution des �quations, passe 1
Fri Jan 19, 2024   11:20:29

Nombre d'�quations : 7875
Largeur de bande moyenne :   118.287
Largeur de bande maximale :   384
Taille de la matrice globale (mb) : 7.45207
Nombre de termes dans la matrice globale : 931509      
Minimum de m�moire vive recommand�e pour le solveur direct : 2

Size of element file (mb): 5.68032
Taille maximale de la matrice d'�l�ments (kb) : 14.64
Taille minimale de la matrice d'�l�ments (kb) : 14.64

REMARQUES�:
L'allocation de RAM au solveur peut �tre effectu�e �
l'aide d'un seul  param�tre, appel� solram. Si le solveur Creo Simulate Structure/Thermal
est la seule application gourmande en m�moire
ex�cut�e sur votre ordinateur, les performances devraient
�tre meilleures si la valeur du param�tre solram
est �gale � la moiti� de la RAM de votre machine. Par exemple,
solram 512 convient tr�s bien � une machine dot�e de 1024 Mo de RAM.

Si vous ex�cutez d'autres applications gourmandes en m�moire
sur votre ordinateur, r�duisez en cons�quence la valeur
de solram. Par ex., allouez-lui une valeur �gale au 1/4 de
la RAM de votre machine si deux grosses applications 
tournent en m�me temps. Mais vous pouvez souvent ex�cuter
deux grosses t�ches plus rapidement l'une apr�s l'autre
plut�t qu'en m�me temps.

solram permet de r�duire la quantit� d'E/S sur le disque.
Si sa valeur est trop �lev�e, les performances seront g�n�ralement
affect�es, m�me sur des machines avec beaucoup de RAM, car il
n'y aura pas suffisamment de RAM machine pour d'autres
donn�es importantes. Par example, Creo Simulate alloue de
nombreuses zones de m�moire de taille importante, non
r�serv�es au solveur, qui causeront une permutation excessive
(swap) � moins que vous ne laissiez disponible suffisamment
de RAM machine. Vous devez aussi laisser suffisamment de RAM
pour que le syst�me d'exploitation dispose de la m�moire
cache n�cessaire. Celle-ci am�liore les performances du
syst�me de fichiers car elle place les donn�es de ces
derniers dans la RAM, l'acc�s �tant ainsi plus rapide.  
Affecter � solram la moiti� de la RAM machine est
g�n�ralement le meilleur compromis entre r�duire la quantit�
d'E/S sur le disque et laisser suffisamment de RAM machine
pour la m�moire cache du disque et pour d'autres donn�es.

Si vous affectez � solram une valeur trop basse, les performances
en  souffriront car Creo Simulate doit transf�rer des donn�es entre
la RAM machine et les fichiers du disque beaucoup plus souvent
qu'avec une valeur plus importante. Par exemple, les performances
peuvent baisser de fa�on  consid�rable si la valeur de solram
est �gale ou inf�rieure � 1/10�me de la RAM machine ou si elle est
encore inf�rieure. De pr�f�rence, la valeur minimale doit
correspondre � 1/4 de la RAM machine.

La quantit� de swap disponible sur votre machine doit �tre sup�rieure
� la quantit� maximale de m�moire n�cessaire � votre t�che. L'espace
disque disponible sur votre machine doit �tre sup�rieur � l'espace
disque maximal n�cessaire � votre t�che. Vous pouvez g�rer l'utilisation
des ressources n�cessaires � votre t�che dans le fichier journal (stt).
Votre t�che peut �chouer si votre machine ne dispose pas de
suffisamment d'espace disque ou d'espace de permutation, ou si la
quantit� maximale de m�moire n�cessaire � votre t�che est sup�rieure
� la quantit� de m�moire d�finie au niveau du syst�me d'exploitation.

Commencer les calculs de charge
Fri Jan 19, 2024   11:20:29

Commencer les calculs de post-traitement, passe 1
Fri Jan 19, 2024   11:20:29

Commencer la passe de v�rification de convergence 1
Fri Jan 19, 2024   11:20:29

Commencer calculs d'�nergie de d�formation
Fri Jan 19, 2024   11:20:29

D�marrer l'it�ration 2
Fri Jan 19, 2024   11:20:29

D�marrage du traitement des restrictions ponctuelles multiples
Fri Jan 19, 2024   11:20:29

Commencer la minimisation du profil de matrice
Fri Jan 19, 2024   11:20:29

Commencer le calcul des �l�ments, passe 2
Fri Jan 19, 2024   11:20:29

Commencer l'assemblage de la matrice globale, passe 2
Fri Jan 19, 2024   11:20:29

Commencer la r�solution des �quations, passe 2
Fri Jan 19, 2024   11:20:29

Nombre d'�quations : 11619
Largeur de bande moyenne :   183.942
Largeur de bande maximale :   729
Taille de la matrice globale (mb) : 17.0978
Nombre de termes dans la matrice globale : 2137221     
Minimum de m�moire vive recommand�e pour le solveur direct : 2

Size of element file (mb): 13.3527
Taille maximale de la matrice d'�l�ments (kb) : 519.84
Taille minimale de la matrice d'�l�ments (kb) : 34.4142

Commencer les calculs de charge
Fri Jan 19, 2024   11:20:30

Commencer les calculs de post-traitement, passe 2
Fri Jan 19, 2024   11:20:30

Commencer la passe de v�rification de convergence 2
Fri Jan 19, 2024   11:20:30

Commencer la calcul de contrainte et de d�placement
Fri Jan 19, 2024   11:20:30

Commencer le calcul de r�action
Fri Jan 19, 2024   11:20:30

Commencer calculs d'�nergie de d�formation
Fri Jan 19, 2024   11:20:30

It�ration termin�e
Fri Jan 19, 2024   11:20:30

Analyse termin�e : Analysis1
Fri Jan 19, 2024   11:20:30
