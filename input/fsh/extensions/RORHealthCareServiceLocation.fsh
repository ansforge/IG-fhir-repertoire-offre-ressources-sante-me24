Extension: RORHealthCareServiceLocation
Id: ror-healthcareservice-location
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "HealthcareService.location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    name 0..* and
    description 0..* and
    status 0..*
* extension[name] ^min = 0
* extension[name].value[x] only string
* extension[description] ^min = 0
* extension[description].value[x] only string
* extension[status] ^min = 0
* extension[status].value[x] only CodeableConcept
* extension[status].value[x] from $JDV-J224-StatutLieu-ROR (required)