Instance: ror-sp-code-region
InstanceOf: SearchParameter
Usage: #definition
* name = "RORLocationCodeRegion"
* status = #active
* date = "2022-08-04T00:00:00+02:00"

* description = "Paramètre de recherche permettant de pointer sur la spécialité ordinale"
* code = #code-region
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-code-region').valueCoding"