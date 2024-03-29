Profile: ROROrganization
Parent: $FrOrganization
Id: ror-organization
Description: "Profil créé à partir de la ressource Organization dans le cadre du ROR"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ROROrganizationPrice named ror-organization-price 0..1 and
    RORDropZone named ror-drop-zone 0..1 and
    $mailboxMSS named mailboxMSS 0..* and
    ROROrganizationTerritorial named ror-organization-territorial 0..* and
    ROROrganizationFinancialHelpType named ror-organization-financial-help-type 0..* and
    ROROrganizationAccomodationFamily named ror-organization-accomodation-family 0..* and
    ROROrganizationNbPermanentSocialHelpPlace named ror-organization-nb-permanent-social-help-place 0..* and
    ROROrganizationNbTemporarySocialHelpPlace named Nror-organization-nb-temporary-social-help-place 0..* and
    RORAccessibilityLocation named ror-accessibility-location 0..* and
    RORLevelRecoursORSAN named ror-level-recours-orsan 0..* and
    RORCareWithoutPatientApproval named ror-care-without-patient-approval 0..* and
    ROROrganizationClosingType named ror-organization-information-ouverture-fermeture 0..* and
    RORTypeActivity named ror-type-activity 0..* and
    $period named period 0..1
* extension[mailboxMSS] ^isModifier = false
* extension[ror-organization-territorial] ^isModifier = false
* extension[ror-organization-price] ^isModifier = false
* extension[ror-drop-zone] ^isModifier = false
* extension[ror-organization-financial-help-type] ^isModifier = false
* extension[ror-organization-accomodation-family] ^isModifier = false
* extension[ror-organization-nb-permanent-social-help-place] ^isModifier = false
* extension[ror-organization-nb-temporary-social-help-place] ^isModifier = false
* extension[ror-accessibility-location] ^isModifier = false
* extension[ror-level-recours-orsan] ^isModifier = false
* extension[ror-care-without-patient-approval] ^isModifier = false
* extension[ror-organization-closing-type] ^isModifier = false
* extension[ror-type-activity] ^isModifier = false
* extension[period] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    idNatStruct 1..1 and
    numFINESS 0..1 and
    numSIREN 0..1 and
    numRPPS 0..1 and
    numSIRET 0..1 and
    identifiantOI 0..1 and
    numADELI 0..1
* identifier[idNatStruct].type = $TRE-R254-TypeEvenement-FHIR.json#40 (exactly)
* identifier[idNatStruct].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numFINESS].type = $JDV-J236-TypeIdentifiant-ROR#1 (exactly)
* identifier[numFINESS].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numSIREN].type = $JDV-J236-TypeIdentifiant-ROR#2 (exactly)
* identifier[numSIREN].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numRPPS].type = $JDV-J236-TypeIdentifiant-ROR#4 (exactly)
* identifier[numRPPS].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numSIRET].type = $JDV-J236-TypeIdentifiant-ROR#3 (exactly)
* identifier[numSIRET].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[identifiantOI].type = $JDV-J236-TypeIdentifiant-ROR#42 (exactly)
* identifier[identifiantOI].type from $JDV-J236-TypeIdentifiant-ROR (required)
* identifier[numADELI].type = $JDV-J236-TypeIdentifiant-ROR#0 (exactly)
* identifier[numADELI].type from $JDV-J236-TypeIdentifiant-ROR (required)
* type[organizationType] from $JDV-J203-TypeOrganisationInterne-ROR (required)
* type[organizationType] ^sliceName = "organizationType"
* type[organizationType] ^binding.description = "Binding JDV_J203-TypeOrganisationInterne-ROR"
* type contains
    statutJuridiqueINSEE 0..1 and
    categorieEtablissement 0..1 and
    sphParticipation 0..1 and
    sousEnsembleAgregatStatutJuridique 0..1
* type[statutJuridiqueINSEE] from $JDV-J199-StatutJuridique-ROR (required)
* type[statutJuridiqueINSEE] ^binding.description = "Binding JDV_J199-StatutJuridique-ROR"
* type[categorieEtablissement] from $JDV-J55-CategorieEG-ROR (required)
* type[categorieEtablissement] ^binding.description = "Binding JDV_J55-CategorieEG-ROR"
* type[sphParticipation] from $JDV-J202-ESPIC-ROR (required)
* type[sphParticipation] ^binding.description = "Binding JDV_J202-ESPIC-ROR"
* type[sousEnsembleAgregatStatutJuridique] from $JDV-J200-SousEnsembleAgregatStatutJuridique-ROR (required)
* alias 0..1 //Contrainte issu du mapping
* address.extension ^slicing.discriminator.type = #value
* address.extension ^slicing.discriminator.path = "url"
* address.extension ^slicing.rules = #open
* address.extension[inseeCode] ^sliceName = "inseeCode"
* address.extension[inseeCode].value[x] from $JDV-J230-CommuneOM-ROR (required)
* address.extension[inseeCode].value[x] ^binding.description = "JDV_J102-1-CommuneOM-ROR"
* address.extension contains
    RORAddressName named ror-address-name 0..1 and
    RORAddressDescription named ror-address-description 0..1 and
    RORAddressStatus named ror-address-status 0..1 and
    RORGeolocation named ror-geolocation 0..* and
    RORAddressCalculatedDistance named ror-address-calculated-distance 0..1
* address.extension[ror-address-name] ^isModifier = false
* address.extension[ror-address-description] ^isModifier = false
* address.extension[ror-address-status] ^isModifier = false
* address.extension[ror-address-calculated-distance] ^isModifier = false
* address.extension[ror-geolocation] only RORGeolocation
* address.extension[ror-geolocation] ^sliceName = "ror-geolocation"
* address.extension[ror-geolocation] ^isModifier = false
* address.line.extension ^slicing.discriminator.type = #value
* address.line.extension ^slicing.discriminator.path = "url"
* address.line.extension ^slicing.rules = #open
* address.line.extension contains 
    ROROrganizationAddressLineISO21090AdxpLocality named ror-organization-address-line-iso-21090-adxp-locality 0..1 and
    $careOf named careOf 0..* and
    $additionalLocator named additionalLocator 0..* and
    $houseNumber named houseNumber 0..* and
    $buildingNumberSuffix named buildingNumberSuffix 0..* and
    $streetNameType named streetNameType 0..* and
    $streetNameBase named streetNameBase 0..* and
    $postBox named postBox 0..*
* address.line.extension[ror-organization-address-line-iso-21090-adxp-locality] ^isModifier = false
* address.line.extension[careOf] ^isModifier = false
* address.line.extension[additionalLocator] ^isModifier = false
* address.line.extension[houseNumber] ^isModifier = false
* address.line.extension[buildingNumberSuffix] ^isModifier = false
* address.line.extension[streetNameType] ^isModifier = false
* address.line.extension[streetNameBase] ^isModifier = false
* address.line.extension[postBox] ^isModifier = false
* partOf only Reference($FrOrganization or ROROrganization)
* contact.extension ^slicing.discriminator.type = #value
* contact.extension ^slicing.discriminator.path = "url"
* contact.extension ^slicing.rules = #open
* contact.extension contains
    RORContactDescription named ror-contact-description 0..1 and
    RORContactFonctionContact named ror-contact-fonction-contact 0..1 and
    RORContactConfidentialityLevel named ror-contact-confidentiality-level 0..1
* contact.extension[ror-contact-description] ^isModifier = false
* contact.extension[ror-contact-fonction-contact] ^isModifier = false
* contact.extension[ror-contact-confidentiality-level] ^isModifier = false
* contact.purpose from $JDV-J221-NatureContact-ROR (required)
* contact.telecom.extension ^slicing.discriminator.type = #value
* contact.telecom.extension ^slicing.discriminator.path = "url"
* contact.telecom.extension ^slicing.rules = #open
* contact.telecom.extension contains
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 0..1 and
    RORContactTelecomUsage named ror-contact-telecom-usage 0..1
* contact.telecom.extension[ror-telecom-confidentiality-level] ^isModifier = false
* contact.telecom.extension[ror-contact-telecom-usage] ^isModifier = false
* endpoint 0..0