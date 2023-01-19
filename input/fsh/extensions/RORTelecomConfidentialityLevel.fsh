Extension: RORTelecomConfidentialityLevel
Id: ror-telecom-confidentiality-level
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-07-01"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Organization.contact.telecom"
* value[x] only CodeableConcept
* value[x] from $JDV-J222-NiveauConfidentialite-ROR (required)
* value[x] ^binding.description = "Binding JDV-J222-NiveauConfidentialite-ROR"