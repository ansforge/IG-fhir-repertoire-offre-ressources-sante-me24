Instance: ror-healthcareservice-age-range-low
InstanceOf: SearchParameter
Usage: #definition
* url = "http://esante.gouv.fr/fhir/ror/SearchParameter/ror-sp-healthcareservice-age-range-low"
* version = "1.0"
* name = "RORHealthcareServiceAgeRangeLow"
* status = #active
* date = "2022-06-09T00:00:00+02:00"
* publisher = "ANS"
* description = "Paramètre de recherche décrivant l'age minimum de la patientèle"
* code = #age-range-low
* base = #HealthcareService
* type = #quantity
* expression = "HealthcareService.extension.where(url = 'http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/ror-healthcareservice-patient-type').extension(url = 'ageRange').valueRange.low"
* comparator[0] = #eq
* comparator[+] = #ne
* comparator[+] = #gt
* comparator[+] = #lt
* comparator[+] = #ge
* comparator[+] = #le
* comparator[+] = #sa
* comparator[+] = #eb
* comparator[+] = #ap