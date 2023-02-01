Extension: RORHealthCareServiceTypeActivity
Id: ror-healthcareservice-type-activity
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-07-08"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only CodeableConcept
* value[x] from $JDV-J20-ChampActivite-ROR (required)