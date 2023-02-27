Instance: ror-sp-healthcareservice-profession
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceProfession"
* description = "Paramètre de recherche permettant de pointer sur la profession"
* code = #profession
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror24/StructureDefinition/ror-healthcareservice-competence-ressource').extension(url='profession').valueCode"