Instance: ror-sp-healthcareservice-patient-type
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-healthcareservice-patient-type"
* version = "2.4"
* name = "RORHealthcareServiceSupportedPatientType"
* status = #active
* date = "2022-06-09"
* publisher = "ANS"
* description = "Paramètre de recherche décrivant le public pris en charge"
* code = #supported-patient-type
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type').extension(url='supportedPatientInfo').valueCodeableConcept"