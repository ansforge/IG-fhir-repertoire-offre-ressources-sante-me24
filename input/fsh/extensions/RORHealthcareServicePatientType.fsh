Extension: RORHealthcareServicePatientType
Id: ror-healthcareservice-patient-type
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    supportedPatientInfo 0..* and
    ageRange 1..1
* extension[supportedPatientInfo].value[x] only CodeableConcept
* extension[supportedPatientInfo].value[x] from $JDV-J29-PublicPrisEnCharge-ROR (required)
* extension[supportedPatientInfo].value[x] ^binding.description = "Supported patient type"
* extension[supportedPatientInfo].value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R239-PublicPrisEnCharge/FHIR/TRE-R239-PublicPrisEnCharge" (exactly)
* extension[ageRange].value[x] 1..1
* extension[ageRange].value[x] only Range
* extension[ageRange].value[x].low 1..1
* extension[ageRange].value[x].high 1..1