Extension: ROR_Telecom_Usage
Id: ror-telecom-usage
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-07-08"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "ContactPoint"
//* url = "http://esante.gouv.fr/fhir/ror/StructureDefinition/ror-telecom-usage" (exactly)
* value[x] 1..
* value[x] only string