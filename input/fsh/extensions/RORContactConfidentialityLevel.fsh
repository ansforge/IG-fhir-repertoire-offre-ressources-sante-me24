Extension: RORContactConfidentialityLevel
Id: ror-contact-confidentiality-level
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-01"

* ^context.type = #element
* ^context.expression = "Organization.contact"
* value[x] only CodeableConcept
* value[x] from $JDV-J222-NiveauConfidentialite-ROR (required)