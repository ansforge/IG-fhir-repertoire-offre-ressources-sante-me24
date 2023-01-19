Extension: RORCareWithoutPatientApproval
Id: ror-care-without-patient-approval
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-07-04"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "Organization"
* . ..1
* value[x] only boolean