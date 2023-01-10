# Projet-Java-Prod

# Projet-MyDreams

## Contexte
Développement d'une application informatique complète de gestion de prêt
dans une entreprise. Cette application est connecté a un Systeme de gestion de
base de données relationnelle et permet de gérer efficacement diverses
transactions (emprunts, remboursement etc..).

<p align='center'>
<img height="500" width="600" center src="https://github.com/nhelissa01/Projet-MyDreams/blob/main/views/mydreams.png"/>
</p>

## Contenue
### La premiere version de l'application permet de :
1. Gérer les emprunteurs
2. Gérer les Prêts
3. Gérer les remboursements

<p align='center'>
<img height="500" width="600" center src="https://github.com/nhelissa01/Projet-MyDreams/blob/main/views/interface2.png"/>
</p>

## Contraintes
1. Les emprunteurs doivent payer un intérêt de 4.5% sur le montant total du prêt. Un groupe ne peut avoir qu’un seul prêt en cours.
2. Chaque prêt doit être remboursé en 4 versements (versement 1,…. Versement 4) égaux, sur une période de 5 mois (pas de remboursement durant le 1er mois du prêt).
3. Le premier versement doit être effectué à partir du 2e mois après la date du prêt.
4. Le système doit calculer automatiquement la date de chaque versement et les afficher avant la validation du prêt.
5. Pour chaque remboursement, l’agent de crédit attachée à la commune, se connecte au système (suivant les paramètres de connexion), charge le fichier (Texte(.txt), Excel(.xls ou xlsx) ou CSV(.csv)) dans lequel contient l’Id du prêt , le nom du versement et le montant versé par chaque entreprises du groupe choisi par l’agent de crédit.
6. Le programme doit vérifier le montant versé par chaque entreprise dans le fichier dans un tableau puis sauvegardent les informations dans une table dans la base de données après validation.
Le montant à verser doit être égal au versement mensuel. Les versements doivent être payés successivement.

<p align='center'>
<img height="500" width="600" center src="https://github.com/nhelissa01/Projet-MyDreams/blob/main/views/emprunt.png"/>
</p>

<p align='center'>
<img height="500" width="600" center src="https://github.com/nhelissa01/Projet-MyDreams/blob/main/views/pret.png"/>
</p>

<p align='center'>
<img height="500" width="600" center src="https://github.com/nhelissa01/Projet-MyDreams/blob/main/views/remboursement.png"/>
</p>
