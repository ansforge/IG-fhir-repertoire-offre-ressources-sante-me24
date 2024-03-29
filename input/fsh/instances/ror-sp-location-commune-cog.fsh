Instance: ror-sp-location-commune-cog
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPLocationCommuneCOG"
* description = "Paramètre de recherche permettant d'indiquer s'il y a une zone poser sur le site concerné"
* code = #commune-cog
* base = #Location
* type = #token
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror24/StructureDefinition/ror-commune-cog').valueCodeableConcept"