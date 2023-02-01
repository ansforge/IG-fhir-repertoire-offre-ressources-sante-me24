Instance: ror-sp-location-commune-cog
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-location-commune-cog"
* version = "2.4"
* name = "RORSPLocationCommuneCOG"
* status = #active
* date = "2022-08-04T00:00:00+02:00"
* publisher = "ANS"
* description = "Paramètre de recherche permettant d'indiquer s'il y a une zone poser sur le site concerné"
* code = #commune-cog
* base = #Location
* type = #token
* expression = "Location.extension.where(url='http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-commune-cog').valueCodeableConcept"