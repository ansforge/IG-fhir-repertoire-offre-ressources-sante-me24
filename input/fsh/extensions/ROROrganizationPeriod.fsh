Extension: ROROrganizationPeriod // trouver nom cohérent 
Id: ror-organization-period // trouver id cohérent 
Description: "Extension créée dans le cadre du ROR" // Rajouter description qui rassemblent tous les concepts
* ^context.type = #element
* ^context.expression = "Organization"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0

* extension contains
    closingType 0..1 and
    reopeningDate 0..1 and
    temporalityClosing 0..1
    
* extension[closingType].value[x] only CodeableConcept
* extension[closingType].value[x] from $JDV-J201-TypeFermeture-ROR (required)

* extension[reopeningDate].value[x] only date

* extension[temporalityClosing].value[x] only CodeableConcept
* extension[temporalityClosing].value[x] from $JDV-J185-TypeFermeture-ROR (required)
