Instance: ror-serveur
InstanceOf: CapabilityStatement
Usage: #definition

* name = "RORServeur"
* status = #active
* title = "ROR-RORServeur"
* experimental = false
* date = "2023-01-12T14:27:51+01:00"
* description = "Système ROR National Le Répertoire Opérationnel des Ressources (ROR) est le gisement de données qui décrit les offres de santé au niveau national."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "http://interop.esante.gouv.fr/fhir/ig/ror24/ImplementationGuide/ror-ig"
* rest.mode = #server
* rest.documentation = "Serveur national du ROR"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest.resource[0].type = #HealthcareService
* rest.resource[=].profile = "http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-HealthcareService"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchParam[0].name = "supported-patient-type"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-healthcareservice-patient-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Le public pris en charge précise si une unité élémentaire d'un établissement ou d'un service du champ d'activité médico-social accueille des personnes âgées en perte d'autonomie et/ou des personnes en situation de handicap"
* rest.resource[=].searchParam[+].name = "age-range-low"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-healthcareservice-age-range-low"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "Borne minimum (inclus) de la fourchette d’âge pour laquelle une offre est recherchée."
* rest.resource[=].searchParam[+].name = "age-range-high"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-healthcareservice-age-range-high"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "Borne maximum (inclus) de la fourchette d’âge pour laquelle une offre est recherchée."
* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Organisation interne fournissant l'offre"
* rest.resource[=].searchParam[+].name = "characteristic"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-characteristic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "characteristique de l'offre"
* rest.resource[=].searchParam[+].name = "service-category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "La catégorie d'organisation caractérise la nature particulière de l’offre de santé portée par l’UE recherchée, offre qui se distingue par un agrément, un personnel spécialement formé, un environnement particulièrement adapté à l'état de santé des patients"
* rest.resource[=].searchParam[+].name = "psychiatric-sector"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-healthcareservice-psychiatric-sector"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Le secteur de psychiatrie (ou sectorisation) correspond à une aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur."
* rest.resource[=].searchParam[+].name = "reception-mode"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-healthcareservice-reception-mode"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "L’indicateur précise si l’UE accepte d’accueillir des personnes en situation de handicap de façon séquentielle c'est à dire sur une partie de la semaine"
* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Un champ d’activité indique le domaine dans lequel s'inscrit l'offre"
* rest.resource[=].searchParam[+].name = "profession"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-healthcareservice-profession"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "La compétence ressource correspond à une profession exercée par au moins une personne présente dans l’unité."
* rest.resource[=].searchParam[+].name = "ordinal-speciality"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-healthcareservice-ordinal-speciality"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "La compétence ressource correspond à une spécialité ordinale exercée par au moins une personne présente dans l’unité."
* rest.resource[=].searchParam[+].name = "specific-competence"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-healthcareservice-specific-competence"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "La compétence spécifique correspond à une capacité ou connaissance reconnue d’une personne ressource de l’unité."
* rest.resource[=].searchParam[+].name = "equipment-type"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-healthcareservice-equipment-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Un équipement spécifique correspond à une ressource matérielle médicotechnique spécialisée, qui permet la réalisation d’une activité de soins."
* rest.resource[=].searchParam[+].name = "specialty"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-specialty"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Une activité opérationnelle est un ensemble cohérent d’actions et de pratiques mises en œuvre pour répondre aux besoins en Santé de la personne"
* rest.resource[+].type = #Organization
* rest.resource[=].profile = "http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-Organization"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "parametre de recherche pour Identification nationale de l'Entité Géographique définie dans le CI-SIS.et Numéro FINESS de l'entité géographique."
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom de l'organisation interne."
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Nom de l'organisation interne."
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = "http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-PractitionerRole"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchParam[0].name = "service"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-service"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Reference pour la recherche vers le HealthcareService"
* rest.resource[=].searchParam[+].name = "practitioner"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Reference pour la recherche vers le PractitionerRole"
* rest.resource[+].type = #Location
* rest.resource[=].profile = "http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-Location"
* rest.resource[=].interaction[0].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchParam[0].name = "near"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-near"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Lieux proches du lieu de réalisation de l'offre"
* rest.resource[=].searchParam[+].name = "near-insee-code"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-location-nearINSEECode"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Lieux proches du lieu de réalisation de l'offre via le code COG INSEE"
* rest.resource[=].searchParam[+].name = "code-region"
* rest.resource[=].searchParam[=].definition = "http://interop.esante.gouv.fr/fhir/ig/ror24/SearchParameter/ror-sp-code-region"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code région"