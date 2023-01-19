Extension: ROROrganizationAddressLineISO21090AdxpLocality
Id: ror-organization-address-line-iso-21090-adxp-locality
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-06-30"
* ^publisher = "ANS"
* ^context[0].type = #element
* ^context[=].expression = "Organization.address.line"
* ^context[+].type = #element
* ^context[=].expression = "Address.line"
* value[x] only string