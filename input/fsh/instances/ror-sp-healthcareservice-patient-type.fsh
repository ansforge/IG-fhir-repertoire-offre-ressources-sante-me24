Instance: ror-sp-healthcareservice-patient-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceSupportedPatientType"
* description = "Paramètre de recherche décrivant le public pris en charge"
* code = #supported-patient-type
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-patient-type').extension(url='supportedPatientInfo').valueCodeableConcept"