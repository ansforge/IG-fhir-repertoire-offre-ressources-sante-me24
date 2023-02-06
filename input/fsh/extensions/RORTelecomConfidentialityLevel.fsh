Extension: RORTelecomConfidentialityLevel
Id: ror-telecom-confidentiality-level
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-01"

* ^context.type = #element
* ^context.expression = "Organization.contact.telecom"
* value[x] only CodeableConcept
* value[x] from $JDV-J222-NiveauConfidentialite-ROR (required)
* value[x] ^binding.description = "Binding JDV-J222-NiveauConfidentialite-ROR"