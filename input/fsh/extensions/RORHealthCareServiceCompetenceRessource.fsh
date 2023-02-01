Extension: RORHealthCareServiceCompetenceRessource
Id: ror-healthcareservice-competence-ressource
Description: "Extension créée dans le cadre du ROR"
* ^version = "2.4"
* ^date = "2022-07-08"
* ^publisher = "ANS"
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
//* value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage