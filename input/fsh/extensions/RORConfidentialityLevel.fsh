Extension: RORConfidentialityLevel
Id: ror-confidentiality-level
Description: "Extension créée dans le cadre du ROR"


* ^context[0].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "BackboneElement"

* value[x] 1..1
* value[x] only CodeableConcept
* value[x].coding from $JDV-J222-NiveauConfidentialite-ROR (required)
* value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/TRE-R283-NiveauConfidentialite" (exactly)