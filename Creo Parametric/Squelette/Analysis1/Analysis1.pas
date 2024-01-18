------------------------------------------------------------
Creo Simulate Structure Version P-80-44:spg
Fichier journal de diagnostic Log
Wed Jan 17, 2024   15:08:14
-----------------------------------------

Commencer la création d'une base de données pour l'étude de conception
Wed Jan 17, 2024   15:08:14

Commencer la vérification d'erreurs en mode intégré
Wed Jan 17, 2024   15:08:14

Commencer à générer les éléments
Wed Jan 17, 2024   15:08:14

Commencer la vérification d'erreurs en mode intégré
Wed Jan 17, 2024   15:08:15

Démarrage du comptage du solveur
Wed Jan 17, 2024   15:08:15

Commencer l'analyse : "Analysis1"
Wed Jan 17, 2024   15:08:15

Utilisation du solveur éparse

Commencer la calcul de masse
Wed Jan 17, 2024   15:08:15

Démarrer l'itération 1
Wed Jan 17, 2024   15:08:15

Démarrage du traitement des restrictions ponctuelles multiples
Wed Jan 17, 2024   15:08:15

Commencer la minimisation du profil de matrice
Wed Jan 17, 2024   15:08:15

Commencer le calcul des éléments, passe 1
Wed Jan 17, 2024   15:08:15

Commencer l'assemblage de la matrice globale, passe 1
Wed Jan 17, 2024   15:08:15

Commencer la résolution des équations, passe 1
Wed Jan 17, 2024   15:08:15

Nombre d'équations : 36339
Largeur de bande moyenne :   150.73
Largeur de bande maximale :   678
Taille de la matrice globale (mb) : 43.8192
Nombre de termes dans la matrice globale : 5477394     
Minimum de mémoire vive recommandée pour le solveur direct : 2

Size of element file (mb): 26.8351
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

Commencer les calculs de charge
Wed Jan 17, 2024   15:08:16

Commencer les calculs de post-traitement, passe 1
Wed Jan 17, 2024   15:08:16

Commencer la passe de vérification de convergence 1
Wed Jan 17, 2024   15:08:16

Commencer calculs d'énergie de déformation
Wed Jan 17, 2024   15:08:16

Démarrer l'itération 2
Wed Jan 17, 2024   15:08:16

Démarrage du traitement des restrictions ponctuelles multiples
Wed Jan 17, 2024   15:08:16

Commencer la minimisation du profil de matrice
Wed Jan 17, 2024   15:08:16

Commencer le calcul des éléments, passe 2
Wed Jan 17, 2024   15:08:16

Commencer l'assemblage de la matrice globale, passe 2
Wed Jan 17, 2024   15:08:16

Commencer la résolution des équations, passe 2
Wed Jan 17, 2024   15:08:16

Nombre d'équations : 38463
Largeur de bande moyenne :   162.263
Largeur de bande maximale :   783
Taille de la matrice globale (mb) : 49.9289
Nombre de termes dans la matrice globale : 6241107     
Minimum de mémoire vive recommandée pour le solveur direct : 2

Size of element file (mb): 29.7069
Taille maximale de la matrice d'éléments (kb) : 113.568
Taille minimale de la matrice d'éléments (kb) : 16.2067

Commencer les calculs de charge
Wed Jan 17, 2024   15:08:17

Commencer les calculs de post-traitement, passe 2
Wed Jan 17, 2024   15:08:17

Commencer la passe de vérification de convergence 2
Wed Jan 17, 2024   15:08:17

Commencer la calcul de contrainte et de déplacement
Wed Jan 17, 2024   15:08:17

Commencer le calcul de réaction
Wed Jan 17, 2024   15:08:18

Commencer calculs d'énergie de déformation
Wed Jan 17, 2024   15:08:18

Itération terminée
Wed Jan 17, 2024   15:08:18

Analyse terminée : Analysis1
Wed Jan 17, 2024   15:08:18
