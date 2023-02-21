Profile: RORLocation
Parent: Location
Id: ror-location
Description: "Profil créé à partir de la ressource Location dans le cadre du ROR"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORHealthcareServiceCapacityReception named ror-healthcareservice-capacity-reception 0..1 and
    RORHealthcareServiceCapacityReceptionCrisis named ror-healthcareservice-capacity-reception-crisis 1..1 and
    RORHealthcareServiceResidentialCapacity named ror-healthcareservice-residential-capacity 0..* and
    RORCodeRegion named ror-code-region 0..1
* extension[ror-healthcareservice-capacity-reception] ^isModifier = false
* extension[ror-healthcareservice-capacity-reception-crisis] ^isModifier = false
* extension[ror-healthcareservice-residential-capacity] ^isModifier = false
* extension[ror-code-region] ^isModifier = false
* address only $fr-address-extended
* address.extension ^slicing.discriminator.type = #value
* address.extension ^slicing.discriminator.path = "url"
* address.extension ^slicing.rules = #open
* address.extension contains
    RORCommuneCog named ror-commune-cog 0..1 and
    RORAddressCalculatedDistance named ror-address-calculated-distance 0..1 and
    RORGeolocation named ror-geolocation 0..
* address.extension[ror-commune-cog] ^isModifier = false
* address.extension[ror-address-calculated-distance] ^isModifier = false
* address.extension[ror-geolocation] ^isModifier = false
* address.line.extension ^slicing.discriminator.type = #value
* address.line.extension ^slicing.discriminator.path = "url"
* address.line.extension ^slicing.rules = #open
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