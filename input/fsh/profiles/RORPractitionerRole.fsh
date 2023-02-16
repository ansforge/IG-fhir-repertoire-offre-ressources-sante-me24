Profile: RORPractitionerRole
Parent: PractitionerRole
Id: ror-practitionerrole
Description: "Profil créée dans le cadre du ROR"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $practitionerRole-name named practitionerRole-name 0..1 and
    RORPractitionerRoleUnitExerciseMode named ror-practitionerrole-unit-exercise-mode 1..* and
    $practitionerRole-vitaleAccepted named practitionerRole-vitaleAccepted 0..1 and
    $practitionerRole-hasCAS named practitionerRole-hasCAS 0..1 and
    RORPractitionerRoleHomeVisit named ror-practitionerrole-home-visit 0..* and
    $practitionerRole-contracted named practitionerRole-contracted 0..1
* extension[practitionerRole-name] ^isModifier = false
* extension[ror-practitionerrole-unit-exercise-mode] ^isModifier = false
* extension[practitionerRole-vitaleAccepted] ^isModifier = false
* extension[practitionerRole-hasCAS] ^isModifier = false
* extension[ror-practitionerrole-home-visit] ^isModifier = false
* extension[practitionerRole-contracted] ^isModifier = false
* practitioner 1..
* code 1..1
* code.coding from $JDV-J229-ProfessionSante-ROR (required)
* code.coding.system = "https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante" (exactly)
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty contains
    ttpeSavoirFaireR04 1..1 and
    specialiteOrdinaleR38 0..1 and
    competenceR39 0..1 and
    competenceExclusiveR40 0..1 and
    orientationParticuliereG13 0..1 and
    capaciteSavoirFaireR43 0..1 and
    qualificationPACR44 0..1 and
    DESCnonQualifiantR42 0..1 and
    droitExerciceComplementaireR97 0..1 and
    competenceSpecifiqueR243 0..*
* specialty[ttpeSavoirFaireR04].coding from $JDV-J209-TypeSavoirFaire-ROR (required)
* specialty[ttpeSavoirFaireR04].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire" (exactly)
* specialty[specialiteOrdinaleR38].coding from $JDV-J210-SpecialiteOrdinale-ROR (required)
* specialty[specialiteOrdinaleR38].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale" (exactly)
* specialty[competenceR39].coding from $JDV-J232-Competence-ROR (required)
* specialty[competenceR39].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R39-Competence/FHIR/TRE-R39-Competence" (exactly)
* specialty[competenceExclusiveR40].coding from $JDV-J211-CompetenceExclusive-ROR (required)
* specialty[competenceExclusiveR40].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R40-CompetenceExclusive/FHIR/TRE-R40-CompetenceExclusive" (exactly)
* specialty[orientationParticuliereG13].coding from $JDV-J212-OrientationParticuliere-ROR (required)
* specialty[orientationParticuliereG13].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_G13-OrientationParticuliere/FHIR/TRE-G13-OrientationParticuliere" (exactly)
* specialty[capaciteSavoirFaireR43].coding from $JDV-J213-CapaciteSavoirFaire-ROR (required)
* specialty[capaciteSavoirFaireR43].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R43-CapaciteSavoirFaire/FHIR/TRE-R43-CapaciteSavoirFaire" (exactly)
* specialty[qualificationPACR44].coding from $JDV-J214-QualificationPAC-ROR (required)
* specialty[qualificationPACR44].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R44-QualificationPAC/FHIR/TRE-R44-QualificationPAC" (exactly)
* specialty[DESCnonQualifiantR42].coding from $JDV-J215-DESCnonQualifiant-ROR (required)
* specialty[DESCnonQualifiantR42].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R42-DESCnonQualifiant/FHIR/TRE-R42-DESCnonQualifiant" (exactly)
* specialty[droitExerciceComplementaireR97].coding from $JDV-J216-DroitExerciceCompl-ROR (required)
* specialty[droitExerciceComplementaireR97].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R97-DroitExerciceCompl/FHIR/TRE-R97-DroitExerciceCompl" (exactly)
* specialty[competenceSpecifiqueR243].coding from $JDV-J33-CompetenceSpecifique-ROR (required)
* specialty[competenceSpecifiqueR243].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R243-CompetenceSpecifique/FHIR/TRE-R243-CompetenceSpecifique" (exactly)
* healthcareService 1..1
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORCommunicationChannel named ror-communication-channel 1..* and
    RORConfidentialityLevel named ror-confidentiality-level 1..* and
    RORTelecomUsage named ror-telecom-usage 0..1
* telecom.extension[ror-communication-channel] ^isModifier = false
* telecom.extension[ror-confidentiality-level] ^isModifier = false
* telecom.extension[ror-telecom-usage] ^isModifier = false
* availableTime.extension ^slicing.discriminator.type = #value
* availableTime.extension ^slicing.discriminator.path = "url"
* availableTime.extension ^slicing.rules = #open
* availableTime.extension contains
    RORAvailableTimeEffectiveOpeningClosingDate named ror-available-time-effective-opening-closing-date 0..* and
    RORAvailableTimeNumberDaysofWeek named ror-available-time-number-days-of-week 0..* and
    RORAvailableTimeTypeOfTime named ror-available-time-type-of-time 0..*
* availableTime.extension[ror-available-time-effective-opening-closing-date] ^isModifier = false
* availableTime.extension[ror-available-time-number-days-of-week] ^isModifier = false
* availableTime.extension[ror-available-time-type-of-time] ^isModifier = false