Extension: RORTypeActivity
Id: ror-type-activity
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-04"

* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* value[x] from $JDV-J20-ChampActivite-ROR (required)