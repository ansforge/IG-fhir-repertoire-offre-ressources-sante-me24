Extension: RORHealthCareServiceCapacityReception
Id: ror-healthcareservice-capacity-reception
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-08"

* ^context[0].type = #element
* ^context[=].expression = "HealthcareService"
* ^context[+].type = #element
* ^context[=].expression = "Location"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    placedBedNumber 0..1 and
    availableBedNumber 0..1 and
    availableBedUpdateDate 0..1 and
    placedPlacesNumber 0..1 and
    availablePlacesNumber 0..1 and
    availablePlacesNumberUpdateDate 0..*
* extension[placedBedNumber].value[x] only integer
* extension[availableBedNumber].value[x] only integer
* extension[availableBedUpdateDate].value[x] only date
* extension[placedPlacesNumber].value[x] only integer
* extension[availablePlacesNumber].value[x] only integer
* extension[availablePlacesNumberUpdateDate] ^min = 0
* extension[availablePlacesNumberUpdateDate].value[x] only date
//* value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage