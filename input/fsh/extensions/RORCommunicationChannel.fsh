Extension: RORCommunicationChannel
Id: ror-communication-channel
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-06-30"

* ^context.type = #element
* ^context.expression = "ContactPoint"
* . ..1
* value[x] 1..
* value[x] only CodeableConcept
* value[x].coding from $JDV-J225-CanalCommunication-ROR (required)
* value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication" (exactly)