Extension: ROROrganizationClosingType 
Id: ror-organization-closing-type  
Description: "Type de fermeture de l'entité juridique, au sens des règles de gestion du SI FINESS (par exemple, fermeture définitive), obligatoire lors de la fermeture de l'entité." 
* ^context.type = #element
* ^context.expression = "Organization"  
* value[x] only CodeableConcept
* value[x] from $JDV-J201-TypeFermeture-ROR (required)
