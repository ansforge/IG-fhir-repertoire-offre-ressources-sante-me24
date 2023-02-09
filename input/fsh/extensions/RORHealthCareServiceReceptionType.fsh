Extension: RORHealthcareServiceReceptionType
Id: ror-healthcareservice-reception-type
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-08"

* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains type 0..1
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] from $JDV-J30-TemporaliteAccueil-ROR (required)
