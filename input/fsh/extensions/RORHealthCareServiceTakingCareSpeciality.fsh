Extension: RORHealthcareServiceTakingCareSpeciality
Id: ror-healthcareservice-taking-care-speciality
Description: "Extension créée dans le cadre du ROR"


* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only CodeableConcept
* value[x] from $JDV-J35-SpecialisationDePriseEnCharge-ROR (required)
