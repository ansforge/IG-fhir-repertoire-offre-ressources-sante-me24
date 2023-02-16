Extension: RORHealthcareServiceCapacityReceptionCrisis
Id: ror-healthcareservice-capacity-reception-crisis
Description: "Extension créée dans le cadre du ROR"
* ^context[0].type = #element
* ^context[=].expression = "HealthcareService"
* ^context[+].type = #element
* ^context[=].expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    T0CrisisCapacity 1..1 and
    T60CrisisCapacity 1..1
* extension[T0CrisisCapacity].value[x] only integer
* extension[T60CrisisCapacity].value[x] only integer
