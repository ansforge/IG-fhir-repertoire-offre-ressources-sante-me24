Profile: RORLocation
Parent: Location
Id: ror-location
Description: "Profil crée dans le cadre du ROR"
* ^version = "2.4"
* ^status = #active
* ^date = "2022-06-30"
* ^publisher = "ANS"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORHealthCareServiceCapacityReception named ror-healthcareservice-capacity-reception 0..1 and
    RORHealthCareServiceCapacityReceptionCrisis named ror-healthcareservice-capacity-reception-crisis 1..1 and
    RORHealthCareServiceResidentialCapacity named ror-healthcareservice-residential-capacity 0..* and
    RORCodeRegion named ror-code-region 0..1
* extension[ror-healthcareservice-capacity-reception] ^isModifier = false
* extension[ror-healthcareservice-capacity-reception-crisis] ^isModifier = false
* extension[ror-healthcareservice-residential-capacity] ^min = 0
* extension[ror-healthcareservice-residential-capacity] ^isModifier = false
* extension[ror-code-region] ^isModifier = false
* address only $fr-address-extended
* address.line.extension ^slicing.discriminator.type = #value
* address.line.extension ^slicing.discriminator.path = "url"
* address.line.extension ^slicing.rules = #open
* address.line.extension ^min = 0
* address.line.extension contains ROROrganizationAddressLineISO21090AdxpLocality named ror-organization-address-line-iso-21090-adxp-locality 0..1
* address.line.extension[ror-organization-address-line-iso-21090-adxp-locality] ^isModifier = false
* position.extension ^slicing.discriminator.type = #value
* position.extension ^slicing.discriminator.path = "url"
* position.extension ^slicing.rules = #open
* position.extension contains
    RORLocationGeodesicSystem named ror-location-geodesic-system 1..1 and
    RORLocationReliablePosition named ror-location-reliable-position 0..1
* position.extension[ror-location-geodesic-system] ^isModifier = false
* position.extension[ror-location-reliable-position] ^isModifier = false