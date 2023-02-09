Extension: ROROrganizationClosingType // trouver nom cohérent 
Id: ror-organization-closing-type // trouver id cohérent 
Description: "Type de fermeture de l'entité juridique, au sens des règles de gestion du SI FINESS (par exemple, fermeture définitive), obligatoire lors de la fermeture de l'entité." // Rajouter description qui rassemblent tous les concepts
* ^context.type = #element
* ^context.expression = "Organization"  
* value[x] only CodeableConcept
* value[x] from $JDV-J201-TypeFermeture-ROR (required)
