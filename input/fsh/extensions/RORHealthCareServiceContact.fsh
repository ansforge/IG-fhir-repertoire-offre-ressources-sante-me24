Extension: RORHealthCareServiceContact
Id: ror-healthcareservice-contact
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    name 0..* and
    fonctionContact 0..* and
    purpose 0..* and
    description 0..* and
    confidentialityLevel 1..1 and
    telecom 0..*
* extension[name] ^min = 0
* extension[name].value[x] only HumanName
* extension[fonctionContact] ^min = 0
* extension[fonctionContact].value[x] only CodeableConcept
* extension[fonctionContact].value[x] from $JDV-J220-FonctionContact-ROR (required)
* extension[purpose] ^min = 0
* extension[purpose].value[x] only CodeableConcept
* extension[purpose].value[x] from $JDV-J221-NatureContact-ROR (required)
* extension[description] ^min = 0
* extension[description].value[x] only string
* extension[confidentialityLevel].value[x] only CodeableConcept
* extension[confidentialityLevel].value[x] from $JDV-J222-NiveauConfidentialite-ROR (required)
* extension[telecom] ^min = 0
* extension[telecom].value[x] only ContactPoint
//* value[x] ^slicing.discriminator.type = #type
//* value[x] ^slicing.discriminator.path = "$this"
//* value[x] ^slicing.rules = #open