Extension: RORCareWithoutPatientApproval
Id: ror-care-without-patient-approval
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-04"

* ^context.type = #element
* ^context.expression = "Organization"
* . ..1
* value[x] only boolean