Extension: RORContactFonctionContact
Id: ror-contact-fonction-contact
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-07-01"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Organization.contact"
* value[x] only CodeableConcept
* value[x] from $JDV-J220-FonctionContact-ROR (required)