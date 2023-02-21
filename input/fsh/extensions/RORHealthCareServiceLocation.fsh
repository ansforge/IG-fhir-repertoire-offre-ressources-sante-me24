Extension: RORHealthcareServiceLocation
Id: ror-healthcareservice-location
Description: "Extension créée dans le cadre du ROR"
* ^context.type = #element
* ^context.expression = "HealthcareService.location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    name 0..* and
    description 0..* and
    status 0..*
* extension[name].value[x] only string
* extension[description].value[x] only string
* extension[status].value[x] only CodeableConcept
* extension[status].value[x] from $JDV-J224-StatutLieu-ROR (required)