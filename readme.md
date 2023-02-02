# EVAL :

## Partie 1 (11 points):

### 1 - Savoir configurer et gérer une structure d’une BDD :

- Explication (écrite) de votre solution (comment vous allez structurer votre BDD, avec votre vision de la sécurité (plus si envie))
- Configurer une SGA (Max 400 Mo et que la target pas la max_size).
- Configurer une PGA à 50Mo /user
- UML (avec cardinalité)

### 2 - Gestion avancée d’une BDD :

- Tables cohérentes avec la thématique choisie Contraintes d’intégrités
- Données (minimum 50 lignes en tout. #Copié-Col..)
- Tablespaces
- UNDO tablespace
- Tablespace temporaire

## Partie 2 (9 points) :

### 3 - Gestion des utilisateurs :

- Minimum 4 utilisateurs (utilisateurs & admins compris) Privilèges
- Rôles
- Profils
- Tablespaces

### 4 - Gestion optimisé et contrôle des actions :

- Requêtes pertinentes sur la BDD (> 3 complexes)
- Accès et gestion optimisés au sein de la BDD (vues & vue matérialisées)
- Ne pas réutiliser celles vues en cours
- pas de “SELECT \* FROM ... ”
- Créer 2 fonctions pertinentes pour la BDD
- Créer 1 instruction composée pertinente pour la BDD

#### Bonus (0.5 point) :

- Avis constructif et objectif sur le cours (même négatif)
- Sujets / Exercices / Gestion du temps / Performance de l’animateur / Améliorations / Etc
- Idées : Fast Food / Transport maritime / Trading / Caserne Militaire / Météo / Accidents / IOT...

NB FAIRE UNE VUE ET UNE VUE MATÉRIALISÉE

---

# Garage Auto

J'ai choisi un projet autour d'un "Garage Automobile", le garage doit gérer les entrées et les sorties des véhicules.

En tant que Patron (ADMIN), il doit avoir accés à toutes les tables afin de vérifier s'il le souhaite les voiture qui sont toujours en attente de réparation, il peut le faire grace à la date d'entrée du véhicule. Il peut également voir si le client à payer.

J'aurais aimé mettre en place un système d'encryption pour les données sensibles, tel les immatriculations des véhicules.

À terme le CLIENT pourrait suivre l'avancer des réparations (début et fin) de son véhicules et il pourrait également payer sa facture en ligne.

Les Méchaniciens en tant que EMPLOYEE, peuvent consulter les dates d'entrées des véhicules afin de prendre un véhicule en attente de réparation.
Les Méchaniciens, peuvent renseigner une date de début de réparation et une date de fin de réparation.

La Secretaire en tant que SECRETARY a la possibilité de consulté, insérer des données et les mettre à jour.
La Secretaire n'a pas le droit de supprimer des éléments.

---

Retour et Avis sur le cours :

Bien que l'encadrement et les compétences de l'intervenant soit bonnes, je regrette la vitesse à laquelle on a survolé les choses ainsi que les conditions de déroulement de certains cours en distanciel ou interrompu sur une grande période.
Problème d'organisation et de priorité dans les agendas probablement.

Je pense que j'aurais pu faire mieux mais j'ai besoin d'un peu plus de pratique pour maitriser les différents concepts.
Je garderai le document sous le coude car je trouve que le pdf est vraiment bien fait (surement l'un des supports de cours le mieux réalisé depuis le début de l'année.).
