Extension: RORHealthcareServiceFacilityType
Id: ror-healthcareservice-facility-type
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only CodeableConcept
* value[x] from $JDV-J34-CategorieOrganisation-ROR (required)
