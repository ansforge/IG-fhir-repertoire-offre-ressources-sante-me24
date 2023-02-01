Instance: ror-sp-healthcareservice-psychiatric-sector
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-healthcareservice-psychiatric-sector"
* version = "2.4"
* name = "RORHealthcareServicePsychiatricSector"
* status = #active
* date = "2022-06-09T00:00:00+02:00"
* publisher = "ANS"
* description = "Paramètre de recherche décrivrant le secteur psychiatrique de l'unité élémentaire"
* code = #psychiatric-sector
* base = #HealthcareService
* type = #string
* expression = "HealthcareService.extension.where(url = 'http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-healthcareservice-psychiatric-sector').valueString"