Extension: RORCommuneCog
Id: ror-commune-cog
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-08"

* ^context.type = #element
* ^context.expression = "Address"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains code 0..1
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] from $JDV-J230-CommuneOM-ROR (required)
