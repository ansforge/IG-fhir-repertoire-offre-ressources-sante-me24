Extension: RORContactTelecomUsage
Id: ror-contact-telecom-usage
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-07-01"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Organization.contact.telecom"
* value[x] only string