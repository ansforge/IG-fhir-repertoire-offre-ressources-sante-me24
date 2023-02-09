Extension: RORHealthcareServiceTakingCareSpeciality
Id: ror-healthcareservice-taking-care-speciality
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-08"

* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains speciality 0..1
* extension[speciality].value[x] only CodeableConcept
* extension[speciality].value[x] from $JDV-J35-SpecialisationDePriseEnCharge-ROR (required)
