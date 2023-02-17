Instance: ror-sp-healthcareservice-equipment-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceEquipmentType"
* description = "Paramètre de recherche décrivant le type d'équipement de l'unité élémentaire"
* code = #equipment-type
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-equipement').extension(url = 'equipmentType').valueCodeableConcept"