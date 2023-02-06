Extension: RORHealthCareServiceCareMode
Id: ror-healthcareservice-care-mode
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-08"

* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only CodeableConcept
* value[x] from $JDV-J19-ModePriseEnCharge-ROR (required)