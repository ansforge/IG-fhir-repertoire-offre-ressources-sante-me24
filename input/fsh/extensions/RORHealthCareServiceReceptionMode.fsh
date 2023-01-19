Extension: RORHealthCareServiceReceptionMode
Id: ror-healthcareservice-reception-mode
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-07-08"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] 1..
* value[x] only boolean