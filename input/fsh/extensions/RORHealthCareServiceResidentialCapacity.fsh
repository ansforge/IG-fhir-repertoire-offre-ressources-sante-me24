Extension: RORHealthcareServiceResidentialCapacity
Id: ror-healthcareservice-residential-capacity
Description: "Extension créée dans le cadre du ROR"
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService"
* ^context[+].type = #element
* ^context[=].expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    residentialType 1..1 and
    residentialNumber 0..1
* extension[residentialType].value[x] only CodeableConcept
* extension[residentialType].value[x] from $JDV-J32-TypeHabitation-ROR (required)
* extension[residentialNumber].value[x] only integer
