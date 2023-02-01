Instance: ror-sp-organization-drop-zone
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-organization-drop-zone"
* version = "2.4"
* name = "RORSPOrganizationDropZone"
* status = #active
* date = "2022-08-04T00:00:00+02:00"
* publisher = "ANS"
* description = "Paramètre de recherche permettant d'indiquer s'il y a une zone poser sur le site concerné"
* code = #drop-zone
* base = #Organization
* type = #token
* expression = "Organization.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-drop-zone').valueBoolean"