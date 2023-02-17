Instance: ror-sp-healthcareservice-reception-mode
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceReceptionMode"
* description = "Paramètre de recherche permettant de pointer sur l'accueil séquentiel accepté"
* code = #reception-mode
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-reception-mode').valueBoolean"