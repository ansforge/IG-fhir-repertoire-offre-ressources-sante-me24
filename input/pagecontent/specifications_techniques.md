### Recherche offre sur critères principaux

#### Caractéristiques de l'API


|||
|-------------------- | ---------------------------- |
| **Endpoint**        |                            |
| **Header**          | Content-type :=Json + FHIR |
| **Encodage UTF8**   |                            |
| **Version FHIR**    | 4.0.1                      |
| **Version package** |                            |
| **Publication**     |                            |

#### Construction de la requête de base


|||
| ----------------------------------- | ------------------------------------------------------------------ |
| **Interaction FHIR**              | Search                                                           |
| **Méthode http associée**      | GET                                                              |
| **Ressource recherchée**         | HealthcareService                                                |
| **Construction requête de base** | GET[base]/HealthcareService{?[parameters]{&_format=[mime-type]}} |

---

[[1]](#_ftnref1)
[https://www.hl7.org/fhir/http.html#search](https://www.hl7.org/fhir/http.html#search) et  [https://www.hl7.org/fhir/http.html#general](https://www.hl7.org/fhir/http.html#general

#### Format de la réponse

##### Format de réponse en cas de succès

Si la recherche est un succès, le serveur répond :

- Un header avec un code 200 OK HTTP
- Un body contenant une ressource Bundle[^2] dont le type =
  searchset.
  Le bundle encapsule 0 à n ressources HealthcareService
  correspondantes aux critères de recherche et toutes les ressources
  demandées par le consommateur via des modificateurs de requêtes
  (\_revinclude et \_include).
  Le service développé renvoie les 200 premiers résultats et indique
  le total trouvé dans une balise \"total\". Dans le cas où il n'y a
  pas de résultat le service renvoie \"total\": 0.

  Remarque : la recherche est un succès à partir du moment où la
  requête peut être exécutée (code http=200). Il peut il y avoir 0 à n
  correspondances.

Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/http.html](https://www.hl7.org/fhir/http.html)

##### Format de réponse en cas d'échec

Si la recherche échoue, le serveur doit répondre :

- Un header avec un code erreur HTTP 4XX ou 5XX. Cf Chapitre 4
- Un body contenant une ressource OperationOutcome[^3] qui donne les
  détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
[https://www.hl7.org/fhir/http.html](https://www.hl7.org/fhir/http.html)

#### Critères de recherche applicables à date

##### StructureDefinition-ror-healthcareservice

<table class="table table-bordered">
  <thead>
    <tr>
      <th>Attribut ME 2.4</th>
      <th>Search parameters</th>
      <th>Natif FHIR</th>
      <th>Type FHIR</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>N/A</td>
      <td>location</td>
      <td>Oui</td>
      <td>reference</td>
      <td>Référence vers Location</td>
    </tr>
    <tr>
      <td>N/A</td>
      <td>organization</td>
      <td>Oui</td>
      <td>reference</td>
      <td>Référence vers Organization</td>
    </tr>
    <tr>
      <td colspan="5" style="background-color:#e6ebef;">Patientèle</td>
    </tr>
    <tr>
      <td>publicPrisEnCharge</td>
      <td>supported-patient-type</td>
      <td>Non</td>
      <td>token</td>
      <td>Le public pris en charge précise si une unité élémentaire d’un établissement ou d’un service du champ d’activité médico-social accueille des personnes âgées en perte d’autonomie et/ou des personnes en situation de handicap
      JDV-J29-PublicPrisEnCharge-ROR issu de la TRE_R239-PublicPrisEnCharge
      </td>
    </tr>
    <tr>
      <td>ageMin</td>
      <td>age-range-low</td>
      <td>Non</td>
      <td>quantity</td>
      <td>Borne minimum (inclus) de la fourchette d’âge pour laquelle une offre est recherchée.
      JDV_J37-UcumUniteTemps issu de la TRE_R247-UcumUniteMesure
      </td>
    </tr>
    <tr>
      <td>ageMax</td>
      <td>Age-range-high</td>
      <td>Non</td>
      <td>quantity</td>
      <td>Borne maximum (inclus) de la fourchette d’âge pour laquelle une offre est recherchée.
      JDV_J37-UcumUniteTemps issu de la TRE_R247-UcumUniteMesure
      RG_RECH-08 : La borne d’âge max DOIT être supérieure ou égale à la borne d’âge min.
      </td>
    </tr>
    <tr>
      <td colspan="5" style="background-color:#e6ebef;">UniteElementaire</td>
    </tr>
    <tr>
      <td>nomOI</td>
      <td>name</td>
      <td>Oui</td>
      <td>string</td>
      <td>Nom de l’organisation.</td>
    </tr>
    <tr>
      <td>categorieOrganisation</td>
      <td>service-category</td>
      <td>Oui</td>
      <td>token</td>
      <td>La catégorie d’organisation caractérise la nature particulière de l’offre de santé portée par l’UE recherchée, offre qui se distingue par un agrément, un personnel spécialement formé, un environnement particulièrement adapté à l’état de santé des patients
      JDV_J34-CategorieOrganisation-ROR issu de la TRE_R244-CategorieOrganisation
      </td>
    </tr>
    <tr>
      <td>accueilSequentielAccepte</td>
      <td>reception-mode</td>
      <td>Non</td>
      <td>token</td>
      <td>L’indicateur précise si l’UE accepte d’accueillir des personnes en situation de handicap de façon séquentielle c’est à dire sur une partie de la semaine</td>
    </tr>
    <tr>
      <td>champActivite</td>
      <td>service-type</td>
      <td>Oui</td>
      <td>token</td>
      <td>Un champ d’activité indique le domaine dans lequel s’inscrit l’offre
      JDV_J20-ChampActivite-ROR issu de la TRE_R227-ChampActivite
      </td>
    </tr>
    <tr>
      <td>secteurPsychiatrique</td>
      <td>psychiatric-sector</td>
      <td>Non</td>
      <td>string</td>
      <td>Le secteur de psychiatrie (ou sectorisation) correspond à une aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur.
RG_RECH_10 : Le secteur psychiatrique DOIT être structuré de la façon suivante :
- pour la métropole : numéro de départements (2 digits) + G (adultes) ou I (intersectoriel) + numéro du secteur (2 digits) 
- pour les DOM/TOM : numéro de départements (3 digits) + G (adultes) ou I (intersectoriel) + numéro du secteur (2 digits)
</td>
    </tr>
    <tr>
      <td>specialisationPriseEnCharge</td>
      <td>characteristic</td>
      <td>Oui</td>
      <td>token</td>
      <td>Une spécialisation de prise en charge est une grande catégorie de troubles, de pathologies ou de déficiences pour lesquelles l’unité dispose d’une expertise, de compétences et/ou d’équipements spécifiques pouvant être discriminants dans le choix d’orientation du patient.
La recherche sous forme [system]|[code] avec usage de l'oid permet de discriminer la caractéristique recherchée
JDV_J35-SpecialisationDePriseEnCharge-ROR issu de la TRE_R245-SpecialisationDePriseEnCharge
</td>
    </tr>
    <tr>
      <td>modePriseEnCharge</td>
 <td>characteristic</td>
      <td>Oui</td>
      <td>token</td>
      <td>Un mode de prise en charge se définit par une UE en termes de durée de prise en charge et de niveau de soins.
La recherche sous forme [system]|[code] avec usage de l'oid permet de discriminer la caractéristique recherchée
JDV_J19-ModePriseEnCharge-ROR issu de la TRE_R213-ModePriseEnCharge
</td>
    </tr>
    <tr>
      <td>temporaliteAccueil</td>
      <td>characteristic</td>
      <td>Oui</td>
      <td>token</td>
      <td>La temporalité d’accueil précise si l’unité offre un accueil permanent ou temporaire.
La recherche sous forme [system]|[code] avec usage de l'oid permet de discriminer la caractéristique recherchée
JDV_J30-TemporaliteAccueil-ROR issu de la TRE_R240-TemporaliteAccueil
</td>
    </tr>
    <tr>
      <td>acteSpecifique</td>
      <td>characteristic</td>
      <td>Oui</td>
      <td>token</td>
      <td>Un acte spécifique est une action menée par un ou plusieurs acteur(s) de santé dans le cadre d’une activité.
La recherche sous forme [system]|[code] avec usage de l’oid permet de discriminer la caractéristique recherchée
JDV_J16-ActeSpecifique-ROR issu de la TRE_R210-ActeSpecifique
</td>
    </tr>
    <tr>
      <td colspan="5" style="background-color:#e6ebef;">CompetenceRessource</td>
    </tr>
    <tr>
      <td>profession</td>
      <td>profession</td>
      <td>Non</td>
      <td>token</td>
      <td>La compétence ressource correspond à une profession exercée par au moins une personne présente dans l’unité.
      JDV_J54-Profession-ROR issu de la TRE_G15-ProfessionSante, TRE_G16-ProfessionFormation, TRE_R94-ProfessionSocial, TRE_R95-UsagerTitre, TRE_R96-AutreFonctionSanitaire et TRE_R85-RolePriseCharge</td>
    </tr>
    <tr>
      <td>specialiteOrdinale</td>
      <td>ordinal-speciality</td>
      <td>Non</td>
      <td>token</td>
      <td>Une spécialité ordinale identifie un domaine de compétence d’un professionnel reconnu par l’ordre compétent.
      JDV_J210-SpecialiteOrdinale-ROR issu de la TRE_R38-SpecialiteOrdinale
      </td>
    </tr>
    <tr>
      <td>competenceSpecifique</td>
      <td>specific-competence</td>
      <td>Non</td>
      <td>token</td>
      <td>La compétence spécifique correspond à une capacité ou connaissance reconnue d’une personne ressource de l’unité.
      JDV_J33-CompetenceSpecifique-ROR issu de la TRE_R243-CompetenceSpecifique</td>
    </tr>
    <tr>
      <td colspan="5" style="background-color:#e6ebef;">Equipement</td>
    </tr>
    <tr>
      <td>typeEquipement</td>
      <td>equipement-type</td>
      <td>Non</td>
      <td>token</td>
      <td>Un équipement spécifique correspond à une ressource matérielle médicotechnique spécialisée, qui permet la réalisation d’une activité de soins.
      JDV_J18-EquipementSpecifique-ROR issu de la TRE_R212-Equipement
      </td>
    </tr>
    <tr>
      <td colspan="5" style="background-color:#e6ebef;">ActiviteOperationnelle</td>
    </tr>
    <tr>
      <td>activiteOperationnelle</td>
      <td>specialty</td>
      <td>Oui</td>
      <td>token</td>
      <td>Une activité opérationnelle est un ensemble cohérent d’actions et de pratiques mises en œuvre pour répondre aux besoins en Santé de la personne.
      JDV_J17-ActiviteOperationnelle-ROR issu de la TRE_R211-ActiviteOperationnelle
      </td>
    </tr>
  </tbody>
</table>

##### StructureDefinition-ror-location

Critères de recherches applicables à la ressource Location, ces critères
devront être chainés pour être utilisables dans le cas de la recherche
sur HealthcareService. [^4]

Pour faire appel à ces critères de recherche utiliser la syntaxe
suivante :

location:[NOM
CRITERE]


| Attribut ME 2.4                                          | Search parameters  | Natif FHIR | Type FHIR | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ---------------------------------------------------------- | -------------------- | ------------ | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Recherche positionnelle (coordonnées géographique) [1] | near               | Oui        | special   | near=Longitude\|Latitude\|Distance\|Unité RG_RECH_05 : La distance de recherche en km DOIT être comprise entre « 0 » (inclus) et « 1000 » (inclus). RG_RECH_12 : Le ROR National DOIT indiquer, pour chaque UE, l’éloignement calculé entre la commune de l’UE et la commune de la recherche. RG_RECH_13 : L’unité de la distance peut être km ou m.  RG_RECH_14 : Si la distance n’est pas renseignée, la distance est interprétée en km. |
| Recherche positionnelle (code INSEE commune)             | near-insee-code    | Non        | special   | near= INSEECode\|Distance\|Unité RG_RECH_12 : Le ROR National DOIT indiquer, pour chaque UE, l’éloignement calculé entre la commune de l’UE et la commune de la recherche.                                                                                                                                                                                                                                                                             |
| N/A                                                      | code-region        | Non        | token     | Code région                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Adresse/codePostal                                       | address-postalcode | Oui        | string    | Code Postal ou code postal spécifique CEDEX                                                                                                                                                                                                                                                                                                                                                                                                                |
| communeCog                                               | commune-cog        | Non        | token     | Code officiel géographique (COG) de la commune dans laquelle le lieu est situé. JDV_J230-CommuneOM-ROR issu de la TRE_R13-CommuneOM                                                                                                                                                                                                                                                                                                                       |

##### StructureDefinition-ror-organization

Critères de recherches applicables à la ressource Organization, ces
critères devront être chainés pour être utilisables dans le cas de la
recherche sur HealthcareService. [^6]

Pour faire appel à ces critères de recherche utiliser la syntaxe
suivante : providedBy:[NOM
CRITERE]

<table class="table table-bordered">
  <thead>
    <tr>
      <th>Attribut ME 2.4</th>
      <th>Search parameters</th>
      <th>Natif FHIR</th>
      <th>Type FHIR</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="5" style="background-color:#e6ebef;">EntiteGeographique</td>
    </tr>
    <tr>
      <td>nomOI</td>
      <td>name</td>
      <td>Oui</td>
      <td>string</td>
      <td>Nom de l’organisation interne.</td>
    </tr>
    <tr>
      <td>idNat_Struct</td>
      <td>identifier</td>
      <td>Oui</td>
      <td>token</td>
      <td>Identification nationale de l’Entité Géographique définie dans le CI-SIS. [Ref_05]</td>
    </tr>
    <tr>
      <td>numFINESS</td>
      <td>identifier</td>
      <td>Oui</td>
      <td>token</td>
      <td>Numéro FINESS de l’entité géographique.</td>
    </tr>
    <tr>
      <td>categorieEG</td>
      <td>type</td>
      <td>Oui</td>
      <td>token</td>
      <td>La catégorie d’établissement est le cadre réglementaire dans lequel s’exerce l’activité de l’entité géographique.
      JDV_J55-CategorieEG-ROR issu de TRE_R66-CategorieEtablissement, TRE_R316-AutreCategorieEtablissement et TRE_R02-SecteurActivite
      </td>
    </tr>
    <tr>
      <td>zonePoser</td>
      <td>drop-zone</td>
      <td>Non</td>
      <td>token</td>
      <td>Cet indicateur précise l’existence d’une zone de poser pour hélicoptère sur le site concerné.</td>
    </tr>
  </tbody>
</table>

##### StructureDefition-ror-practitionerrole

Critères de recherches applicables à la ressource PractitionerRole, ces
critères devront être chainés pour être utilisables dans le cas de la
recherche sur HealthcareService. [^7]


| Attribut ME 2.4 | Search parameters | Natif FHIR | Type FHIR | Description                        |
| ----------------- | ------------------- | ------------ | ----------- | ------------------------------------ |
| N/A             | service           | Oui        | reference | Référence vers HealthcareService |
| N/A             | practitioner      | Oui        | reference | Référence vers Practitioner      |

#### Critères de recherche : à venir

##### StructureDefinition-ror-organization


| Attribut ME 2.4 | Search parameters | Natif FHIR | Type FHIR | Description                                                                                            |
| ----------------- | ------------------- | ------------ | ----------- | -------------------------------------------------------------------------------------------------------- |
| typeFermeture   | period-end        | Non        | token     | Type de fermeture de l'entité juridique  JDV_J201-TypeFermeture-ROR issu de la TRE_R286-TypeFermeture |
| dateFermeture   | closing-type      | Non        | date      | Date de fermeture de l'entité juridique.                                                              |

##### StructureDefinition-ror-healthcareservice


| Attribut ME 2.4  | Search parameters | Natif FHIR | Type FHIR | Description                                                                                                                                                                                                                                  |
| ------------------ | ------------------- | ------------ | ----------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| zoneIntervention | intervention-zone | Non        | token     | Zone(s) dans laquelle (lesquelles) intervient la structure lorsque les professionnels se déplacent. JDV_J223-TypeDivisionTerritoriale-ROR issu de la TRE_R201-TypeDivisionTerritoriale  JDV_J230-CommuneOM-ROR issu de la TRE_R13-CommuneOM |

#### Paramètres et modificateurs de requêtes FHIR

<table class="table table-bordered">
  <thead>
    <tr>
      <th> </th>
      <th>Lien vers spécification</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td colspan="3" style="background-color:#e6ebef;">Paramètres et modificateurs : inclusion</td>
    </tr>
    <tr>
      <td>_revinclude</td>
      <td><a href="https://www.hl7.org/fhir/search.html#revinclude">https://www.hl7.org/fhir/search.html#revinclude</a></td>
      <td>Indique que les ressources qui font référence à HealthcareService doivent être incluses dans la réponse</td>
    </tr>
    <tr>
      <td>_include</td>
      <td><a href="https://www.hl7.org/fhir/search.html#include">https://www.hl7.org/fhir/search.html#include </a></td>
      <td>Indique que les ressources référencées par HealthcareService doivent être incluses dans la réponse</td>
    </tr>
    <tr>
      <td>:iterate</td>
      <td> </td>
      <td>Le processus d’inclusion peut être itératif si le modificateur :iterate est ajouté dans la requête.</td>
    </tr>
    <tr>
      <td colspan="3" style="background-color:#e6ebef;">Paramètres et modificateurs : réponses</td>
    </tr>
    <tr>
      <td>_count</td>
      <td><a href="https://www.hl7.org/fhir/search.html#count">https://www.hl7.org/fhir/search.html#count</a></td>
      <td>Indique le nombre souhaité par le consommateur de résultat par page. RG_RECH_52 : Par défaut la recherche retourne 200 résultats maximum par page.</td>
    </tr>
    <tr>
      <td>_sort</td>
      <td><a href="http://hl7.org/fhir/search.html#_sort">http://hl7.org/fhir/search.html#_sort </a></td>
      <td>Indiquer dans quel ordre renvoyer les résultats</td>
    </tr>
    <tr>
      <td colspan="3" style="background-color:#e6ebef;">Paramètres et modificateurs : recherche</td>
    </tr>
    <tr>
      <td>_filter</td>
      <td><a href="https://www.hl7.org/fhir/search_filter.html">https://www.hl7.org/fhir/search_filter.html</a></td>
      <td>Paramètre de recherche spécial qui permet de compléter le mécanisme de recherche pour des recherches plus complexes.</td>
    </tr>
    <tr>
      <td>:above</td>
      <td><a href="https://hl7.org/fhir/search.html#recursive">https://hl7.org/fhir/search.html#recursive</a></td>
      <td>Indique que la recherche est effectuée sur n’importe quel niveau d’une hiérarchie de référence circulaires.</td>
    </tr>
    <tr>
      <td colspan="3" style="background-color:#e6ebef;">Préfixe de comparaison</td>
    </tr>
    <tr>
      <td>gt, lt, ge, le, sa & eb</td>
      <td><a href="https://www.hl7.org/fhir/search.html#date">https://www.hl7.org/fhir/search.html#date </a></td>
      <td>Permet de faire des recherches comparatives</td>
    </tr>
  </tbody>
</table>
#### Exemples de requêtes

##### Scenario 1 : Recherche sur un critère en saisissant 1 valeur

**Description du scénario : Un consommateur cherche les
offres (unités) ayant
une activité opérationnelle = Urgences spécialisées cardiologiques
(TRE-R211\|148)**

**Requête :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|148&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|148
#critère de recherche sur l'activité opérationnelle&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization&\_include=HealthcareService:location #inclus les Location référencées
par HealthcareService&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole
```

**Réponse "simplifiée" :**

```xml
HTTP 200 OK
resourceType: Bundle
type: searchset
total: 4UE1, UE2, UE3, UE4 #Ressources qui répondent à la recherche (match)EG1, Location1, PR1, PRO1,Pole1, EG2, Location2, PR2, PRO2, UF1, Pole2,
EG3, Location3, PR3, PRO3, Location4 #Ressources qui sont retournées
grâce aux modificateurs de requête \_include et \_revinclude
```

##### Scenario 2 : Recherche sur un critère en saisissant une liste de valeurs

**Description du scénario : Un consommateur cherche les offres (unités) ayant
une activité opérationnelle parmi la liste = Gynécologie médicale
(TRE_R211\|053) OU Obstétrique (TRE_R211\|100)**

Requête :

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|053,100&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner

```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|053,100
#critère de recherche sur l'activité opérationnelle&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization&\_include=HealthcareService:location #inclus les Location référencées
par Healthcare Service&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole
```

**Réponse "simplifiée" :**

```xml
HTTP
resourceType: Bundle
type: searchset
total: 1UE8 #Ressource qui répond à la recherche (match)EG3, Location8 #Ressources qui sont retournées grâce aux modificateurs
de requête \_include et \_revinclude
```

##### Scenario 3 : Recherche multicritères #1 - ET

**Description du scénario :Un consommateur cherche les offres (unités) ayant
une catégorie d\'organisation = Unité d'aide par le travail (ESAT)
(TRE_R244\|43)
ET proposant un accueil séquentiel = Oui (booléen)**

**Requête :**

```sh
get[BASE]/HealthcareService?service-category=
https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|43&receptionMode=true&\_include:iterate=HealthcareService:organization&\_include=HealthcareService:location&\_revinclude=PractitionerRole:service&\_include=PractitionerRole:practitioner
```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?service-category=
https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|43#critère
de recherche sur la catégorie d'organisation& receptionMode=true #critère de recherche sur l'accueil séquentiel&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization&\_include=HealthcareService:location #inclus les Location référencées
par Healthcare Service&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole
```

**Réponse "simplifiée" :**

```xml
HTTP
resourceType: Bundle
type: searchset
total: 1UE5 #Ressource qui répond à la recherche (match)EG3, Location5 #Ressources qui sont retournées grâce aux modificateurs
de requête \_include et \_revinclude
```

##### Scenario 4 : Recherche multicritères #2 - OU

**Description du scénario :Un consommateur cherche les offres (unités) ayant
une catégorie d\'organisation = Centre de Soins, d'Accompagnement et de
Prévention en Addictologie (CSAPA) (TRE-R244\|80)
OU une activité opérationnelle = Addictologie avec
substance(s) (TRE-R211\|404)**

**Requête :**

```sh
get[BASE]/HealthcareService?_filter=((service-category
[https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|80](https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|80))
or (speciality eq
https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle\|404))&\_include:iterate=HealthcareService:organization&\_include=HealthcareService:location&\_revinclude=PractitionerRole:service&\_include=PractitionerRole:practitioner
```

**Requête expliquée:**

```sh
get[BASE]/HealthcareService?_filter=((service-category
[https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|80](https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|80))
or (speciality eq
https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle\|404))
#critère de recherche sur l'activité opérationnelle OU sur la catégorie
d'organisation&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization&\_include=HealthcareService:location #inclus les Location référencées
par Healthcare Service&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole
```

**Réponse "simplifiée" :**

```xml
HTTP
resourceType: Bundle
type: searchset
total: 1UE6 #Ressource qui répond à la recherche (match)
EG3, Location6 #Ressources qui retournées grâce aux modificateurs de
requête \_include et \_revinclude
```

##### Scenario 5 : Recherche multicritères #3 -- ET/OU

**Description du scénario :Un consommateur cherche les offres (unités) ayant
( une catégorie établissement = DAC (TRE_R606) OU une
catégorie d'organisation = Gestionnaire de cas Maya (TRE-R244\|73) )ET un acte spécifique = Coordination de la prise en
charge du COVID long (TRE_R210\|1045)**

**Requête :**

```sh
get[BASE]/HealthcareService?_filter=((type
https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement\|606)
or (service-category eq
https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|73))&
characteristic=
https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique\|1045&\_include:iterate=HealthcareService:organization&\_include=HealthcareService:location&\_revinclude=PractitionerRole:service&\_include=PractitionerRole:practitioner
```

**Requête expliquée:**

```sh
get[BASE]/HealthcareService?_filter=((type
https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement\|606)
or (service-category eq
https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|73))
#critère de recherche sur l'acte spécifique OU sur la catégorie
d'organisation& characteristic=
https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique\|1045
#critère sur l'acte spécifique&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization&\_include=HealthcareService:location #inclus les Location référencées
par Healthcare Service&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole
```

**Réponse "simplifiée" :**

```xml
HTTP
resourceType: Bundle
type: searchset
total:2UE1, UE3 #Ressources qui répondent à la recherche (match)
EG1, Location1, PR1, PRO1, UF1, Pole2, EG3, Location3, PR3, PRO3
#Ressources qui retournées grâce aux modificateurs de requête \_include
et \_revinclude
```

##### Scenario 6 : Recherche à proximité géographique

**Description du scénario : Un consommateur cherche les
offres (unités) ayant
une activité opérationnelle = Urgences spécialisées cardiologiques
(TRE-R211\|148)
dans un périmètre géographique proche du lieu de résidence d\'un patient
= 10km autour du point (48.83,2.31)**

**Requête :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|148&location:near=48.83|2.31|10|km&_include:iterate=HealthcareService:organization&_include=HealthcareService:location&_revincluded=PractitionerRole:service&_include=PractitionerRole:practitioner

```

**Requête expliquée :**

```sh
get[BASE]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|148
#critère de recherche sur l'activité opérationnelle&location:near=48.83\|2.31\|10\|km #critère de périmètre géographique --
paramètre chainé -- 10km autour du point de référence 48.83 (latitude)
et 2.31 (longitude) dont le système de référence est WGS84&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization&\_include=HealthcareService:location #inclus les Location référencées
par Healthcare Service&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole
```

**Réponse "simplifiée" :**

```xml
HTTP
resourceType: Bundle
type: searchset
total:3UE1, UE3, UE4 #Ressources qui répondent à la recherche (match)
EG1, Location1, PR1, PRO1, UF1, Pole2, EG3, Location3, PR3, PRO3, UF1,
Pole2, EG3, Location4 #Ressources qui retournées grâce aux modificateurs
de requête \_include et \_revinclude
```

### Codes retours

Gestion des codes retours en FHIR :
[https://www.hl7.org/fhir/search.html#errors](https://www.hl7.org/fhir/search.html#errors)

- **400 Bad Request** : la recherche n\'a pas pu être traitée ou a
  échoué aux règles de validation FHIR de base
- **401 Not Authorized** : authorization is required for the
  interaction that was attempted
- **404 Not Found** : resource type not supported, or not a FHIR
  end-point

### Annexes

#### Jeux de données pour exemple

![Figure 3 - Jeu de données](image9.png "Figure 3 - Jeu de données")

Figure 3 - Jeu de données

<table class="table table-bordered">
  <thead>
    <tr>
      <th colspan="10"><center>Healthcare service v2.4</center></th>
    </tr>   
  </thead>
  <tbody>
    <tr>
      <td>ID</td>
      <td>UE1</td>
      <td>UE2</td>
      <td>UE3</td>
      <td>UE4</td>
      <td>UE5</td>
      <td>UE6</td>
      <td>UE7</td>
      <td>UE8</td>
      <td>UE9</td>
    </tr>
    <tr>
      <td>Age min</td>
      <td>0 an</td>
      <td>0 an</td>
      <td>0 an</td>
      <td>0 an</td>
      <td>0 an</td>
      <td>0 an</td>
      <td>0 an</td>
      <td>0 an</td>
      <td>0 an</td>
    </tr>
    <tr>
      <td>Age max</td>
      <td>100 ans</td>
      <td>5 ans</td>
      <td>100 ans</td>
      <td>100 ans</td>
      <td>100 ans</td>
      <td>100 ans</td>
      <td>100 ans</td>
      <td>100 ans</td>
      <td>100 ans</td>
    </tr>
    <tr>
      <td>Activité opérationnelle</td>
      <td>148 Urgences spécialisées cardiologiques</td>
      <td>148 Urgences spécialisées cardiologiques</td>
      <td>148 Urgences spécialisées cardiologiques</td>
      <td>148 Urgences spécialisées cardiologiques</td>
      <td>055 Hématologie</td>
      <td>070 Imagerie par scanner (TDM)</td>
      <td>087 Médecine nucléaire</td>
      <td>100 Obstétrique</td>
      <td>102 Oncologie-cancérologie</td>
    </tr>
    <tr>
      <td>Acte Spécifique</td>
      <td>1045 Coordination de la prise en charge du COVID long</td>
      <td>1045 Coordination de la prise en charge du COVID long</td>
      <td>1045 Coordination de la prise en charge du COVID long</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td>1026 Colposcopie</td>
      <td> </td>
    </tr>
    <tr>
      <td>Catégorie organisation</td>
      <td>73 Gestion de cas MAIA</td>
      <td>66 Equipe Relai Handicap rare</td>
      <td> </td>
      <td> </td>
      <td>43 Unité d’aide par le travail (ESAT)</td>
      <td>80 Centre de Soins, d’Accompagnement et de Prévention en Addictologie (CSAPA)</td>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
    <tr>
      <td>Accueil séquentiel accepté</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td>Oui</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td> </td>
    </tr>
    <tr>
      <td>Date dernière maj</td>
      <td>2022-11-01T12:00:00.00</td>
      <td>2022-11-02T12:00:00.00</td>
      <td>2022-11-03T12:00:00.00</td>
      <td>2022-11-04T12:00:00.00</td>
      <td>2022-11-04T12:00:00.00</td>
      <td>2022-11-04T12:00:00.00</td>
      <td>2022-11-04T12:00:00.00</td>
      <td>2022-11-04T12:00:00.00</td>
      <td>2022-11-04T12:00:00.00</td>
    </tr>
  </tbody>
</table>

<table class="table table-bordered">
  <thead>
    <tr>
      <th colspan="10"><center>Location v2.4</center></th>
    </tr>   
  </thead>
  <tbody>
    <tr>
      <td>ID</td>
      <td>LocationUE1</td>
      <td>LocationUE2</td>
      <td>LocationUE3</td>
      <td>LocationUE4</td>
      <td>LocationUE5</td>
      <td>LocationUE6</td>
      <td>LocationUE7</td>
      <td>LocationUE8</td>
      <td>LocationUE9</td>
    </tr>
    <tr>
      <td>Adresse</td>
      <td>27 Rue du Faubourg Saint-Jacques</td>
      <td>100 Bd du Général Leclerc</td>
      <td>47-83 Bd de l’Hôpital</td>
      <td>Bd de l’Hôpital</td>
      <td>47-83 Bd de l’Hôpital</td>
      <td>47-83 Bd de l’Hôpital</td>
      <td>47-83 Bd de l’Hôpital</td>
      <td>47-83 Bd de l’Hôpital</td>
      <td>47-83 Bd de l’Hôpital</td>
    </tr>
    <tr>
      <td>Code postal</td>
      <td>75014</td>
      <td>92110</td>
      <td>75013</td>
      <td>75013</td>
      <td>75013</td>
      <td>75013</td>
      <td>75013</td>
      <td>75013</td>
      <td>75013</td>
    </tr>
    <tr>
      <td>Ville</td>
      <td>Paris</td>
      <td>Clichy</td>
      <td>Paris</td>
      <td>Paris</td>
      <td>Paris</td>
      <td>Paris</td>
      <td>Paris</td>
      <td>Paris</td>
      <td>Paris</td>
    </tr>
    <tr>
      <td>Date dernière maj</td>
      <td>2022-01-01T12:00:00.00</td>
      <td>2022-01-02T12:00:00.00</td>
      <td>2022-01-02T12:00:00.00</td>
      <td>2022-01-02T12:00:00.00</td>
      <td>2022-01-02T12:00:00.00</td>
      <td>2022-01-02T12:00:00.00</td>
      <td>2022-01-02T12:00:00.00</td>
      <td>2022-01-02T12:00:00.00</td>
      <td>2022-01-02T12:00:00.00</td>
    </tr>
  </tbody>
</table>

<table class="table table-bordered">
  <thead>
    <tr>
      <th colspan="7"><center>Organization v2.4</center></th>
    </tr>   
  </thead>
  <tbody>
    <tr>
      <td>ID</td>
      <td>EG1</td>
      <td>EG2</td>
      <td>Pole1</td>
      <td>EG3</td>
      <td>Pole2</td>
      <td>UF1</td>
    </tr>
    <tr>
      <td>Zone poser</td>
      <td>non</td>
      <td>oui</td>
      <td> </td>
      <td>non</td>
      <td> </td>
      <td> </td>
    </tr>
    <tr>
      <td>Date dernière maj</td>
      <td>2022-10-10T12:00:00.00</td>
      <td>2022-10-12T12:00:00.00</td>
      <td>2022-10-11T12:00:00.00</td>
      <td>2022-10-13T12:00:00.00</td>
      <td>2022-10-11T12:00:00.00</td>
      <td>2022-10-17T12:00:00.00</td>
    </tr>
    <tr>
      <td>Catégorie EG</td>
      <td> </td>
      <td> </td>
      <td> </td>
      <td>606 DAC</td>
      <td> </td>
      <td> </td>
    </tr>
  </tbody>
</table>

<table class="table table-bordered">
  <thead>
    <tr>
      <th colspan="4"><center>Practitioner Role v2.4</center></th>
    </tr>   
  </thead>
  <tbody>
    <tr>
      <td>ID</td>
      <td>PR1</td>
      <td>PR2</td>
      <td>PR3</td>
    </tr>
    <tr>
      <td>Exercice</td>
      <td>Exercice1</td>
      <td>Exercice2</td>
      <td>Exercice3</td>
    </tr>
    <tr>
      <td>Situation</td>
      <td>Situation1</td>
      <td>Situation2</td>
      <td>Situation3</td>
    </tr>
    <tr>
      <td>Date dernière maj</td>
      <td>2022-10-21T12:00:00.00</td>
      <td>2022-10-20T12:00:00.00</td>
      <td>2022-10-30T12:00:00.00</td>
    </tr>
  </tbody>
</table>

<table class="table table-bordered">
  <thead>
    <tr>
      <th colspan="4"><center>Practitioner v2.4</center></th>
    </tr>   
  </thead>
  <tbody>
    <tr>
      <td>ID</td>
      <td>PRO1</td>
      <td>PRO2</td>
      <td>PRO3</td>
    </tr>
    <tr>
      <td>Date dernière maj</td>
      <td>2022-10-21T12:00:00.00</td>
      <td>2022-10-20T12:00:00.00</td>
      <td>2022-10-30T12:00:00.00</td>
    </tr>
  </tbody>
</table>

[^1]: [https://www.hl7.org/fhir/http.html#search](https://www.hl7.org/fhir/http.html#search) et
    [https://www.hl7.org/fhir/http.html#general](https://www.hl7.org/fhir/http.html#general)
    
[^2]: [https://www.hl7.org/fhir/bundle.html](https://www.hl7.org/fhir/bundle.html)
    
[^3]: [https://www.hl7.org/fhir/operationoutcome.html](https://www.hl7.org/fhir/operationoutcome.html)
    
[^4]: [https://www.hl7.org/fhir/search.html#chaining](https://www.hl7.org/fhir/search.html#chaining)
    
[^5]: [http://hl7.org/fhir/location.html#positional](http://hl7.org/fhir/location.html#positional)
    
[^6]: [https://www.hl7.org/fhir/search.html#chaining](https://www.hl7.org/fhir/search.html#chaining)
    
[^7]: [https://www.hl7.org/fhir/search.html#chaining](https://www.hl7.org/fhir/search.html#chaining)
