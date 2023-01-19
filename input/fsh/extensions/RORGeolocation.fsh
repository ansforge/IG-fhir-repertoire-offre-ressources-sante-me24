Extension: RORGeolocation
Id: ror-geolocation
Title: "Geolocation"
Description: "The absolute geographic location of the Location, expressed using the WGS84 datum (This    is the same co-ordinate system used in KML)."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^version = "2.4"
* ^date = "2013-12-05"
* ^publisher = "ANS"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/fiwg"
* ^context.type = #element
* ^context.expression = "Address"
* . ..1
* . ^short = "The absolute geographic location"
* . ^definition = "The absolute geographic location of the Location, expressed using the WGS84 datum (This        is the same co-ordinate system used in KML)."
* . ^comment = "The extension can be further extended to include unique geolocation identifiers, confidence,        altitude, etc."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    latitude 1..1 and
    longitude 1..1 and
    geodicSystem 1..1 and
    reliablePosition 0..*
* extension[latitude] ^short = "Latitude with WGS84 datum"
* extension[latitude] ^definition = "Latitude. The value domain and the interpretation are the same as for the text of the        latitude element in KML (see notes below)."
* extension[latitude].url only uri
* extension[latitude].value[x] 1..
* extension[latitude].value[x] only decimal
* extension[longitude] ^short = "Longitude with WGS84 datum"
* extension[longitude] ^definition = "Longitude. The value domain and the interpretation are the same as for the text of the        longitude element in KML (see notes below)."
* extension[longitude].url only uri
* extension[longitude].value[x] 1..
* extension[longitude].value[x] only decimal
* extension[geodicSystem].value[x] only string
* extension[reliablePosition] ^min = 0
* extension[reliablePosition].value[x] only boolean