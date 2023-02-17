Extension: RORHealthcareServiceCapacityReception
Id: ror-healthcareservice-capacity-reception
Description: "Extension créée dans le cadre du ROR"
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService"
* ^context[+].type = #element
* ^context[=].expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    placedBedNumber 0..1 and
    availableBedNumber 0..1 and
    availableBedUpdateDate 0..1 and
    placedPlacesNumber 0..1 and
    availablePlacesNumber 0..1 and
    availablePlacesNumberUpdateDate 0..*
* extension[placedBedNumber].value[x] only integer
* extension[availableBedNumber].value[x] only integer
* extension[availableBedUpdateDate].value[x] only date
* extension[placedPlacesNumber].value[x] only integer
* extension[availablePlacesNumber].value[x] only integer
* extension[availablePlacesNumberUpdateDate].value[x] only date
