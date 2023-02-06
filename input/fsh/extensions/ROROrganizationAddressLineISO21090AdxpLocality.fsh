Extension: ROROrganizationAddressLineISO21090AdxpLocality
Id: ror-organization-address-line-iso-21090-adxp-locality
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-06-30"

* ^context[0].type = #element
* ^context[=].expression = "Organization.address.line"
* ^context[+].type = #element
* ^context[=].expression = "Address.line"
* value[x] only string