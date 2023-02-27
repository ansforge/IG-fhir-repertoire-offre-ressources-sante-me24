Instance: ror-sp-code-region
InstanceOf: SearchParameter
Usage: #definition
* name = "RORLocationCodeRegion"
* status = #active
* description = "Paramètre de recherche permettant de pointer sur la spécialité ordinale"
* code = #code-region
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror24/StructureDefinition/ror-code-region').valueCoding"