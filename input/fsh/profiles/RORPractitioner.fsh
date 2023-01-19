Profile: RORPractitioner
Parent: Practitioner
Id: ror-practitioner
Description: "Profil créée dans le cadre du ROR"
* ^status = #active
* ^publisher = "ANS"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains $mailboxMSS named mailBoxMSS 0..1
* extension[mailBoxMSS] ^isModifier = false
* identifier 1..1
* name.suffix ..1
* name.suffix from $StructureDefinition (required)
* telecom ..1
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
//* telecom.extension contains ROR_Telecom_Usage named usage 0..1
* telecom.extension contains
    ROR_Telecom_Usage named usage 0..1 and
    RORConfidentialityLevel named ror-confidentiality-level 1..1 and
    RORCommunicationChannel named ror-communication-channel 1..1
* telecom.extension[usage] ^isModifier = false
//* telecom.extension[ror-confidentiality-level] only RORConfidentialityLevel
//* telecom.extension[ror-confidentiality-level] ^sliceName = "ror-confidentiality-level"
* telecom.extension[ror-confidentiality-level] ^isModifier = false
//* telecom.extension[ror-communication-channel] only RORCommunicationChannel
//* telecom.extension[ror-communication-channel] ^sliceName = "ror-communication-channel"
* telecom.extension[ror-communication-channel] ^isModifier = false