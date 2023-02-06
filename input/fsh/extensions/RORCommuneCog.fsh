Extension: RORCommuneCog
Id: ror-commune-cog
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-07-08"

* ^context.type = #element
* ^context.expression = "Address"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains code 0..1
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] from $JDV-J230-CommuneOM-ROR (required)
//* value[x] only base64Binary or boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or positiveInt or string or time or unsignedInt or uri or url or uuid or Address or Age or Annotation or Attachment or CodeableConcept or Coding or ContactPoint or Count or Distance or Duration or HumanName or Identifier or Money or Period or Quantity or Range or Ratio or Reference or SampledData or Signature or Timing or ContactDetail or Contributor or DataRequirement or Expression or ParameterDefinition or RelatedArtifact or TriggerDefinition or UsageContext or Dosage