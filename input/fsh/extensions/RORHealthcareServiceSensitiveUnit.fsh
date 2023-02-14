Extension: RORHealthcareServiceSensitiveUnit
Id: ror-healthcareservice-sensitive-unit
Description: "Extension créée dans le cadre du ROR"
* ^version = "1.0"


* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] 1..1
* value[x] only boolean