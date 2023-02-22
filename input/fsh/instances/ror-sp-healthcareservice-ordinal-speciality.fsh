Instance: ror-sp-healthcareservice-ordinal-speciality
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORHealthcareServiceOrdinalSpeciality"
* description = "Paramètre de recherche permettant de pointer sur la spécialité ordinale"
* code = #ordinal-speciality
* base = #HealthcareService
* type = #token
* expression = "HealthcareService.extension.where(url='http://interop.esante.gouv.fr/ig/fhir/ror24/StructureDefinition/ror-healthcareservice-competence-ressource').extension(url='ordinalSpeciality').valueCode"