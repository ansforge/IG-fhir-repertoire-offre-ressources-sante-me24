Extension: RORCodeRegion
Id: ror-code-region
Description: "Extension créée dans le cadre du ROR"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only Coding
* value[x].system 1..
* value[x].system = "https://mos.esante.gouv.fr/NOS/JDV_J237-RegionOM-ROR/FHIR/JDV_J237-RegionOM-ROR" (exactly)