Extension: RORAddressStatus
Id: ror-address-status
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-06-30"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Organization.address"
* value[x] only CodeableConcept
* value[x] from $JDV-J224-StatutLieu-ROR (required)