Instance: ror-code-region
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-code-region"
* name = "RORLocationCodeRegion"
* status = #active
* date = "2022-08-04T00:00:00+02:00"
* publisher = "ANS"
* description = "Paramètre de recherche permettant de pointer sur la spécialité ordinale"
* code = #code-region
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ror-code-region').valueCoding"