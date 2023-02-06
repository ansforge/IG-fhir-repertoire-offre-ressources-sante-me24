Extension: RORHealthCareServiceReceptionMode
Id: ror-healthcareservice-reception-mode
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-08"

* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] 1..
* value[x] only boolean