<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Location
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Location</sch:title>
    <sch:rule context="f:Location">
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-capacity-reception']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-capacity-reception': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-capacity-reception-crisis']) &gt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-capacity-reception-crisis': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-capacity-reception-crisis']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-healthcareservice-capacity-reception-crisis': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-code-region']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-code-region': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:address</sch:title>
    <sch:rule context="f:Location/f:address">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://www.interopsante.org/fhir/structuredefinition/datatype/fr-address-insee-code']) &lt;= 1">extension with URL = 'http://www.interopsante.org/fhir/structuredefinition/datatype/fr-address-insee-code': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/french-department']) &lt;= 1">extension with URL = 'https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/french-department': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/address-country-code']) &lt;= 1">extension with URL = 'https://apifhir.annuaire.sante.fr/ws-sync/exposed/structuredefinition/address-country-code': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-commune-cog']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-commune-cog': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-address-calculated-distance']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-address-calculated-distance': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:city) &lt;= 1">city: maximum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:district) &lt;= 1">district: maximum cardinality of 'district' is 1</sch:assert>
      <sch:assert test="count(f:state) &lt;= 1">state: maximum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &lt;= 1">postalCode: maximum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:country) &lt;= 1">country: maximum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:address/f:line</sch:title>
    <sch:rule context="f:Location/f:address/f:line">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-organization-address-line-iso-21090-adxp-locality']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-organization-address-line-iso-21090-adxp-locality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:position</sch:title>
    <sch:rule context="f:Location/f:position">
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-location-geodesic-system']) &gt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-location-geodesic-system': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-location-geodesic-system']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-location-geodesic-system': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-location-reliable-position']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-location-reliable-position': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
