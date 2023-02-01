Instance: ror-sp-healthcareservice-reception-mode
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-healthcareservice-reception-mode"
* version = "2.4"
* name = "RORHealthcareServiceReceptionMode"
* status = #active
* date = "2022-08-04T00:00:00+02:00"
* publisher = "ANS"
* description = "Paramètre de recherche permettant de pointer sur l'accueil séquentiel accepté"
* code = #reception-mode
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url = 'http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-healthcareservice-reception-mode').valueBoolean"