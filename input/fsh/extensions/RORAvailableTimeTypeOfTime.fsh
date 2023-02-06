Extension: RORAvailableTimeTypeOfTime
Id: ror-available-time-type-of-time
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-06-30"

* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.availableTime"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.availableTime"
* . ..1
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $JDV-J41-TypeHoraire-ROR (required)
* value[x] ^binding.description = "Type of time"
* value[x].coding from $JDV-J41-TypeHoraire-ROR (required)
* value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R252-TypeHoraire/FHIR/TRE-R252-TypeHoraire" (exactly)