Instance: ror-healthcareservice-equipment-type
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-healthcareservice-equipment-type"
* version = "1.0"
* name = "RORHealthcareServiceEquipmentType"
* status = #active
* date = "2022-06-09T00:00:00+02:00"
* publisher = "ANS"
* description = "Paramètre de recherche décrivant le type d'équipement de l'unité élémentaire"
* code = #equipment-type
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url = 'http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ror-healthcareservice-equipement').extension(url = 'equipmentType').valueCodeableConcept"