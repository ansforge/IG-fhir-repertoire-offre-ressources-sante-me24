Extension: RORContactTelecomUsage
Id: ror-contact-telecom-usage
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-01"

* ^context.type = #element
* ^context.expression = "Organization.contact.telecom"
* value[x] only string