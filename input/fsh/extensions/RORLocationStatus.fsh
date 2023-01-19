Extension: RORLocationStatus
Id: ror-location-status
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-06-30"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Location"
* . ..1
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding from $JDV-J224-StatutLieu-ROR (required)
* value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R203-StatutLieu/FHIR/TRE-R203-StatutLieu" (exactly)