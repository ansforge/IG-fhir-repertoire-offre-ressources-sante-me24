Extension: RORTelecomUsage
Id: ror-telecom-usage
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-08"

* ^context.type = #element
* ^context.expression = "ContactPoint"
* value[x] 1..
* value[x] only string