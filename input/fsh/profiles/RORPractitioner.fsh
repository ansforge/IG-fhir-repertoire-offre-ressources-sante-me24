Profile: RORPractitioner
Parent: Practitioner
Id: ror-practitioner
Description: "Profil créé à partir de la ressource Practitioner dans le cadre du ROR"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $mailboxMSS named mailBoxMSS 0..1
* extension[mailBoxMSS] ^isModifier = false
* identifier 1..1
* name.suffix 0..1
* name.suffix from $JDV-J207-Civilite-ROR (required)
* telecom 0..1
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORConfidentialityLevel named ror-confidentiality-level 1..1 and
    RORCommunicationChannel named ror-communication-channel 1..1
* telecom.extension[ror-telecom-usage] ^isModifier = false
* telecom.extension[ror-confidentiality-level] ^isModifier = false
* telecom.extension[ror-communication-channel] ^isModifier = false
* telecom.value 1..1