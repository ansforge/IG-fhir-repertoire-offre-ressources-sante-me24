Extension: ROROrganizationPeriod
Id: ror-organization-period
Parent: $period
Description: "Extension créée dans le cadre du ROR"
* ^date = "2021-03-25T16:52:52.2657+00:00"
* ^context.type = #element
* ^context.expression = "Organization"
* . ..1
* . ^definition = "The date range that this organization should be considered available."
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
* url only uri
