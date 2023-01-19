Extension: RORHealthcareServicePatientType
Id: ror-healthcareservice-patient-type
Description: "Extension créée dans le cadre du ROR"
* ^version = "1.0"
* ^date = "2022-06-30"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "HealthcareService"
* . ..1
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    supportedPatientInfo 0..* and
    ageRange 1..1
* extension[supportedPatientInfo] ^min = 0
* extension[supportedPatientInfo].value[x] 1..
* extension[supportedPatientInfo].value[x] only CodeableConcept
* extension[supportedPatientInfo].value[x] from $JDV-J29-PublicPrisEnCharge-ROR (required)
* extension[supportedPatientInfo].value[x] ^binding.description = "Supported patient type"
* extension[supportedPatientInfo].value[x].coding.system = "https://mos.esante.gouv.fr/NOS/TRE_R239-PublicPrisEnCharge/FHIR/TRE-R239-PublicPrisEnCharge" (exactly)
* extension[ageRange].value[x] 1..
* extension[ageRange].value[x] only Range
* extension[ageRange].value[x].low 1..
* extension[ageRange].value[x].high 1..