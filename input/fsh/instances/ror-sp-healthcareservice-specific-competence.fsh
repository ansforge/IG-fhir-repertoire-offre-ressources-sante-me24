Instance: ror-sp-healthcareservice-specific-competence
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-healthcareservice-specific-competence"
* version = "2.4"
* name = "RORHealthcareServiceSpecificCompetence"
* status = #active
* date = "2022-08-04T00:00:00+02:00"
* publisher = "ANS"
* description = "Paramètre de recherche permettant de pointer sur la compétence spécifique"
* code = #specific-competence
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-healthcareservice-competence-ressource').extension(url='specificCompetence').valueCode"