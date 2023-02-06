Extension: RORAvailableTimeEffectiveOpeningClosingDate
Id: ror-available-time-effective-opening-closing-date
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-06-30"

* ^context[0].type = #element
* ^context[=].expression = "HealthcareService.availableTime"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.availableTime"
* . ..1
* value[x] 1..
* value[x] only Period