# Georeferentie in uitwisseling
Wanneer men in een bepaalde toepassing of softwarepakket werkt, bevindt een model zich binnen deze toepassing in een assenstelsel. Dit is nodig om op een systematische, eenduidige en wiskundige manier locaties en vormen in ruimte te kunnen vastleggen, verwerken en communiceren. Wanneer men modellen wil delen of combineren buiten deze toepassing of softwarepakket kan men dit in open uitwisselformaat uitwisselen. Hieronder volgt een overzicht van verschillende open uitwisselformaten en de manieren waarop men georeferentie hierin kan doen. 

## Industry Foundation Classes (IFC)
IFC is een uitwisselformaat bedoeld voor het uitwisselen van de Architectuur, Bouwwerk en Constructie Informatie. Het is een software-onafhankelijk open dataformaat. Binnen het IFC-schema is het mogelijk om de volgende attributen voor georeferentie te gebruiken: 

- Binnen IFC (4X3) kan men [IfcPostalAddress](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcPostalAddress.htm) gebruiken om level 10 georeferentie modellen uit te wisselen. 
- Binnen IFC (4X3) kan men met de attributen RefLatitude, RefLongitude en RefElevation [IfcSite](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcSite.htm) Level 20 georeferentie modellen uitwisselen. 
- Binnen IFC (4X3) kan men [IfcAxis2Placement3D](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcAxis2Placement3D.htm) gebruiken om level 30 georeferentie modellen uit te wisselen. Met de attributen Location, Axis en RefDirection kan locatie en richting meegegeven worden.
- Voor Georeferentie level 40 kan men [IfcGeometricRepresentationContext](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcGeometricRepresentationContext.htm) gebruiken. 
- [IfcMapConversion](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcMapConversion.htm) gebruikt men binnen IFC (4X3) voor het beschrijven van georeferentie op level 50. Er is een attribuut SourceCRS, TargetCRS, attributen voor verplaatsing, verdraaiing en schaling. 
- Er is geen klasse binnen IFC (4X3) die ondersteunt in georeferentie 60. Een work-around is de mogelijkheid om gebruik te maken van generic property sets ([IfcPropertySet](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcPropertySet.htm)) voor het opslaan van informatie over de controlepunten voor deze methodiek. Dit wordt momenteel niet ondersteund.  

<aside class="note" title="Gebruik IfcMapConversion">
  <p>**AANBEVELING** Gebruik IfcMapConversion voor georeferentie van BIM in IFC t.b.v combinatie Geo en BIM.</p>
</aside>

IFC MapConversion kan zowel gebruikt worden voor het transformeren van BIM naar Geo als van Geo naar BIM. Vanuit een digitaal 3D-stadsmodel in CityGML of CityJSON kan een deel van dit model naar IFC exporteren. Dit deel kan dan op een 0-punt worden gepositioneerd. In de IfcMapconversion-attributen kunnen de transformatiewaarden worden ingevuld. 

### IFC 5 (JSON)
IFC 5 is een momenteel in ontwikkeling. Het is een herstructurering van het huidige IFC schemas. De functionaliteit van de huidige schema's wil men behouden, maar de technische basis en serialisatie veranderen. Waar de huidige IFC-schema's op STEP zijn gebaseerd, is het IFC 5 schema op JSON gebaseerd. 

Voor geometrie maakt IFC 5 gebruik van USD-formaat (Universal Scene Description), voor geometrie, bijvoorbeeld usdgeom::mesh – veelhoekig oppervlaktemodel. Er zijn nog geen vastgestelde afspraken over georeferentie. Wel zijn in de eerste verkenningen de elementen van IfcMapConversion terug te zien, maar dan als json attributen. 

## DWG/DXF
Wanneer men in 2D vectorsoftware werkt die geen .ifc bestand kan exporteren zijn er ook mogelijkheden voor georeferentie. De objecten in de DXF worden bij voorkeur getekend in een coördinatenruimte die matcht met een geprojecteerd CRS (zoals EPSG:28992 of EPSG:3857). De coördinaten zijn dan in meters, zoals in het coordinatenstelsel. Voorbeeld: een lijn van punt(110000, 450000) naar punt (110500, 450500) is dan correct gepositioneerd in RD-coördinaten.

<aside class="note" title="Teken wanneer mogelijk op RD in 2D-Vectorsoftware">
  <p>**AANBEVELING** Teken wanneer mogelijk in RD coordinaten in 2D vectorsoftware (CAD)</p>
</aside>

Dit is niet in alle software mogelijk. Bij software die alleen werkt met lokale coordinaten is het lastig om op coordinaat 110000 - 450000 te werken, omdat dit heel ver uit het centrale punt van deze software, punt 0,0 ligt. 

Een DXF-bestand zelf bevat geen informatie waarmee aangeduid wordt dat de waardes van de geometrie bedoeld is als RD-coördinaten. Het is mogelijk om de attributen vanuit IfcMapconversion als extra bestand mee te geven naast de .dxf als een .WKT, .PROJ of .JSON file. 

<aside class="note" title="Voorzie in een extra bestand voor Georeferentie">
  <p>**AANBEVELING** Voorzie in een extra bestand in .WKT volgens [WKT-CRS](https://www.ogc.org/standards/wkt-crs/) of in een .PROJ conform [PROJ](https://proj.org/en/stable/specifications/) wanneer de georeferentie en het gebruikt crs niet in het bronbestand is gedefinieerd. </p>
</aside>

## GML 
[GML](https://www.ogc.org/standards/gml/) geeft de mogelijkheid om een verwijzing te maken naar een standaard CRS-en gedefinieerd door EPSG. Daarnaast geeft GML de mogelijkheid om een Engineering CRS te definieren. Het is mogelijk om dit lokaal coördinatenstelsel te verbinden aan een bekend coordinatenstelsel als RD-NAP waardoor het voor uitwisseling, visualisatie en analyse gebruikt kan worden. 

### CityGML 
CityGML is een open datamodel en uitwisselformaat voor de representatie van 3D-geo-informatie. Het gebruikt GML als onderliggende structuur. De CityGML standaard biedt twee mogelijkheden om een coordinatenstelsel te duiden voor het model. De voorkeur is om een totaal cordinatenstelsel voor een dataset te duiden. Dit doet men in de gml:Envelope die gebruikt wordt om de ruimtelijke begrenzing (bounding box) van de dataset aan te geven. 

<aside class="note" title="Teken wanneer mogelijk op RD in 2D-Vectorsoftware">
  <p>**AANBEVELING** Refereer naar een URI van een standaard CRS of een uri van een zelf gehoste CRS. Wanneer dit niet mogelijk is kan men het Engineered CRS in een (City)GML bestand definieren. </p>
</aside>
  
Een voorbeeld van georeferentie in GML en CityGML vindt men in de Bijlage B

## CityJSON
In CityJSON moet, anders dan in CityGML, één coordinatenstelsel voor het totaalmodel worden geduid. Dit doet men in het attribuut "Metadata": { 
  ReferenceSystem: "https://www.opengis.net/def/crs/EPSG/0/7415",
}

Het is mogelijk om met het attribuut: "Transform" een verplaatsing en verschaling van een model te duiden. Dit kan voor een 0-punt Geo- dataset zorgen en de hoeveelheid data reduceren. 
 
## Geopackage
[GeoPackage](https://www.geopackage.org/spec140/index.html) staat naast GML als uitwisselformaat op de Pas-toe-leg-uit lijst. Dit formaat is een OGC Standaard  is geschikt voor georeferentie wanneer men werkt met 2D GeoBIM modellen die gemodelleerd worden op een al bekend crs (Bijvoorbeeld RD-NAP of WGS84). Geopackage is OGC standaard die zich baseert op een databaseformaat (SQL-lite). In de tabel gpkg_spatial_ref_sys waarin de informatie voor coordinatenstelsel kan worden opgeslagen. De geopackage standaard heeft geen vaste manier om een engineerdCRS te duiden. Wanneer de SourceCRS een lokaal gedefinieerd grid is, is dit uitwisselformaat minder geschikt.

Een Geopackage slaat in de tabel gpkg_spatial_ref_sys de volgende waarden op: 
| Kolom | Kolom Beschrijving |
|----|---|
| srs_name | mens-leesbare naam van de SRS |
| srs_id | id van een SRS |
| organization | naam van definierende organisatie |
| organization_coordsys_id | id van crs |
| definition | Well known text representatie van de SRS |

# API
Conform de [OGC-API's](https://ogcapi.ogc.org/) kan men een server bevragen op de collecties die deze aanbiedt. Door met een OGC-API Features een HTTP GET request naar collecties te doen krijgt men een lijst met de beschikbare collecties. Als men vervolgens een specifieke collectie bevraagt kan men een lijst van coordinaatreferentiesystemen inzien in de property "crs" waarmee de items door de server geleverd kunnen worden. 

Zo kan men vanuit de PDOK-API bij features van de BGT kiezen uit: 
```
 "crs": [
  "http://www.opengis.net/def/crs/OGC/1.3/CRS84",
  "http://www.opengis.net/def/crs/EPSG/0/28992",
  "http://www.opengis.net/def/crs/EPSG/0/3857",
  "http://www.opengis.net/def/crs/EPSG/0/4258"
 ],
 "storageCrs": "http://www.opengis.net/def/crs/EPSG/0/28992",
 ```

Zo levert: 
▪ GET /collections/{collectionId}/items/{featureId}
  ▪ een specifiek item uit de collectie in de default CRS
▪ GET /collections/buildings/items?crs={crsuri}
  ▪ en specifiek item uit de collectie in de benoemde CRS

De OGC-API features geeft geen beperking op het definiëren van CRS-en. Het is daarmee ook mogelijk om met de OGC-API features te leveren in een lokaal gedefinieerd eigen coordinatenstelsel. 

Om een dataset met een OGC API-features aan te bieden dient men met een URI de CRS te identificeren. Die URI moet verwijzen naar een beschrijving van het CRS zodat een client het kan begrijpen of ophalen.

Wanneer men als client een server bevraagt met een CRS (gedefinieerd door EPSG of lokaal) dat niet geimplementeerd is door de server zal deze een foutmelding geven. 

Wanneer men met een lokaal CRS bevragingen zou willen doen aan een server die niet voorziet in dit CRS kan het mogelijk zijn om met OGC API Processes een transformCRS te duiden met input de sourceCRS, targetCRS en de coördinaten. De uitput is de getransformeerde coordinaten in het door de server geaccepteerde stelsel. Dit lijkt op deze service https://epsg.io/transform in API-vorm. 
