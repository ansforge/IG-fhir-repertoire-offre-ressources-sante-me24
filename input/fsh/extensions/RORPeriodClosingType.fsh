Extension: RORPeriodClosingType
Id: ror-period-closing-type
Description: "Extension créée dans le cadre du ROR"



* ^context.type = #element
* ^context.expression = "Period"
* value[x] only CodeableConcept
* value[x].coding from $JDV-J201-TypeFermeture-ROR (required)
* value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R286-TypeFermeture/FHIR/TRE-R286-TypeFermeture" (exactly)