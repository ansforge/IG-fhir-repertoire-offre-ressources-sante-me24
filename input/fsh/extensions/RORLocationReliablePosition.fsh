Extension: RORLocationReliablePosition
Id: ror-location-reliable-position
Description: "Extension créée dans le cadre du ROR"

* ^date = "2022-06-30"

* ^context.type = #element
* ^context.expression = "Location.position"
* value[x] 1..
* value[x] only boolean