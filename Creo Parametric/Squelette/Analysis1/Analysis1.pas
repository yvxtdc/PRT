------------------------------------------------------------
Creo Simulate Structure Version P-80-44:spg
Fichier journal de diagnostic Log
Thu Nov 30, 2023   11:05:30
-----------------------------------------

Commencer la cr�ation d'une base de donn�es pour l'�tude de conception
Thu Nov 30, 2023   11:05:30

Commencer la v�rification d'erreurs en mode int�gr�
Thu Nov 30, 2023   11:05:30

Commencer � g�n�rer les �l�ments
Thu Nov 30, 2023   11:05:30

Commencer la v�rification d'erreurs en mode int�gr�
Thu Nov 30, 2023   11:05:30

D�marrage du comptage du solveur
Thu Nov 30, 2023   11:05:30

Commencer l'analyse : "Analysis1"
Thu Nov 30, 2023   11:05:30

Utilisation du solveur �parse

Commencer la calcul de masse
Thu Nov 30, 2023   11:05:31

D�marrer l'it�ration 1
Thu Nov 30, 2023   11:05:31

D�marrage du traitement des restrictions ponctuelles multiples
Thu Nov 30, 2023   11:05:31

Commencer la minimisation du profil de matrice
Thu Nov 30, 2023   11:05:31

Commencer le calcul des �l�ments, passe 1
Thu Nov 30, 2023   11:05:31

Commencer l'assemblage de la matrice globale, passe 1
Thu Nov 30, 2023   11:05:31

D�marrage du pas de temps 0 of 1:   0.00000e+00
Thu Nov 30, 2023   11:05:31

Commencer la calcul de contrainte et de d�placement
Thu Nov 30, 2023   11:05:31

 using Logarithmic Strain


Commencer le calcul de r�action
Thu Nov 30, 2023   11:05:32

Commencer la passe de v�rification de convergence 1
Thu Nov 30, 2023   11:05:32

D�marrage du pas de temps 1 of 1:   1.00000e+00
Thu Nov 30, 2023   11:05:32

Nombre d'�quations : 37467
Largeur de bande moyenne :   154.494
Largeur de bande maximale :   687
Taille de la matrice globale (mb) : 46.3073
Nombre de termes dans la matrice globale : 5788413     
Minimum de m�moire vive recommand�e pour le solveur direct : 2

Size of element file (mb): 27.4207
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

Iteration     Residual norm
------------- -------------
            1             1 Thu Nov 30, 2023 11:05:33
            2     0.0476521 Thu Nov 30, 2023 11:05:34
            3     0.0755668 Thu Nov 30, 2023 11:05:34
            4     0.0667085 Thu Nov 30, 2023 11:05:34
            5     0.0533901 Thu Nov 30, 2023 11:05:34
            6      0.113855 Thu Nov 30, 2023 11:05:34
            7      0.276897 Thu Nov 30, 2023 11:05:34
            8      0.104678 Thu Nov 30, 2023 11:05:34
            9     0.0410633 Thu Nov 30, 2023 11:05:35
           10      0.015188 Thu Nov 30, 2023 11:05:35
           11     0.0691911 Thu Nov 30, 2023 11:05:35
           12     0.0196181 Thu Nov 30, 2023 11:05:35
           13     0.0510438 Thu Nov 30, 2023 11:05:35
           14     0.0523327 Thu Nov 30, 2023 11:05:35
           15     0.0460418 Thu Nov 30, 2023 11:05:36
           16     0.0411056 Thu Nov 30, 2023 11:05:36
           17     0.0310231 Thu Nov 30, 2023 11:05:36
           18     0.0190952 Thu Nov 30, 2023 11:05:36
           19     0.0179558 Thu Nov 30, 2023 11:05:36
           20     0.0131269 Thu Nov 30, 2023 11:05:36
           21     0.0155728 Thu Nov 30, 2023 11:05:36
           22     0.0156235 Thu Nov 30, 2023 11:05:37
           23     0.0117695 Thu Nov 30, 2023 11:05:37
           24     0.0279737 Thu Nov 30, 2023 11:05:37
           25     0.0121267 Thu Nov 30, 2023 11:05:37
           26     0.0271976 Thu Nov 30, 2023 11:05:38
           27     0.0096943 Thu Nov 30, 2023 11:05:38
           28    0.00224831 Thu Nov 30, 2023 11:05:38
           29    0.00909373 Thu Nov 30, 2023 11:05:38
           30    0.00267024 Thu Nov 30, 2023 11:05:38
           31    0.00306599 Thu Nov 30, 2023 11:05:38
           32    0.00189234 Thu Nov 30, 2023 11:05:39
           33   0.000649393 Thu Nov 30, 2023 11:05:39
           34   0.000738926 Thu Nov 30, 2023 11:05:39
           35   0.000419907 Thu Nov 30, 2023 11:05:39
           36   0.000142235 Thu Nov 30, 2023 11:05:39
           37   4.71001e-05 Thu Nov 30, 2023 11:05:39
           38    2.1007e-05 Thu Nov 30, 2023 11:05:39
           39   5.76237e-06 Thu Nov 30, 2023 11:05:39
           40   7.55147e-07 Thu Nov 30, 2023 11:05:39
           41    8.6062e-08 Thu Nov 30, 2023 11:05:40
           42   1.19939e-08 Thu Nov 30, 2023 11:05:40
           43   6.97687e-10 Thu Nov 30, 2023 11:05:40
           44   3.59594e-11 Thu Nov 30, 2023 11:05:40
           45   1.30444e-11 Thu Nov 30, 2023 11:05:40
           46   4.20877e-13 Thu Nov 30, 2023 11:05:40

Commencer la calcul de contrainte et de d�placement
Thu Nov 30, 2023   11:05:41

Commencer le calcul de r�action
Thu Nov 30, 2023   11:05:41

Commencer la passe de v�rification de convergence 1
Thu Nov 30, 2023   11:05:41

D�marrer l'it�ration 2
Thu Nov 30, 2023   11:05:42

D�marrage du traitement des restrictions ponctuelles multiples
Thu Nov 30, 2023   11:05:42

Commencer la minimisation du profil de matrice
Thu Nov 30, 2023   11:05:42

Commencer le calcul des �l�ments, passe 2
Thu Nov 30, 2023   11:05:42

Commencer l'assemblage de la matrice globale, passe 2
Thu Nov 30, 2023   11:05:42

D�marrage du pas de temps 0 of 1:   0.00000e+00
Thu Nov 30, 2023   11:05:42

Commencer la calcul de contrainte et de d�placement
Thu Nov 30, 2023   11:05:42

Commencer le calcul de r�action
Thu Nov 30, 2023   11:05:43

D�marrage du pas de temps 1 of 1:   1.00000e+00
Thu Nov 30, 2023   11:05:43

Nombre d'�quations : 41457
Largeur de bande moyenne :   173.576
Largeur de bande maximale :   960
Taille de la matrice globale (mb) : 57.5674
Nombre de termes dans la matrice globale : 7195920     
Minimum de m�moire vive recommand�e pour le solveur direct : 4

Size of element file (mb): 33.5808
Taille maximale de la matrice d'�l�ments (kb) : 255.024
Taille minimale de la matrice d'�l�ments (kb) : 17.9289

Iteration     Residual norm
------------- -------------
            1      0.984809 Thu Nov 30, 2023 11:05:44
            2      0.936889 Thu Nov 30, 2023 11:05:45
            3     0.0146923 Thu Nov 30, 2023 11:05:45
            4      0.228169 Thu Nov 30, 2023 11:05:45
            5    0.00255636 Thu Nov 30, 2023 11:05:46
            6     0.0121096 Thu Nov 30, 2023 11:05:46
            7    0.00251072 Thu Nov 30, 2023 11:05:46
            8    0.00152516 Thu Nov 30, 2023 11:05:46
            9   0.000765826 Thu Nov 30, 2023 11:05:46
           10   9.64698e-05 Thu Nov 30, 2023 11:05:46
           11   1.11155e-05 Thu Nov 30, 2023 11:05:46
           12     3.319e-07 Thu Nov 30, 2023 11:05:47
           13   1.61745e-08 Thu Nov 30, 2023 11:05:47
           14   3.79069e-10 Thu Nov 30, 2023 11:05:47
           15   5.12951e-12 Thu Nov 30, 2023 11:05:47
           16   9.91637e-15 Thu Nov 30, 2023 11:05:47

Commencer la calcul de contrainte et de d�placement
Thu Nov 30, 2023   11:05:48

Commencer le calcul de r�action
Thu Nov 30, 2023   11:05:48

Commencer la passe de v�rification de convergence 2
Thu Nov 30, 2023   11:05:48

It�ration termin�e
Thu Nov 30, 2023   11:05:49

Analyse termin�e : Analysis1
Thu Nov 30, 2023   11:05:49
