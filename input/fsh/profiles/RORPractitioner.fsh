Profile: RORPractitioner
Parent: Practitioner
Id: ror-practitioner
Description: "Profil créée dans le cadre du ROR"


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains $mailboxMSS named mailBoxMSS 0..1
* extension[mailBoxMSS] ^isModifier = false
* identifier 1..1
* name.suffix ..1
* name.suffix from $JDV-J207-Civilite-ROR (required)
* telecom ..1
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORConfidentialityLevel named ror-confidentiality-level 1..* and
    RORCommunicationChannel named ror-communication-channel 1..
* telecom.extension[ror-telecom-usage] ^isModifier = false
* telecom.extension[ror-confidentiality-level] ^isModifier = false
* telecom.extension[ror-communication-channel] ^isModifier = false