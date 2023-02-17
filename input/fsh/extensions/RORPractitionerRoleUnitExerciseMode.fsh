Extension: RORPractitionerRoleUnitExerciseMode
Id: ror-practitionerrole-unit-exercise-mode
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x].coding from $JDV-J217-ModeExercice-ROR (required)
* value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice" (exactly)