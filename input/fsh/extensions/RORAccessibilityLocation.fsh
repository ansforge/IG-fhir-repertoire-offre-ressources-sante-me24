Extension: RORAccessibilityLocation
Id: ror-accessibility-location
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-06-29"

* ^context.type = #element
* ^context.expression = "Organization"
* . ..1
* value[x] only CodeableConcept
* value[x] from $JDV-J50-AccessibiliteLieu-ROR (required)