<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile FrOrganization
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Organization</sch:title>
    <sch:rule context="f:Organization">
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrOrganizationShortName']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrOrganizationShortName': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrOrganizationDescription']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrOrganizationDescription': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/organization-period']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/organization-period': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-organization-price']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-organization-price': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-drop-zone']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-drop-zone': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/organization-period']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/organization-period': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:alias) &lt;= 1">alias: maximum cardinality of 'alias' is 1</sch:assert>
      <sch:assert test="count(f:endpoint) &lt;= 0">endpoint: maximum cardinality of 'endpoint' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:address</sch:title>
    <sch:rule context="f:Organization/f:address">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrAddressInseeCode']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrAddressInseeCode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-address-name']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-address-name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-address-description']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-address-description': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-address-status']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-address-status': maximum cardinality of 'extension' is 1</sch:assert>
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
    <sch:title>f:Organization/f:address/f:extension</sch:title>
    <sch:rule context="f:Organization/f:address/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:address/f:line</sch:title>
    <sch:rule context="f:Organization/f:address/f:line">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-organization-address-line-iso-21090-adxp-locality']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-organization-address-line-iso-21090-adxp-locality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:contact</sch:title>
    <sch:rule context="f:Organization/f:contact">
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-contact-description']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-contact-description': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-contact-fonction-contact']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-contact-fonction-contact': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-contact-confidentiality-level']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-contact-confidentiality-level': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:contact/f:telecom</sch:title>
    <sch:rule context="f:Organization/f:contact/f:telecom">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interopsante.org/fhir/StructureDefinition/FrContactPointEmailType']) &lt;= 1">extension with URL = 'http://interopsante.org/fhir/StructureDefinition/FrContactPointEmailType': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-telecom-confidentiality-level']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-telecom-confidentiality-level': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-contact-telecom-usage']) &lt;= 1">extension with URL = 'http://interop.esante.gouv.fr/fhir/ig/ror24/StructureDefinition/ror-contact-telecom-usage': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:rank) &lt;= 1">rank: maximum cardinality of 'rank' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
