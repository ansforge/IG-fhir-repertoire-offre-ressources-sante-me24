### Le référentiel ROR

Le Répertoire de l’Offre et des Ressources en santé et accompagnement médico-social (ROR) est le référentiel (au sens gisement de données) de description de l’offre de santé des établissements sanitaires, des établissements et services du médico-social et des structures de ville. 
Les acteurs de santé ont convergé sur une vision commune de l’offre de santé. L’offre de santé est définie par une ou plusieurs activités opérationnelles, réalisée(s) dans le cadre d’un mode de prise en charge et pour une patientèle, et par les ressources qui permettent la réalisation de ces activités opérationnelles sur un lieu donné. Ces ressources concernent principalement les équipements spécifiques, les capacités d’accueil et les compétences que l’on souhaite identifier pour cette offre.

![ROR Modèle d'exposition v2](assets/images/ME_ROR_2.4.png "ROR Modèle d'exposition v2")

Le ROR, en tant que référentiel de description de l’offre de santé (au sens gisement de données), a une couverture nationale. Il doit permettre à toute application autorisée de rechercher une offre de santé.

### Instances des ROR régionaux

Dans les faits, chaque région met en œuvre, alimente et exploite une partie du référentiel limité à une couverture régionale, sans intersection de périmètre entre les régions. Chaque région est maîtresse de la solution technique qu’elle met en œuvre. 
Les solutions techniques sont qualifiées de « solution ROR ». Deux solutions ROR sont déployées sur le territoire : ROR IR et ROR IeSS
L’instance régionale de la solution ROR mise en œuvre dans une région, et alimentée de la description de l’offre de santé de la région est appelée « ROR régional ».
Chaque ROR régional propose à ses utilisateurs un écran de recherche de l’offre régionale, et permet une recherche d’offre dans les autres régions. Historiquement, cette recherche d’une offre au-delà de la région s’appuie sur des services proposés par chaque ROR régional, et nécessite que chaque instance régionale soit interconnectée avec les instances des 17 autres régions.

### Instance du ROR national

Dans un contexte de sollicitation croissante des ROR régionaux, la nécessité d’améliorer la qualité du service rendu aux utilisateurs et le vieillissement technologique des solutions logicielles ROR rendent indispensable une évolution des logiciels et de leur architecture. Pour répondre à ce besoin, il a été décidé collectivement en 2020 de construire une solution logicielle ROR unique, avec un stockage centralisé des données (base de données unique) qui remplacera à terme les solutions ROR régionales.
La construction du ROR nationale est réalisée par étape. Lors des deux premières étapes, le ROR national est alimenté par les ROR régionaux. 
La mise en œuvre du ROR national et de son webservice permet de centraliser la recherche auprès du ROR national en remplacement des différentes instances régionales. 
Ce service va ainsi permettre à une instance régionale de s’appuyer sur le ROR national pour réaliser une « recherche interROR », et permet également aux autres systèmes consommateurs des données du ROR de disposer d’un service pour lancer une recherche et obtenir en résultat la description des offres de santé recherchées.


* Selon la documentation officielle, cette page d'accueil de l'IG doit contenir :
* De quoi parle l'IG (En termes non expert, compréhensible par un patient)
* Des détails techniques sur le contexte et le besoin


* Les principales sections de l'IG  sont :
* Le contexte de l'IG et les points dont les implémenteurs doivent être familier avant dans s'avoir plus sur l'IG
* Ce que les Implémenteurs doivent mettre en place
* Un onglet "télécharger"


### Auteurs et contributeurs

| Role  | Nom | Organisation | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | Nicolas Riss | Agence du Numérique en Santé | nicolas.riss@esante.gouv.fr |
| **Secondary Editor** | Sylvain Demey | Agence du Numérique en Santé | sylvain.demey@esante.gouv.fr |