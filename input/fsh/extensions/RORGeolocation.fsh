Extension: RORGeolocation
Parent: $geolocation
Id: ror-geolocation
* ^context.type = #element
* ^context.expression = "Address"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    geodicSystem 1..1 and
    reliablePosition 0..*
* extension[geodicSystem].value[x] only string
* extension[geodicSystem].value[x] 1..1
* extension[reliablePosition].value[x] only boolean