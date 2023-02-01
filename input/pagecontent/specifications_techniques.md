
### Recherche offre sur critères minimaux

#### Caractéristiques de l'API 

| Endpoint           |                            |
|--------------------|----------------------------|
| Header             | Content-type :=Json + FHIR |
| Encodage      UTF8 |                            |
| Version FHIR       | 4.0.1                      |
| Version package    |                            |
| Publication        |                            |

####  Construction de la requête de base

| Interaction FHIR             | Search                                                           |
|------------------------------|------------------------------------------------------------------|
|  Méthode http associée       | GET                                                              |
| Ressource recherchée         | HealthcareService                                                |
| Construction requête de base | GET[base]/HealthcareService{?[parameters]{&_format=[mime-type]}} |

#### Format de la réponse

##### Format de réponse en cas de succès

Si la recherche est un succès, le serveur répond :

-   Un header avec un code 200 OK HTTP

-   Un body contenant une ressource Bundle[^2] dont le type =
    searchset.\
    Le bundle encapsule 0 à n ressources HealthcareService
    correspondantes aux critères de recherche et toutes les ressources
    demandées par le consommateur via des modificateurs de requêtes
    (\_revinclude et \_include).\
    Le service développé renvoie les 200 premiers résultats et indique
    le total trouvé dans une balise \"total\". Dans le cas où il n'y a
    pas de résultat le service renvoie \"total\": 0.

    Remarque : la recherche est un succès à partir du moment où la
    requête peut être exécutée (code http=200). Il peut il y avoir 0 à n
    correspondances.

Plus de précision sur la spécification FHIR :
https://www.hl7.org/fhir/http.html

##### Format de réponse en cas d'échec

Si la recherche échoue, le serveur doit répondre :

-   Un header avec un code erreur HTTP 4XX ou 5XX. Cf Chapitre 4

-   Un body contenant une ressource OperationOutcome[^3] qui donne les
    détails sur la raison de l'échec

Remarque : l'échec d'une recherche est la non-possibilité d'exécuter la
requête, ce qui est différent d'aucune correspondance à la recherche.
Plus de précision sur la spécification FHIR :
<https://www.hl7.org/fhir/http.html>

#### Critères de recherche applicables à date

##### StructureDefinition-ror-healthcareservice
| **Attribut ME 2\.4**                                                                                                                                                                                            | **Search parameters **   | **Natif FHIR** | **Type FHIR** | **Description**                                                                                                                                                                                                         <table class="MsoTable15List3Accent5" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none;mso-border-alt:solid #4472C4 .5pt;
 mso-border-themecolor:accent5;mso-yfti-tbllook:1056;mso-padding-alt:0cm 5.4pt 0cm 5.4pt">
 <tbody><tr style="mso-yfti-irow:-1;mso-yfti-firstrow:yes;mso-yfti-lastfirstrow:yes">
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:accent5;
  border-bottom:none;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-left-alt:solid #4472C4 .5pt;
  mso-border-left-themecolor:accent5;background:#4472C4;mso-background-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:1"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;color:white;mso-themecolor:background1">Attribut
  ME 2.4</span></b></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%;color:white;
  mso-themecolor:background1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border:none;border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:accent5;
  background:#4472C4;mso-background-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:1"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><b><span style="font-size:8.0pt;line-height:115%;color:white;
  mso-themecolor:background1">Search</span></b></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;color:white;mso-themecolor:background1">
  <span class="SpellE">parameters</span> </span></b></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%;color:white;
  mso-themecolor:background1"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border:none;border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:accent5;
  background:#4472C4;mso-background-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:1"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;color:white;mso-themecolor:background1">Natif
  FHIR</span></b></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%;color:white;
  mso-themecolor:background1"><o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
  <td width="95" valign="top" style="width:70.95pt;border:none;border-top:solid #4472C4 1.0pt;
  mso-border-top-themecolor:accent5;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;background:#4472C4;mso-background-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:1"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;color:white;mso-themecolor:background1">Type
  FHIR<o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border-top:solid #4472C4 1.0pt;
  mso-border-top-themecolor:accent5;border-left:none;border-bottom:none;
  border-right:solid #4472C4 1.0pt;mso-border-right-themecolor:accent5;
  mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:accent5;
  mso-border-right-alt:solid #4472C4 .5pt;mso-border-right-themecolor:accent5;
  background:#4472C4;mso-background-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:1"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;color:white;mso-themecolor:background1">Description<o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:0">
  <td style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="text-align:center;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%">N/A <b><o:p></o:p></b></span></span></span></span></span></p>
  </td>
  
  <td style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:accent5;
  border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="GramE"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:
  115%">location</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:accent5;
  border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Oui<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">reference</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" style="width:358.8pt;border:solid #4472C4 1.0pt;mso-border-themecolor:
  accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;mso-border-right-alt:solid #4472C4 .5pt;mso-border-right-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%">Référence
  vers Location</span></span></span></span></span><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:1">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="center" style="text-align:center"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%">N/A <b><o:p></o:p></b></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;mso-bidi-font-size:
  9.0pt;line-height:115%">organization</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Oui<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">reference</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%">Référence
  vers <span class="SpellE">Organization</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:2">
  <td valign="top" style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%;color:black;
  mso-color-alt:windowtext">Patientèle</span></b></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></b></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" valign="top" style="width:70.95pt;border-top:solid #4472C4 1.0pt;
  mso-border-top-themecolor:accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;
  mso-border-bottom-themecolor:accent5;border-right:none;mso-border-top-alt:
  solid #4472C4 .5pt;mso-border-top-themecolor:accent5;mso-border-bottom-alt:
  solid #4472C4 .5pt;mso-border-bottom-themecolor:accent5;background:#DEEAF6;
  mso-background-themecolor:accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;background:#DEEAF6;mso-background-themecolor:
  accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:3">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">publicPrisEnCharge</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;mso-bidi-font-size:
  9.0pt;line-height:115%">supported</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%">-patient-type<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%">Non<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">token</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Le public pris en charge précise si
  une unité élémentaire d'un établissement ou d'un service du champ d'activité
  médico-social accueille des personnes âgées en perte d'autonomie et/ou des
  personnes en situation de handicap<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><a style="mso-comment-reference:PH_53;mso-comment-date:20230113T1120;mso-comment-parent:
  48;mso-comment-done:yes"></a><a style="mso-comment-reference:MDC_52;
  mso-comment-date:20230103T2057;mso-comment-parent:48;mso-comment-done:yes"></a><a style="mso-comment-reference:PC_51;mso-comment-date:20230103T1631;mso-comment-parent:
  48;mso-comment-done:yes"></a><a style="mso-comment-reference:SD_50;
  mso-comment-date:20221227T1203;mso-comment-parent:48;mso-comment-done:yes"></a><a style="mso-comment-reference:PC_49;mso-comment-date:20221222T1201;mso-comment-parent:
  48;mso-comment-done:yes"></a><a style="mso-comment-reference:PC_48;
  mso-comment-date:20221222T1159;mso-comment-done:yes"><span style="mso-comment-continuation:
  49"><span style="mso-comment-continuation:50"><span style="mso-comment-continuation:
  51"><span style="mso-comment-continuation:52"><span style="mso-comment-continuation:
  53"><span style="font-size:8.0pt;line-height:115%">JDV-J29-PublicPrisEnCharge-ROR</span></span></span></span></span></span></a></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:49"><span style="mso-comment-continuation:
  50"><span style="mso-comment-continuation:51"><span style="mso-comment-continuation:
  52"><span style="mso-comment-continuation:53"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_48" onmouseover="msoCommentShow('_anchor_48','_com_48')" onmouseout="msoCommentHide('_com_48')" href="#_msocom_48" language="JavaScript" name="_msoanchor_48">[PC48]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:50"><span style="mso-comment-continuation:
  51"><span style="mso-comment-continuation:52"><span style="mso-comment-continuation:
  53"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:
  115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_49" onmouseover="msoCommentShow('_anchor_49','_com_49')" onmouseout="msoCommentHide('_com_49')" href="#_msocom_49" language="JavaScript" name="_msoanchor_49">[PC49]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:51"><span style="mso-comment-continuation:
  52"><span style="mso-comment-continuation:53"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_50" onmouseover="msoCommentShow('_anchor_50','_com_50')" onmouseout="msoCommentHide('_com_50')" href="#_msocom_50" language="JavaScript" name="_msoanchor_50">[SD50]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:52"><span style="mso-comment-continuation:
  53"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:
  115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_51" onmouseover="msoCommentShow('_anchor_51','_com_51')" onmouseout="msoCommentHide('_com_51')" href="#_msocom_51" language="JavaScript" name="_msoanchor_51">[PC51]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:53"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_52" onmouseover="msoCommentShow('_anchor_52','_com_52')" onmouseout="msoCommentHide('_com_52')" href="#_msocom_52" language="JavaScript" name="_msoanchor_52">[MDC52]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_53" onmouseover="msoCommentShow('_anchor_53','_com_53')" onmouseout="msoCommentHide('_com_53')" href="#_msocom_53" language="JavaScript" name="_msoanchor_53">[PH53]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"> issu de la TRE_R239-PublicPrisEnCharge<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:4">
  <td style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><a style="mso-comment-reference:PH_57;mso-comment-date:20230113T1121;mso-comment-parent:
  54;mso-comment-done:yes"></a><a style="mso-comment-reference:JCS_56;
  mso-comment-date:20230104T0915;mso-comment-parent:54;mso-comment-done:yes"></a><a style="mso-comment-reference:MDC_55;mso-comment-date:20230103T2101;
  mso-comment-parent:54;mso-comment-done:yes"></a><a style="mso-comment-reference:
  PC_54;mso-comment-date:20230103T1633;mso-comment-done:yes"></a><span class="SpellE"><span class="GramE"><span style="mso-comment-continuation:54"><span style="mso-comment-continuation:55"><span style="mso-comment-continuation:
  56"><span style="mso-comment-continuation:57"><span style="font-size:8.0pt;
  line-height:115%">ageMin</span></span></span></span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:55"><span style="mso-comment-continuation:
  56"><span style="mso-comment-continuation:57"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_54" onmouseover="msoCommentShow('_anchor_54','_com_54')" onmouseout="msoCommentHide('_com_54')" href="#_msocom_54" language="JavaScript" name="_msoanchor_54">[PC54]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:56"><span style="mso-comment-continuation:
  57"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:
  115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_55" onmouseover="msoCommentShow('_anchor_55','_com_55')" onmouseout="msoCommentHide('_com_55')" href="#_msocom_55" language="JavaScript" name="_msoanchor_55">[MDC55]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:57"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_56" onmouseover="msoCommentShow('_anchor_56','_com_56')" onmouseout="msoCommentHide('_com_56')" href="#_msocom_56" language="JavaScript" name="_msoanchor_56">[JCS56]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_57" onmouseover="msoCommentShow('_anchor_57','_com_57')" onmouseout="msoCommentHide('_com_57')" href="#_msocom_57" language="JavaScript" name="_msoanchor_57">[PH57]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:accent5;
  border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">age</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">-range-<span class="SpellE">low</span><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:accent5;
  border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Non<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">quantity</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Borne minimum (inclus) de la
  fourchette d’âge pour laquelle une offre est recherchée.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J37-UcumUniteTemps issu de la TRE_R247-UcumUniteMesure<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:5">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">ageMax</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Age-range-high<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Non<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">quantity</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Borne maximum (inclus) de la
  fourchette d’âge pour laquelle une offre est recherchée.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J37-UcumUniteTemps issu de la TRE_R247-UcumUniteMesure<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><a style="mso-comment-reference:JCS_59;mso-comment-date:20230104T0918;
  mso-comment-parent:58;mso-comment-done:yes"></a><a style="mso-comment-reference:
  MDC_58;mso-comment-date:20230103T2102;mso-comment-done:yes"><span style="mso-comment-continuation:59"><b><u><span style="font-size:8.0pt;
  line-height:115%;color:#4472C4;mso-themecolor:accent5">RG_RECH-08&nbsp;:</span></u></b></span></a></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:58"><span style="mso-comment-continuation:
  59"><span style="font-size:8.0pt;line-height:115%;color:#4472C4;mso-themecolor:
  accent5"> La borne d’âge max DOIT être supérieure ou égale à la borne d’âge
  min.</span></span></span></span></span></span></span><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:59"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_58" onmouseover="msoCommentShow('_anchor_58','_com_58')" onmouseout="msoCommentHide('_com_58')" href="#_msocom_58" language="JavaScript" name="_msoanchor_58">[MDC58]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_59" onmouseover="msoCommentShow('_anchor_59','_com_59')" onmouseout="msoCommentHide('_com_59')" href="#_msocom_59" language="JavaScript" name="_msoanchor_59">[JCS59]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%;color:#4472C4;mso-themecolor:accent5"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:6">
  <td valign="top" style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><b><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;
  line-height:115%;color:black;mso-color-alt:windowtext">UniteElementaire</span></b></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></b></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" valign="top" style="width:70.95pt;border-top:solid #4472C4 1.0pt;
  mso-border-top-themecolor:accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;
  mso-border-bottom-themecolor:accent5;border-right:none;mso-border-top-alt:
  solid #4472C4 .5pt;mso-border-top-themecolor:accent5;mso-border-bottom-alt:
  solid #4472C4 .5pt;mso-border-bottom-themecolor:accent5;background:#DEEAF6;
  mso-background-themecolor:accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;background:#DEEAF6;mso-background-themecolor:
  accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:7">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">nomOI</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">name</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Oui<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">string</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Nom de l’organisation.<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:8">
  <td style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">categorieOrganisation</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:accent5;
  border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">service</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">-<span class="SpellE">category</span><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:accent5;
  border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Oui<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">token</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">La catégorie d'organisation
  caractérise la nature particulière de l’offre de santé portée par l’UE
  recherchée, offre qui se distingue par un agrément, un personnel spécialement
  formé, un environnement particulièrement adapté à l'état de santé des
  patients<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><a style="mso-comment-reference:PH_61;mso-comment-date:20230113T1714;mso-comment-parent:
  60;mso-comment-done:yes"></a><a style="mso-comment-reference:SD_60;
  mso-comment-date:20230104T1056;mso-comment-done:yes"><span style="mso-comment-continuation:
  61"><span style="font-size:8.0pt;line-height:115%">JDV_J34-CategorieOrganisation-ROR</span></span></a></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:61"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_60" onmouseover="msoCommentShow('_anchor_60','_com_60')" onmouseout="msoCommentHide('_com_60')" href="#_msocom_60" language="JavaScript" name="_msoanchor_60">[SD60]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_61" onmouseover="msoCommentShow('_anchor_61','_com_61')" onmouseout="msoCommentHide('_com_61')" href="#_msocom_61" language="JavaScript" name="_msoanchor_61">[PH61]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"> issu de la TRE_R244-CategorieOrganisation<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:9">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">accueilSequentielAccepte</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">reception</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">-mode<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Non<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">token</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">L’indicateur précise si l’UE accepte
  d’accueillir des personnes en situation de handicap de façon séquentielle
  c'est à dire sur une partie de la semaine<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:10">
  <td style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">champActivite</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:accent5;
  border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">service</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">-type<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:accent5;
  border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Oui<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">token</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Un champ d’activité indique le
  domaine dans lequel s'inscrit l'offre<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J20-ChampActivite-ROR issu de la
  TRE_R227-ChampActivite<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:11">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">secteurPsychiatrique</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">psychiatric</span></span><span style="font-size:8.0pt;line-height:115%">-sector</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Non<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">string</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Le secteur de psychiatrie (ou
  sectorisation) correspond à une aire géographique à laquelle sont rattachées
  des structures de relais et de soins qui prennent en charge des patients
  résidants sur ce secteur.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><a style="mso-comment-reference:JCS_63;mso-comment-date:20230104T0924;
  mso-comment-parent:62;mso-comment-done:yes"></a><a style="mso-comment-reference:
  MDC_62;mso-comment-date:20230103T2103;mso-comment-done:yes"><span style="mso-comment-continuation:63"><b><u><span style="font-size:8.0pt;
  line-height:115%;color:#4472C4;mso-themecolor:accent5">RG_RECH_10&nbsp;:</span></u></b></span></a></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:62"><span style="mso-comment-continuation:
  63"><span style="font-size:8.0pt;line-height:115%;color:#4472C4;mso-themecolor:
  accent5"> Le secteur psychiatrique DOIT être structuré de la façon suivante :<br>
  - pour la métropole : numéro de départements (2 digits) + G (adultes) ou I
  (intersectoriel) + numéro du secteur (2 digits) <br>
  - pour les DOM/TOM : numéro de départements (3 digits) + G (adultes) ou I
  (intersectoriel) + numéro du secteur (2 digits)</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="mso-comment-continuation:63"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_62" onmouseover="msoCommentShow('_anchor_62','_com_62')" onmouseout="msoCommentHide('_com_62')" href="#_msocom_62" language="JavaScript" name="_msoanchor_62">[MDC62]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="MsoCommentReference"><span style="font-size:8.0pt;line-height:115%"><!--[if !supportAnnotations]--><a class="msocomanchor" id="_anchor_63" onmouseover="msoCommentShow('_anchor_63','_com_63')" onmouseout="msoCommentHide('_com_63')" href="#_msocom_63" language="JavaScript" name="_msoanchor_63">[JCS63]</a><!--[endif]--><span style="mso-special-character:comment">&nbsp;</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:12">
  <td style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">specialisationPriseEnCharge</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td rowspan="4" style="border:none;border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:accent5;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><a name="_Hlk124438321"><span lang="EN-GB" style="font-size:8.0pt;line-height:
  115%;mso-ansi-language:EN-GB">characteristic</span></a></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span lang="EN-GB" style="font-size:8.0pt;line-height:115%;mso-ansi-language:EN-GB"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td rowspan="4" style="border:none;border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:accent5;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Oui<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" rowspan="4" style="width:70.95pt;border:none;border-top:solid #4472C4 1.0pt;
  mso-border-top-themecolor:accent5;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">token</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Une spécialisation de prise en
  charge est une grande catégorie de troubles, de pathologies ou de déficiences
  pour lesquelles l’unité dispose d’une expertise, de compétences et/ou
  d’équipements spécifiques pouvant être discriminants dans le choix
  d’orientation du patient.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">La recherche sous forme
  [system]|[code] avec usage de l'<span class="SpellE">oid</span> permet de
  discriminer la caractéristique recherchée<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J35-SpecialisationDePriseEnCharge-ROR
  issu de la TRE_R245-SpecialisationDePriseEnCharge<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:13">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">modePriseEnCharge</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Un mode de prise en charge se
  définit par une UE en termes de durée de prise en charge et de niveau de
  soins.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">La recherche sous forme
  [system]|[code] avec usage de l'<span class="SpellE">oid</span> permet de
  discriminer la caractéristique recherchée<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J19-ModePriseEnCharge-ROR issu
  de la TRE_R213-ModePriseEnCharge<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:14">
  <td style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">temporaliteAccueil</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">La temporalité d’accueil précise si
  l’unité offre un accueil permanent ou temporaire.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">La recherche sous forme
  [system]|[code] avec usage de l'<span class="SpellE">oid</span> permet de
  discriminer la caractéristique recherchée<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J30-TemporaliteAccueil-ROR issu
  de la TRE_R240-TemporaliteAccueil<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:15">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">acteSpecifique</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Un acte spécifique est une action
  menée par un ou plusieurs acteur(s) de santé dans le cadre d’une activité.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">La recherche sous forme
  [system]|[code] avec usage de l’<span class="SpellE">oid</span> permet de
  discriminer la caractéristique recherchée<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J16-ActeSpecifique-ROR issu de
  la TRE_R210-ActeSpecifique<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:16">
  <td valign="top" style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><b><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;
  line-height:115%;color:black;mso-color-alt:windowtext">CompetenceRessource</span></b></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;background:yellow;mso-highlight:yellow"><o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;background:yellow;mso-highlight:yellow"><o:p>&nbsp;</o:p></span></b></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" valign="top" style="width:70.95pt;border-top:solid #4472C4 1.0pt;
  mso-border-top-themecolor:accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;
  mso-border-bottom-themecolor:accent5;border-right:none;mso-border-top-alt:
  solid #4472C4 .5pt;mso-border-top-themecolor:accent5;mso-border-bottom-alt:
  solid #4472C4 .5pt;mso-border-bottom-themecolor:accent5;background:#DEEAF6;
  mso-background-themecolor:accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;background:#DEEAF6;mso-background-themecolor:
  accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:17">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">profession</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">profession</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Non<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">token</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">La compétence ressource correspond à
  une profession exercée par au moins une personne présente dans l’unité.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J54-Profession-ROR issu de la TRE_G15-ProfessionSante,
  TRE_G16-ProfessionFormation, TRE_R94-ProfessionSocial, TRE_R95-UsagerTitre, TRE_R96-AutreFonctionSanitaire
  et TRE_R85-RolePriseCharge<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:18">
  <td style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">specialiteOrdinale</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:accent5;
  border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">ordinal</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">-<span class="SpellE">speciality</span><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:accent5;
  border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Non<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">token</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Une spécialité ordinale identifie un
  domaine de compétence d'un professionnel reconnu par l'ordre compétent.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J210-SpecialiteOrdinale-ROR issu
  de la TRE_R38-SpecialiteOrdinale<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:19">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">competenceSpecifique</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">specific</span></span><span style="font-size:8.0pt;line-height:115%">-competence</span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Non<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">token</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">La compétence spécifique correspond
  à une capacité ou connaissance reconnue d’une personne ressource de l’unité.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J33-CompetenceSpecifique-ROR issu
  de la TRE_R243-CompetenceSpecifique<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:20">
  <td valign="top" style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;line-height:115%;color:black;
  mso-color-alt:windowtext">Equipement</span></b></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;background:yellow;mso-highlight:yellow"><o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;background:yellow;mso-highlight:yellow"><o:p>&nbsp;</o:p></span></b></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" valign="top" style="width:70.95pt;border-top:solid #4472C4 1.0pt;
  mso-border-top-themecolor:accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;
  mso-border-bottom-themecolor:accent5;border-right:none;mso-border-top-alt:
  solid #4472C4 .5pt;mso-border-top-themecolor:accent5;mso-border-bottom-alt:
  solid #4472C4 .5pt;mso-border-bottom-themecolor:accent5;background:#DEEAF6;
  mso-background-themecolor:accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;background:#DEEAF6;mso-background-themecolor:
  accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:21">
  <td style="border:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">typeEquipement</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">equipement</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">-type<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Non<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border:none;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">token</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:none;border-right:solid #4472C4 1.0pt;
  mso-border-right-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Un équipement spécifique correspond
  à une ressource matérielle médicotechnique spécialisée, qui permet la
  réalisation d’une activité de soins.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J18-EquipementSpecifique-ROR
  issu de la TRE_R212-Equipement<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:22">
  <td valign="top" style="border:solid #4472C4 1.0pt;mso-border-themecolor:accent5;
  border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><b><span style="font-size:8.0pt;mso-bidi-font-size:9.0pt;
  line-height:115%;color:black;mso-color-alt:windowtext">ActiviteOperationnelle</span></b></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;background:yellow;mso-highlight:yellow"><o:p></o:p></span></b></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><b><span style="font-size:8.0pt;line-height:115%;background:yellow;mso-highlight:yellow"><o:p>&nbsp;</o:p></span></b></span></span></span></span></p>
  </td>
  
  <td valign="top" style="border-top:solid #4472C4 1.0pt;mso-border-top-themecolor:
  accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;border-right:none;mso-border-top-alt:solid #4472C4 .5pt;mso-border-top-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;background:#DEEAF6;mso-background-themecolor:accent1;mso-background-themetint:
  51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" valign="top" style="width:70.95pt;border-top:solid #4472C4 1.0pt;
  mso-border-top-themecolor:accent5;border-left:none;border-bottom:solid #4472C4 1.0pt;
  mso-border-bottom-themecolor:accent5;border-right:none;mso-border-top-alt:
  solid #4472C4 .5pt;mso-border-top-themecolor:accent5;mso-border-bottom-alt:
  solid #4472C4 .5pt;mso-border-bottom-themecolor:accent5;background:#DEEAF6;
  mso-background-themecolor:accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border:solid #4472C4 1.0pt;
  mso-border-themecolor:accent5;border-left:none;mso-border-top-alt:solid #4472C4 .5pt;
  mso-border-top-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;mso-border-right-alt:solid #4472C4 .5pt;
  mso-border-right-themecolor:accent5;background:#DEEAF6;mso-background-themecolor:
  accent1;mso-background-themetint:51;padding:0cm 5.4pt 0cm 5.4pt"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"></span></span></span></span>
  <p class="MsoNormal" align="left" style="text-align:left;mso-yfti-cnfc:64"><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p>&nbsp;</o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
 <tr style="mso-yfti-irow:23;mso-yfti-lastrow:yes">
  <td style="border-top:none;border-left:solid #4472C4 1.0pt;mso-border-left-themecolor:
  accent5;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:accent5;
  border-right:none;mso-border-left-alt:solid #4472C4 .5pt;mso-border-left-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">activiteOperationnelle</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">specialty</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td style="border:none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:
  accent5;mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:
  accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Oui<o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="95" style="width:70.95pt;border:none;border-bottom:solid #4472C4 1.0pt;
  mso-border-bottom-themecolor:accent5;mso-border-bottom-alt:solid #4472C4 .5pt;
  mso-border-bottom-themecolor:accent5;padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span class="SpellE"><span class="GramE"><span style="font-size:8.0pt;line-height:115%">token</span></span></span></span></span></span></span><span style="mso-bookmark:_Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%"><o:p></o:p></span></span></span></span></span></p>
  </td>
  
  <td width="478" valign="top" style="width:358.8pt;border-top:none;border-left:
  none;border-bottom:solid #4472C4 1.0pt;mso-border-bottom-themecolor:accent5;
  border-right:solid #4472C4 1.0pt;mso-border-right-themecolor:accent5;
  mso-border-bottom-alt:solid #4472C4 .5pt;mso-border-bottom-themecolor:accent5;
  mso-border-right-alt:solid #4472C4 .5pt;mso-border-right-themecolor:accent5;
  padding:0cm 5.4pt 0cm 5.4pt">
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">Une activité opérationnelle est un
  ensemble cohérent d’actions et de pratiques mises en œuvre pour répondre aux
  besoins en Santé de la personne.<o:p></o:p></span></span></span></span></span></p>
  <p class="MsoNormal" align="left" style="text-align:left"><span style="mso-bookmark:
  _Ref467061735"><span style="mso-bookmark:_50d3801c-dbda-4424-8c3f-6c8916c4eda5"><span style="mso-bookmark:_Toc24471448"><span style="mso-bookmark:_Ref467508402"><span style="font-size:8.0pt;line-height:115%">JDV_J17-ActiviteOperationnelle-ROR
  issu de la TRE_R211-ActiviteOperationnelle<o:p></o:p></span></span></span></span></span></p>
  </td>
  
 </tr>
</tbody></table>
##### StructureDefition-ror-practitionerrole

Critères de recherches applicables à la ressource PractitionerRole, ces
critères devront être chainés pour être utilisables dans le cas de la
recherche sur HealthcareService. [^7]

| **Attribut ME 2\.4** | **Search parameters ** | **Natif FHIR** | **Type FHIR** | **Description**                  |
|----------------------|------------------------|----------------|---------------|----------------------------------|
| N/A                  | service                | Oui            | reference     | Référence vers HealthcareService |
| N/A                  | practitioner           | Oui            | reference     | Référence vers Practitioner      |

#### Critères de recherche : à venir 

##### StructureDefinition-ror-organization
| **Attribut ME 2\.4**                                                                     | **Search parameters ** | **Natif FHIR** | **Type FHIR** | **Description**                                                                                          |
|------------------------------------------------------------------------------------------|------------------------|----------------|---------------|----------------------------------------------------------------------------------------------------------|
| zoneIntervention                                                                         | intervention\-zone     | Non            | token         | Zone\(s\) dans laquelle \(lesquelles\) intervient la structure lorsque les professionnels se déplacent\. |
| JDV\_J223\-TypeDivisionTerritoriale\-ROR issu de la TRE\_R201\-TypeDivisionTerritoriale  |
| JDV\_J230\-CommuneOM\-ROR issu de la TRE\_R13\-CommuneOM                                 |
| zonePoser                                                                                | drop\-zone             | Non            | token         | Cet indicateur précise l’existence d’une zone de poser pour hélicoptère sur le site concerné\.           |
| typeFermeture                                                                            | period\-end            | Non            | token         | Type de fermeture de l'entité juridique                                                                  |
| JDV\_J201\-TypeFermeture\-ROR issu de la TRE\_R286\-TypeFermeture                        |
| dateFermeture                                                                            | closing\-type          | Non            | date          | Date de fermeture de l'entité juridique\.                                                                |

#### Paramètres et modificateurs de requêtes FHIR

| **Lien vers spécification**                                                                                           | **Description**                                     |
|-----------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------|
| Paramètres et modificateurs : inclusion                                                                               |
| \_revinclude                                                                                                          | https://www\.hl7\.org/fhir/search\.html\#revinclude |
| Indique que les ressources qui font référence à HealthcareService doivent être incluses dans la réponse               |
| \_include                                                                                                             | https://www\.hl7\.org/fhir/search\.html\#include    |
| Indique que les ressources référencées par HealthcareService doivent être incluses dans la réponse                    |
| :iterate                                                                                                              |                                                     | Le processus d’inclusion peut être itératif si le modificateur :iterate est ajouté dans la requête\. |
| Paramètres et modificateurs : réponses                                                                                |
| \_count                                                                                                               | https://www\.hl7\.org/fhir/search\.html\#count      |
| Indique le nombre souhaité par le consommateur de résultat par page\.                                                 |
| RG\_RECH\_52 : Par défaut la recherche retourne 200 résultats maximum par page\.                                      |
| \_sort                                                                                                                | http://hl7\.org/fhir/search\.html\#\_sort           |
| Indiquer dans quel ordre renvoyer les résultats                                                                       |
| Paramètres et modificateurs : recherche                                                                               |                                                     |
| \_filter                                                                                                              | https://www\.hl7\.org/fhir/search\_filter\.html     |
| Paramètre de recherche spécial qui permet de compléter le mécanisme de recherche pour des recherches plus complexes\. |
| :above                                                                                                                | https://hl7\.org/fhir/search\.html\#recursive       |
| Indique que la recherche est effectuée sur n’importe quel niveau d’une hiérarchie de référence circulaires\.          |
| Préfixe de comparaison                                                                                                |                                                     |
| gt  , lt, ge, le, sa & eb                                                                                             | https://www\.hl7\.org/fhir/search\.html\#date       |
| Permet de faire des recherches comparatives                                                                           |


#### Exemples de requêtes

##### Scenario 1 : Recherche sur un critère en saisissant 1 valeur

[Description du scénario :]{.underline} Un consommateur cherche les
offres (unités) ayant\
une activité opérationnelle = Urgences spécialisées cardiologiques
(TRE-R211\|148)

[Requête :]{.underline}

>get\[BASE\]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle\|148&\_include:iterate=HealthcareService:organization&\_include=HealthcareService:location&\_revinclude=PractitionerRole:service&\_include=PractitionerRole:practitioner

[Requête expliquée :]{.underline}

>get\[BASE\]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle\|148
>#critère de recherche sur l'activité opérationnelle
>
>&\_include:iterate=HealthcareService:organization #inclus les
>Organization référencées par Healthcare Service ET les Organization
>référencées par les Organization
>
>&\_include=HealthcareService:location #inclus les Location référencées
>par HealthcareService
>
>&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
>référencent le HealthcareService
>
>&\_include=PractitionerRole:practitioner #inclus les Practitioner
>référencés par PractitionerRole

[Réponse "simplifiée" :]{.underline}

>HTTP 200 OK\
>resourceType: Bundle\
>type: searchset\
>total: 4
>
>UE1, UE2, UE3, UE4 #Ressources qui répondent à la recherche (match)
>
>EG1, Location1, PR1, PRO1,Pole1, EG2, Location2, PR2, PRO2, UF1, Pole2,
>EG3, Location3, PR3, PRO3, Location4 #Ressources qui sont retournées
>grâce aux modificateurs de requête \_include et \_revinclude

##### Scenario 2 : Recherche sur un critère en saisissant une liste de valeurs 

[Description du scénario :\
]{.underline}Un consommateur cherche les offres (unités) ayant\
une activité opérationnelle parmi la liste = Gynécologie médicale
(TRE_R211\|053) **[OU]{.underline}** Obstétrique (TRE_R211\|100)

[Requête :]{.underline}

get\[BASE\]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle\|053,100&\_include:iterate=HealthcareService:organization&\_include=HealthcareService:location&\_revinclude=PractitionerRole:service&\_include=PractitionerRole:practitioner

[Requête expliquée :]{.underline}

get\[BASE\]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle\|053,100
#critère de recherche sur l'activité opérationnelle

&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization

&\_include=HealthcareService:location #inclus les Location référencées
par Healthcare Service

&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService

&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole

[Réponse "simplifiée" :]{.underline}

HTTP 200 OK\
resourceType: Bundle\
type: searchset\
total: 1

UE8 #Ressource qui répond à la recherche (match)

EG3, Location8 #Ressources qui sont retournées grâce aux modificateurs
de requête \_include et \_revinclude

##### Scenario 2 : Recherche multicritères #1 - ET

[Description du scénario :]{.underline}

Un consommateur cherche les offres (unités) ayant\
une catégorie d\'organisation = Unité d'aide par le travail (ESAT)
(TRE_R244\|43)\
**[ET]{.underline}** proposant un accueil séquentiel = Oui (booléen)

[Requête :]{.underline}

get\[BASE\]/HealthcareService?service-category=
https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|43&receptionMode=true&\_include:iterate=HealthcareService:organization&\_include=HealthcareService:location&\_revinclude=PractitionerRole:service&\_include=PractitionerRole:practitioner

[Requête expliquée :]{.underline}

get\[BASE\]/HealthcareService?service-category=
https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|43#critère
de recherche sur la catégorie d'organisation

& receptionMode=true #critère de recherche sur l'accueil séquentiel

&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization

&\_include=HealthcareService:location #inclus les Location référencées
par Healthcare Service

&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService

&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole

[Réponse "simplifiée" :]{.underline}

HTTP 200 OK\
resourceType: Bundle\
type: searchset\
total: 1

UE5 #Ressource qui répond à la recherche (match)

EG3, Location5 #Ressources qui sont retournées grâce aux modificateurs
de requête \_include et \_revinclude

##### Scenario 4 : Recherche multicritères #2 - OU

[Description du scénario :]{.underline}

Un consommateur cherche les offres (unités) ayant\
une catégorie d\'organisation = Centre de Soins, d'Accompagnement et de
Prévention en Addictologie (CSAPA) (TRE-R244\|80)\
**[OU]{.underline}** une activité opérationnelle = Addictologie avec
substance(s) (TRE-R211\|404)

[Requête :]{.underline}

get\[BASE\]/HealthcareService?\_filter=((service-category eq
[https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|80](https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|80))
or (speciality eq
https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle\|404))&\_include:iterate=HealthcareService:organization&\_include=HealthcareService:location&\_revinclude=PractitionerRole:service&\_include=PractitionerRole:practitioner

[Requête expliquée:]{.underline}

get\[BASE\]/HealthcareService?\_filter=((service-category eq
[https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|80](https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation|80))
or (speciality eq
https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle\|404))
#critère de recherche sur l'activité opérationnelle OU sur la catégorie
d'organisation

&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization

&\_include=HealthcareService:location #inclus les Location référencées
par Healthcare Service

&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService

&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole

[Réponse "simplifiée" :]{.underline}

HTTP 200 OK\
resourceType: Bundle\
type: searchset\
total: 1

UE6 #Ressource qui répond à la recherche (match)\
EG3, Location6 #Ressources qui retournées grâce aux modificateurs de
requête \_include et \_revinclude

##### Scenario 4 : Recherche multicritères #3 -- ET/OU

[Description du scénario :]{.underline}

Un consommateur cherche les offres (unités) ayant\
( une catégorie établissement = DAC (TRE_R606) **[OU]{.underline}** une
catégorie d'organisation = Gestionnaire de cas Maya (TRE-R244\|73) )

**[ET]{.underline}** un acte spécifique = Coordination de la prise en
charge du COVID long (TRE_R210\|1045)

[Requête :]{.underline}

get\[BASE\]/HealthcareService?\_filter=((type eq
https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement\|606)
or (service-category eq
https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|73))&
characteristic=
https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique\|1045&\_include:iterate=HealthcareService:organization&\_include=HealthcareService:location&\_revinclude=PractitionerRole:service&\_include=PractitionerRole:practitioner

[Requête expliquée:]{.underline}

get\[BASE\]/HealthcareService?\_filter=((type eq
https://mos.esante.gouv.fr/NOS/TRE_R66-CategorieEtablissement/FHIR/TRE-R66-CategorieEtablissement\|606)
or (service-category eq
https://mos.esante.gouv.fr/NOS/TRE_R244-CategorieOrganisation/FHIR/TRE-R244-CategorieOrganisation\|73))
#critère de recherche sur l'acte spécifique OU sur la catégorie
d'organisation

& characteristic=
https://mos.esante.gouv.fr/NOS/TRE_R210-ActeSpecifique/FHIR/TRE-R210-ActeSpecifique\|1045
#critère sur l'acte spécifique

&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization

&\_include=HealthcareService:location #inclus les Location référencées
par Healthcare Service

&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService

&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole

[Réponse "simplifiée" :]{.underline}

HTTP 200 OK\
resourceType: Bundle\
type: searchset\
total:2

UE1, UE3 #Ressources qui répondent à la recherche (match)\
EG1, Location1, PR1, PRO1, UF1, Pole2, EG3, Location3, PR3, PRO3
#Ressources qui retournées grâce aux modificateurs de requête \_include
et \_revinclude

##### Scenario 6 : Recherche à proximité géographique

[Description du scénario :]{.underline} Un consommateur cherche les
offres (unités) ayant\
une activité opérationnelle = Urgences spécialisées cardiologiques
(TRE-R211\|148)\
dans un périmètre géographique proche du lieu de résidence d\'un patient
= 10km autour du point (48.83,2.31)

[Requête :]{.underline}

get\[BASE\]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle\|148&location:near=48.83\|2.31\|10\|km&\_include:iterate=HealthcareService:organization&\_include=HealthcareService:location&\_revincluded=PractitionerRole:service&\_include=PractitionerRole:practitioner

[Requête expliquée:]{.underline}

get\[BASE\]/HealthcareService?speciality=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle\|148
#critère de recherche sur l'activité opérationnelle

&location:near=48.83\|2.31\|10\|km #critère de périmètre géographique --
paramètre chainé -- 10km autour du point de référence 48.83 (latitude)
et 2.31 (longitude) dont le système de référence est WGS84

&\_include:iterate=HealthcareService:organization #inclus les
Organization référencées par Healthcare Service ET les Organization
référencées par les Organization

&\_include=HealthcareService:location #inclus les Location référencées
par Healthcare Service

&\_revinclude=PractitionerRole:service #inclus les PractitionerRole qui
référencent le HealthcareService

&\_include=PractitionerRole:practitioner #inclus les Practitioner
référencés par PractitionerRole

[Réponse "simplifiée" :]{.underline}

HTTP 200 OK\
resourceType: Bundle\
type: searchset\
total:3

UE1, UE3, UE4 #Ressources qui répondent à la recherche (match)\
EG1, Location1, PR1, PRO1, UF1, Pole2, EG3, Location3, PR3, PRO3, UF1,
Pole2, EG3, Location4 #Ressources qui retournées grâce aux modificateurs
de requête \_include et \_revinclude

## Codes retours

Gestion des codes retours en FHIR :
<https://www.hl7.org/fhir/search.html#errors>

-   **400 Bad Request** : la recherche n\'a pas pu être traitée ou a
    échoué aux règles de validation FHIR de base

-   **401 Not Authorized** : authorization is required for the
    interaction that was attempted

-   **404 Not Found** : resource type not supported, or not a FHIR
    end-point

## Annexes

### Jeux de données pour exemple

![Figure 3 - Jeu de données](image9.png "Figure 3 - Jeu de données")


| **Healthcare service v2\.4**                                                                                  |
|---------------------------------------------------------------------------------------------------------------|
| ID                                                                                                            | UE1                                                     | UE2                                                     | UE3                                                     | UE4                                      | UE5                                      | UE6                                                                              | UE7                       | UE8                       | UE9                         |
| Age min                                                                                                       | 0 an                                                    | 0 an                                                    | 0 an                                                    | 0 an                                     | 0 an                                     | 0 an                                                                             | 0 an                      | 0 an                      | 0 an                        |
| Age max                                                                                                       | 100 ans                                                 | 5 ans                                                   | 100 ans                                                 | 100 ans                                  | 100 ans                                  | 100 ans                                                                          | 100 ans                   | 100 ans                   | 100 ans                     |
| Activité opérationnelle                                                                                       | 148 Urgences spécialisées cardiologiques                | 148 Urgences spécialisées cardiologiques                | 148 Urgences spécialisées cardiologiques                | 148 Urgences spécialisées cardiologiques | 055 Hématologie                          | 070 Imagerie par scanner \(TDM\)                                                 | 087 Médecine nucléaire    | 100 Obstétrique           | 102 Oncologie\-cancérologie |
| Acte Spécifique                                                                                               | 1045 Coordination de la prise en charge du COVID long   | 1045 Coordination de la prise en charge du COVID long   | 1045 Coordination de la prise en charge du COVID long   |                                          |                                          |                                                                                  |                           | 1026 Colposcopie          |                             |
| Catégorie organisation                                                                                        | 73 Gestion de cas MAIA                                  | 66 Equipe Relai Handicap rare                           |                                                         |                                          | 43 Unité d’aide par le travail \(ESAT\)  | 80 Centre de Soins, d’Accompagnement et de Prévention en Addictologie \(CSAPA\)  |                           |                           |                             |
| Accueil séquentiel accepté                                                                                    |                                                         |                                                         |                                                         |                                          | Oui                                      |                                                                                  |                           |                           |                             |
| Date dernière maj                                                                                             | 2022\-11\-01T12:00:00\.00                               | 2022\-11\-02T12:00:00\.00                               | 2022\-11\-03T12:00:00\.00                               | 2022\-11\-04T12:00:00\.00                | 2022\-11\-04T12:00:00\.00                | 2022\-11\-04T12:00:00\.00                                                        | 2022\-11\-04T12:00:00\.00 | 2022\-11\-04T12:00:00\.00 | 2022\-11\-04T12:00:00\.00   |
|                                                                                                               |
| :above                                                                                                        | https://hl7\.org/fhir/search\.html\#recursive           |
| Indique que la recherche est effectuée sur n’importe quel niveau d’une hiérarchie de référence circulaires\.  |
| Préfixe de comparaison                                                                                        |                                                         |
| gt  , lt, ge, le, sa & eb                                                                                     | https://www\.hl7\.org/fhir/search\.html\#date           |
| Permet de faire des recherches comparatives                                                                   |
[^1]: <https://www.hl7.org/fhir/http.html#search> et
    <https://www.hl7.org/fhir/http.html#general>

[^2]: <https://www.hl7.org/fhir/bundle.html>

[^3]: <https://www.hl7.org/fhir/operationoutcome.html>

[^4]: <https://www.hl7.org/fhir/search.html#chaining>

[^5]: <http://hl7.org/fhir/location.html#positional>

[^6]: <https://www.hl7.org/fhir/search.html#chaining>

[^7]: <https://www.hl7.org/fhir/search.html#chaining>