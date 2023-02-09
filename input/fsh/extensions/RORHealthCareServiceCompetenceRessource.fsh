Extension: RORHealthcareServiceCompetenceRessource
Id: ror-healthcareservice-competence-ressource
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-08"

* ^context.type = #element
* ^context.expression = "HealthcareService"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    profession 0..* and
    ordinalSpeciality 0..* and
    specificCompetence 0..*
* extension[profession] ^min = 0
* extension[profession].value[x] only code
* extension[profession].value[x] from $JDV-J54-Profession-ROR (required)
* extension[ordinalSpeciality] ^min = 0
* extension[ordinalSpeciality].value[x] only code
* extension[ordinalSpeciality].value[x] from $JDV-J32-TypeHabitation-ROR (required)
* extension[specificCompetence] ^min = 0
* extension[specificCompetence].value[x] only code
* extension[specificCompetence].value[x] from $JDV-J33-CompetenceSpecifique-ROR (required)
