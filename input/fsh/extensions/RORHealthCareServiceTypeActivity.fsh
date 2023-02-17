Extension: RORHealthcareServiceTypeActivity
Id: ror-healthcareservice-type-activity
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only CodeableConcept
* value[x] from $JDV-J20-ChampActivite-ROR (required)