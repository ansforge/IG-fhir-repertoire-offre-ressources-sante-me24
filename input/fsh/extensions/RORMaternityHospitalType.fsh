Extension: RORMaternityHospitalType
Id: ror-maternity-hospital-type
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only code
* value[x] from $JDV-J42-TypeMaternite-ROR (required)