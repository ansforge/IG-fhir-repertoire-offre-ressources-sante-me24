Extension: RORPractitionerRoleHomeVisit
Id: ror-practitionerrole-home-visit
Description: "Extension créée dans le cadre du ROR"
* ^date = "2022-06-30"

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ..1
* value[x] only boolean