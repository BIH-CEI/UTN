<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MII_PR_Fall_KontaktGesundheitseinrichtung
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Encounter</sch:title>
    <sch:rule context="f:Encounter">
      <sch:assert test="count(f:extension[@url = 'http://fhir.de/StructureDefinition/Aufnahmegrund']) &lt;= 1">extension with URL = 'http://fhir.de/StructureDefinition/Aufnahmegrund': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedStartDate']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedStartDate': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedEndDate']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedEndDate': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:extension</sch:title>
    <sch:rule context="f:Encounter/f:extension">
      <sch:assert test="count(f:extension[@url = 'ErsteUndZweiteStelle']) &lt;= 1">extension with URL = 'ErsteUndZweiteStelle': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'DritteStelle']) &lt;= 1">extension with URL = 'DritteStelle': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'VierteStelle']) &lt;= 1">extension with URL = 'VierteStelle': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:hospitalization/f:dischargeDisposition</sch:title>
    <sch:rule context="f:Encounter/f:hospitalization/f:dischargeDisposition">
      <sch:assert test="count(f:extension[@url = 'http://fhir.de/StructureDefinition/Entlassungsgrund']) &lt;= 1">extension with URL = 'http://fhir.de/StructureDefinition/Entlassungsgrund': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:location</sch:title>
    <sch:rule context="f:Encounter/f:location">
      <sch:assert test="count(f:physicalType) &gt;= 1">physicalType: minimum cardinality of 'physicalType' is 1</sch:assert>
      <sch:assert test="count(f:physicalType) &gt;= 1">physicalType: minimum cardinality of 'physicalType' is 1</sch:assert>
      <sch:assert test="count(f:physicalType) &gt;= 1">physicalType: minimum cardinality of 'physicalType' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
