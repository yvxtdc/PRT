------------------------------------------------------------
Creo Simulate Structure Version P-80-44:spg
Fichier journal de diagnostic Log
Thu Nov 30, 2023   11:05:30
-----------------------------------------

Commencer la création d'une base de données pour l'étude de conception
Thu Nov 30, 2023   11:05:30

Commencer la vérification d'erreurs en mode intégré
Thu Nov 30, 2023   11:05:30

Commencer à générer les éléments
Thu Nov 30, 2023   11:05:30

Commencer la vérification d'erreurs en mode intégré
Thu Nov 30, 2023   11:05:30

Démarrage du comptage du solveur
Thu Nov 30, 2023   11:05:30

Commencer l'analyse : "Analysis1"
Thu Nov 30, 2023   11:05:30

Utilisation du solveur éparse

Commencer la calcul de masse
Thu Nov 30, 2023   11:05:31

Démarrer l'itération 1
Thu Nov 30, 2023   11:05:31

Démarrage du traitement des restrictions ponctuelles multiples
Thu Nov 30, 2023   11:05:31

Commencer la minimisation du profil de matrice
Thu Nov 30, 2023   11:05:31

Commencer le calcul des éléments, passe 1
Thu Nov 30, 2023   11:05:31

Commencer l'assemblage de la matrice globale, passe 1
Thu Nov 30, 2023   11:05:31

Démarrage du pas de temps 0 of 1:   0.00000e+00
Thu Nov 30, 2023   11:05:31

Commencer la calcul de contrainte et de déplacement
Thu Nov 30, 2023   11:05:31

 using Logarithmic Strain


Commencer le calcul de réaction
Thu Nov 30, 2023   11:05:32

Commencer la passe de vérification de convergence 1
Thu Nov 30, 2023   11:05:32

Démarrage du pas de temps 1 of 1:   1.00000e+00
Thu Nov 30, 2023   11:05:32

Nombre d'équations : 37467
Largeur de bande moyenne :   154.494
Largeur de bande maximale :   687
Taille de la matrice globale (mb) : 46.3073
Nombre de termes dans la matrice globale : 5788413     
Minimum de mémoire vive recommandée pour le solveur direct : 2

Size of element file (mb): 27.4207
Taille maximale de la matrice d'éléments (kb) : 14.64
Taille minimale de la matrice d'éléments (kb) : 14.64

REMARQUES :
L'allocation de RAM au solveur peut être effectuée à
l'aide d'un seul  paramètre, appelé solram. Si le solveur Creo Simulate Structure/Thermal
est la seule application gourmande en mémoire
exécutée sur votre ordinateur, les performances devraient
être meilleures si la valeur du paramètre solram
est égale à la moitié de la RAM de votre machine. Par exemple,
solram 512 convient très bien à une machine dotée de 1024 Mo de RAM.

Si vous exécutez d'autres applications gourmandes en mémoire
sur votre ordinateur, réduisez en conséquence la valeur
de solram. Par ex., allouez-lui une valeur égale au 1/4 de
la RAM de votre machine si deux grosses applications 
tournent en même temps. Mais vous pouvez souvent exécuter
deux grosses tâches plus rapidement l'une après l'autre
plutôt qu'en même temps.

solram permet de réduire la quantité d'E/S sur le disque.
Si sa valeur est trop élevée, les performances seront généralement
affectées, même sur des machines avec beaucoup de RAM, car il
n'y aura pas suffisamment de RAM machine pour d'autres
données importantes. Par example, Creo Simulate alloue de
nombreuses zones de mémoire de taille importante, non
réservées au solveur, qui causeront une permutation excessive
(swap) à moins que vous ne laissiez disponible suffisamment
de RAM machine. Vous devez aussi laisser suffisamment de RAM
pour que le système d'exploitation dispose de la mémoire
cache nécessaire. Celle-ci améliore les performances du
système de fichiers car elle place les données de ces
derniers dans la RAM, l'accès étant ainsi plus rapide.  
Affecter à solram la moitié de la RAM machine est
généralement le meilleur compromis entre réduire la quantité
d'E/S sur le disque et laisser suffisamment de RAM machine
pour la mémoire cache du disque et pour d'autres données.

Si vous affectez à solram une valeur trop basse, les performances
en  souffriront car Creo Simulate doit transférer des données entre
la RAM machine et les fichiers du disque beaucoup plus souvent
qu'avec une valeur plus importante. Par exemple, les performances
peuvent baisser de façon  considérable si la valeur de solram
est égale ou inférieure à 1/10ème de la RAM machine ou si elle est
encore inférieure. De préférence, la valeur minimale doit
correspondre à 1/4 de la RAM machine.

La quantité de swap disponible sur votre machine doit être supérieure
à la quantité maximale de mémoire nécessaire à votre tâche. L'espace
disque disponible sur votre machine doit être supérieur à l'espace
disque maximal nécessaire à votre tâche. Vous pouvez gérer l'utilisation
des ressources nécessaires à votre tâche dans le fichier journal (stt).
Votre tâche peut échouer si votre machine ne dispose pas de
suffisamment d'espace disque ou d'espace de permutation, ou si la
quantité maximale de mémoire nécessaire à votre tâche est supérieure
à la quantité de mémoire définie au niveau du système d'exploitation.

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

Commencer la calcul de contrainte et de déplacement
Thu Nov 30, 2023   11:05:41

Commencer le calcul de réaction
Thu Nov 30, 2023   11:05:41

Commencer la passe de vérification de convergence 1
Thu Nov 30, 2023   11:05:41

Démarrer l'itération 2
Thu Nov 30, 2023   11:05:42

Démarrage du traitement des restrictions ponctuelles multiples
Thu Nov 30, 2023   11:05:42

Commencer la minimisation du profil de matrice
Thu Nov 30, 2023   11:05:42

Commencer le calcul des éléments, passe 2
Thu Nov 30, 2023   11:05:42

Commencer l'assemblage de la matrice globale, passe 2
Thu Nov 30, 2023   11:05:42

Démarrage du pas de temps 0 of 1:   0.00000e+00
Thu Nov 30, 2023   11:05:42

Commencer la calcul de contrainte et de déplacement
Thu Nov 30, 2023   11:05:42

Commencer le calcul de réaction
Thu Nov 30, 2023   11:05:43

Démarrage du pas de temps 1 of 1:   1.00000e+00
Thu Nov 30, 2023   11:05:43

Nombre d'équations : 41457
Largeur de bande moyenne :   173.576
Largeur de bande maximale :   960
Taille de la matrice globale (mb) : 57.5674
Nombre de termes dans la matrice globale : 7195920     
Minimum de mémoire vive recommandée pour le solveur direct : 4

Size of element file (mb): 33.5808
Taille maximale de la matrice d'éléments (kb) : 255.024
Taille minimale de la matrice d'éléments (kb) : 17.9289

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

Commencer la calcul de contrainte et de déplacement
Thu Nov 30, 2023   11:05:48

Commencer le calcul de réaction
Thu Nov 30, 2023   11:05:48

Commencer la passe de vérification de convergence 2
Thu Nov 30, 2023   11:05:48

Itération terminée
Thu Nov 30, 2023   11:05:49

Analyse terminée : Analysis1
Thu Nov 30, 2023   11:05:49
