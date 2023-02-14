Extension: RORHealthcareServiceReceptionType
Id: ror-healthcareservice-reception-type
Description: "Extension créée dans le cadre du ROR"


* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only CodeableConcept
* value[x] from $JDV-J30-TemporaliteAccueil-ROR (required)
