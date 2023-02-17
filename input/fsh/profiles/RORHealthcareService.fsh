Profile: RORHealthcareService
Parent: HealthcareService
Id: ror-healthcareservice
Description: "Profil créée dans le cadre du ROR"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORHealthcareServicePatientType named ror-healthcareservice-patient-type 1..* and
    RORHealthcareServicePsychiatricSector named ror-healthcareservice-psychiatric-sector 0..* and
    $mailboxMSS named mailboxMSS 0..* and
    RORHealthcareServiceCompetenceRessource named ror-healthcareservice-competence-ressource 0..1 and
    RORHealthcareServiceEquipement named ror-healthcareservice-equipement 0..* and
    RORHealthcareServiceInterventionZone named ror-healthcareservice-intervention-zone 0..* and
    RORHealthcareServiceSensitiveUnit named ror-healthcareservice-sensitive-unit 1..* and
    RORHealthcareServiceOpeningDate named ror-healthcareservice-opening-date 0..1 and
    RORHealthcareServiceReceptionMode named ror-healthcareservice-reception-mode 0..1 and
    RORHealthcareServiceContact named ror-healthcareservice-contact 0..1
* extension[ror-healthcareservice-patient-type] ^isModifier = false
* extension[ror-healthcareservice-psychiatric-sector] ^isModifier = false
* extension[mailboxMSS] ^isModifier = false
* extension[ror-healthcareservice-competence-ressource] ^isModifier = false
* extension[ror-healthcareservice-equipement] ^isModifier = false
* extension[ror-healthcareservice-intervention-zone] ^isModifier = false
* extension[ror-healthcareservice-sensitive-unit] ^isModifier = false
* extension[ror-healthcareservice-opening-date] ^isModifier = false
* extension[ror-healthcareservice-reception-mode] ^isModifier = false
* extension[ror-healthcareservice-contact] ^isModifier = false
* providedBy 1..1
* category 0..1
* category from $JDV-J34-CategorieOrganisation-ROR (required)
* type 0..1
* type from $JDV-J20-ChampActivite-ROR (required)
* type.coding from $JDV-J20-ChampActivite-ROR (required)
* type.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite" (exactly)
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty contains
    operationalActivity 1..1 and
    operationalActivityFamily 0..1
* specialty[operationalActivity] from $JDV-J17-ActiviteOperationnelle-ROR (required)
* specialty[operationalActivity] ^short = "An operational activity handled by the HealthcareService"
* specialty[operationalActivity] ^definition = "Collection of operational activities handled by the service site. This is more of a medical term."
* specialty[operationalActivity] ^binding.description = "An operational activity that a healthcare service may provide."
* specialty[operationalActivity].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle" (exactly)
* specialty[operationalActivityFamily] from $JDV-J51-FamilleActiviteOperationnelle-ROR (required)
* specialty[operationalActivityFamily] ^short = "Family of operational activities handled by the HealthcareService"
* specialty[operationalActivityFamily] ^definition = "Collection of operational activity families, except Serafin."
* specialty[operationalActivityFamily] ^binding.description = "A family of operationnal activities that a healthcare service may provide."
* specialty[operationalActivityFamily].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R266-FamilleActiviteOperationnelleHorsSerafin/FHIR/TRE-R266-FamilleActiviteOperationnelleHorsSerafin" (exactly)
* location 0..1
* name 1..1
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 and
    RORTelecomUsage named ror-telecom-usage 0..1
* telecom.extension[ror-telecom-confidentiality-level] ^isModifier = false
* telecom.extension[ror-telecom-usage] ^isModifier = false
* telecom.system from $JDV-J221-NatureContact-ROR (required)
* characteristic 0..1
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "coding.system"
* characteristic ^slicing.rules = #open
* characteristic contains
    careMode 1..1 and
    receptionModality 0..1 and
    managementType 0..1 and
    receptionType 0..1 and
    takingCareSpeciality 0..1 and
    annualOpening 0..1 and
    specificAct 0..1 and
    ressourceProfession 0..1 and
    specificCompetence 0..1 and
    expertiseLevel 0..1 and
    temporalityStopService 0..1 and
    outsideOfficeAct 0..0 and
    maternityLevel 0..1
* characteristic[careMode] from $JDV-J222-NiveauConfidentialite-ROR (required)
* characteristic[careMode].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge" (exactly)
* characteristic[receptionModality] from $JDV-J226-ModaliteAccueil-ROR (required)
* characteristic[managementType] from $JDV-J26-ModeGestion-ROR (required)
* characteristic[managementType].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R236-ModeGestion/FHIR/TRE-R236-ModeGestion" (exactly)
* characteristic[receptionType] from $JDV-J30-TemporaliteAccueil-ROR (required)
* characteristic[receptionType].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R240-TemporaliteAccueil/FHIR/TRE-R240-TemporaliteAccueil" (exactly)
* characteristic[takingCareSpeciality] from $JDV-J35-SpecialisationDePriseEnCharge-ROR (required)
* characteristic[takingCareSpeciality].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R245-SpecialisationDePriseEnCharge/FHIR/TRE-R245-SpecialisationDePriseEnCharge" (exactly)
* characteristic[annualOpening] from $JDV-J28-OuvertureAnnuelle-ROR (required)
* characteristic[annualOpening].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R238-OuvertureAnnuelle/FHIR/TRE-R238-OuvertureAnnuelle" (exactly)
* characteristic[specificAct] from $JDV-J16-ActeSpecifique-ROR (required)
* characteristic[specificAct].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique" (exactly)
* characteristic[ressourceProfession] from $JDV-J186-ProfessionRessource-ROR (required)
* characteristic[specificCompetence] from $JDV-J33-CompetenceSpecifique-ROR (required)
* characteristic[specificCompetence].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R243-CompetenceSpecifique/FHIR/TRE-R243-CompetenceSpecifique" (exactly)
* characteristic[expertiseLevel] from $JDV-J227-NiveauExpertise-ROR (required)
* characteristic[expertiseLevel].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R253-TypeMaternite/FHIR/TRE-R253-TypeMaternite" (exactly)
* characteristic[maternityLevel] from $JDV-J42-TypeMaternite-ROR (required)
* availableTime.extension ^slicing.discriminator.type = #value
* availableTime.extension ^slicing.discriminator.path = "url"
* availableTime.extension ^slicing.rules = #open
* availableTime.extension contains
    RORHealthcareServiceOpenClose named ror-healthcareservice-open-close 1..1 and
    RORHealthcareServiceDefinitelyClose named ror-healthcareservice-definitely-close 0..1 and
    RORAvailableTimeEffectiveOpeningClosingDate named ror-available-time-effective-opening-closing-date 0..* and
    RORAvailableTimeNumberDaysofWeek named ror-available-time-number-days-of-week 0..* and
    RORAvailableTimeTypeOfTime named ror-available-time-type-of-time 0..*
* availableTime.extension[ror-healthcareservice-open-close] ^isModifier = false
* availableTime.extension[ror-healthcareservice-definitely-close] ^isModifier = false
* availableTime.extension[ror-available-time-effective-opening-closing-date] ^isModifier = false
* availableTime.extension[ror-available-time-number-days-of-week] ^isModifier = false
* availableTime.extension[ror-available-time-type-of-time] ^isModifier = false