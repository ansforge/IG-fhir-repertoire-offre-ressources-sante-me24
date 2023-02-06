Extension: RORPractitionerRoleUnitExerciseMode
Id: ror-practitionerrole-unit-exercise-mode
Description: "Extension créée dans le cadre du ROR"
* ^version = "1.0"
* ^date = "2022-06-30"

* ^context.type = #element
* ^context.expression = "PractitionerRole"
* . ..1
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding from $JDV-J217-ModeExercice-ROR (required)
* value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice" (exactly)