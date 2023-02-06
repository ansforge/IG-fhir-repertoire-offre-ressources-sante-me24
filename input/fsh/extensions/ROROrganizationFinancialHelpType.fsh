Extension: ROROrganizationFinancialHelpType
Id: ror-organization-financial-help-type
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-06-29"

* ^context.type = #element
* ^context.expression = "Organization"
* value[x] only CodeableConcept
* value[x] from $JDV-J31-AideFinanciere-ROR (required)