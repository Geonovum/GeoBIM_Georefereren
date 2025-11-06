# Methodes van Georeferentie

Er zijn verschillende methodes beschikbaar om een BIM en GEO modellen bij elkaar te brengen op de kaart. Deze methoden verschillen in nauwkeurigheid en mogelijkheid voor het bijeenbrengen van modellen. Dit wordt door Clemen Christian beschreven als Levels van georefereren [[Christian2019]].

Het is mogelijk om een BIM-model op de kaart te zetten door alleen het adres van waar het BIM-model dient te komen te duiden. Deze informatie geeft een indicatie van waar het model moet komen. De informatie is niet toereikend om het model exact te plaatsen, roteren en schalen. Een andere methode zoals het model plaatsen in een officieel coordinatenstelsel is hiervoor wel geschikt. Afhankelijk van de behoefte zijn verschillende methodes geschikt.

De beschikbaarheid van informatie voor het berekenen van georeferentie-parameteres voor de verschillende methoden is onderzocht door de TU Delft. [[Hakim2024]] 

| Methode                                       | Level | Beschrijving | Plaatsing     |  Rotatie      | Schaal        |
|-----------------------------------------------| ----  | ------------ | ------------- |-------------- | ------------- |
| <img src="media/georefereren_Level_10.png" alt="Georeferentie level 10" title="Georeferentie Level 10" width="200"> | 10 |Met deze methode wordt alleen de locatie waar een model moet komen benoemd. Bijvoorbeeld een adres als "Barchman Wuytierslaan 10, Amersfoort" in een model op te nemen. Men weet hierdoor op welk adres het model moet komen, maar exacte plaatsing, rotatie en schaling is hier niet uit te bepalen.     | Niet mogelijk | Niet mogelijk | Niet mogelijk | 
| <img src="media/georefereren_Level_20.png" alt="Georeferentie level 20" title="Georeferentie Level 20" width="200">  | 20 | Met deze methode duidt men één enkel (lat-lon) punt waar het model geplaatst moet worden. Bijvoorbeeld met het coordinaat "52.152494076977185, 5.3720554951931385". Plaatsing van het model op de juiste plek, zowel in 2D als 3D wordt hiermee mogelijk. Rotatie en schalen van het model blijft niet mogelijk. | Mogelijk      | Niet mogelijk | Niet mogelijk |
| <img src="media/georefereren_Level_30.png" alt="Georeferentie level 30" title="Georeferentie Level 30" width="200">                | 30 | Met deze methode wordt aan het grondvlak van een model een coordinaat toegekend. Ook is het mogelijk om de rotatie ten opzichte van het Noorden te duiden. Het schalen van het model is niet mogelijk.  | Mogelijk      | Eventueel mogelijk | Niet mogelijk |
| <img src="media/georefereren_Level_40.png" alt="Georeferentie level 40" title="Georeferentie Level 40" width="200">         | 40| Met deze methode wordt haan het totaal model een coordinaat toegekend, en ook de rotatie ten opzichte van Noorden kan men duiden. Het schalen van het model is niet mogelijk.  | Mogelijk      | Eventueel mogelijk | Niet mogelijk |
| <img src="media/georefereren_Level_50.png" alt="Georeferentie level 50" title="Georeferentie Level 50" width="200">      | 50 | Met deze methode geeft men aan wat het oorspronkelijk coordinatenstelsel was waarin het model is gemodelleerd. Daarnaast geeft men in het model aan naar welk coordinatenstelsel een coversie gedaan  wordt. Heeft men bijvoorbeeld gemodelleerd vanuit een lokaal assenstelsel (0,0,0) dan kan men beschrijven welke verplaatsing, rotatie en verschaling men moet toepassen om op de bedoelde locatie in het RijksDriehoeksstelsel (RD) te landen. | Mogelijk      | Mogelijk              | Mogelijk |
| <img src="media/georefereren_Level_60.png" alt="Georeferentie level 60" title="Georeferentie Level 60" width="200">      | 60| Met deze methode koppelt men punten in model aan ingemeten punten tijdens constructie aan coordinaten in een specifiek coordinatenstelsel.   | Mogelijk      | Mogelijk | Mogelijk |

<div class="advisement">
_AANBEVELING_ Gebruik minimaal Georeferentie level 50 in de combinatie van Geo en BIM. Gebruik tooling om modellen die hier niet aan voldoen te verrijken met georeferentie informatie conform level 50.  
</div>

## 1D-, 2D- en 3D-Geo- en -BIM-modellen

Zowel BIM- als GEO-modellen kunnen een 1D, 2D als 3D coordinatenstelsel gebruiken. Om een juiste transformatie van coordinaten van 2D en 3D modellen te krijgen kunnen verschillende methoden worden toegepast.  

Een GEO coordinatenstelsel kan 3D (EPSG:7415), 2D (EPSG:28992) of 1D (EPSG:5709) zijn. 

| Van (bron)          | Naar (target)     |  Mogelijkheid | 
| -----------   | -------   | ------------- |
| 2D GEO/BIM        | 2D GEO/BIM    | 2D Helmert (gelijkvormigheidstransformatie Refereren aan stuk Lennard) transformatie | 
| 2D GEO/BIM   | 3D GEO/BIM     | 2D Helmert transformatie + Interpolatie van z waarde naar target | 
| 3D GEO/BIM        | 2D GEO/BIM    | Optie 1: 3D Helmert transformatie + Maaiveld bron-model transformeren naar z-waarde 0. <br>  Optie 2: Voetafdruk bron-model extraheren en 2D Helmert transformatie | 
| 3D GEO/BIM        | 3D GEO/BIM    | 3D Helmert transformatie | 

Om van geprojecteerd CRS naar een Geografische CRS te gaan is een coordinaatconversie nodig i.p.v. transformatie. Het is mogelijk om conversies van 2D naar 2D of van 3D naar 3D te doen.

De mogelijkheden zijn:
| Van (bron)         | Naar (target)     |  Mogelijkheid | 
| -----------   | -------   | ------------- |
| 2D GEO/BIM (geprojecteerd)       | 2D GEO/BIM (geografisch)   | RDNAPTRANS    |
| 3D GEO/BIM (geprojecteerd)        | 3D GEO/BIM (geografisch)   | RDNAPTRANS    |

## Het hoogtecomponent 
Het planimetrische- en hoogte-component in een geo-databestand is een fundamenteel onderdeel van de dataset. Afwijkingen in deze informatie of verschillen tussen diverse momenten van inwinning of ontwerp kunnen een grote impact hebben. Het correct refereren van het bestand ten opzichte van deze as is daarom essentieel om de juiste stappen te kunnen nemen.

Twee definities zijn hierbij van belang: het lokale en het globale coördinatensysteem. Zoals eerder omschreven, wordt een BIM-model in de toegewezen softwarepakketten vaak in een 0,0,0-referentiesysteem geplaatst. Daarentegen bevatten globale coördinaten grotere waarden, wat ertoe kan leiden dat een dataset vastloopt binnen een applicatie. De documentatie van het gebruikte coördinatensysteem is eveneens cruciaal. Wanneer dit systeem niet correct is vastgelegd, kunnen er problemen ontstaan tijdens de conversie van de hoogtecomponent.

Zelfs als het planimetrische component correct is gerefereerd binnen het bestand, kan er nog steeds een fout in de hoogte voorkomen. Afhankelijk van de wijze waarop het model is opgebouwd, zijn er verschillende benaderingen mogelijk om de hoogtecomponent te refereren.

Er kunnen drie methoden worden onderscheiden waarmee het altimetrische component van het model gerefereerd kan worden:

1. gebruik van survey points in combinatie met de Helmert-transformatie,
2. scan-to-BIM, en
3. geautomatiseerde footprint alignment.

### Kwaliteits kenmerken
Voor het gebruik van een dataset uit het GiS domein zijn er verschillende kenmerken die van belang zijn voor het gebruik binnen een BIM systeem. Niet iedere data is even geschikt om gebruikt te kunnen worden. Om een stap terug te nemen zijn puntenwolken vaak de basis voor veel inwinningen die ook gekoppeld zijn aan BIM modelen. Vanuit de onderzoeken en inniatieven [Bron: IHN/Geonuvmn/DigiGo] kunnen de volgende primaire componenten meegenomen worden:
1. Geografisch distributie van de punten in een puntenwolk;
   Hoeveel punten zijn er beschikbaar in de dataset, en wat is de afstand tussen deze punten? Deze primaire component is direct gekoppeld aan het opstellen van een BIM-model. Hoe meer punten er per oppervlak aanwezig zijn, hoe kleiner de onderlinge afstand wordt, en hoe beter er onderscheid gemaakt kan worden tussen de verschillende objecten. In de praktijk is een hoge puntdichtheid gekoppeld aan een hoger detailniveau van het 3D-model.
3. De absolute en relative nauwkeurigheid van een geo datatset;
4. De classificatie parameters in een geo-dataset.
Daarnaast is de leeftijd van de dataset van belang, aangezien iedere geodataset die wordt weergegeven in een GiS omgeving een moment opname is. Het is nooit het daadwerkelijke realiteit, maar een benadering van de omgeving. Hierdoor kan een omgeving sterk of minder sterk zijn veranderden over tijd van zoals weergegeven in de onderstaande figuren. Waarbij de stations regio van delft is weergeven in het AHN (HwH) en de 3D basis voorziening (kadaster).

![Leefttijd van verschillende puntenwolken van de stations regio in Delft](media/Regio_delft_verandering.png "Verschillende opties van georefereren schematisch weergegeven")


### Hoogte nauwkeurigheden
Het refereren van modellen aan de hand van deze drie opties is in alle gevallen afhankelijk van de betrouwbaarheid van het model zelf. Er zijn verschillende datasets beschikbaar die gebruikt kunnen worden voor het positioneren van de hoogtecomponent. Daarnaast zijn er in Nederland ook verschillende mogenlijkheden voor het gebruik van een coördinatensysteem, wordt er een nieuwe fout geïntroduceerd. Deze fout kan variëren in grootte, van enkele centimeters tot meerdere meters.

Bijvoorbeeld: bij het gebruik van het Actueel Hoogtebestand Nederland (AHN) is er een systematische fout aanwezig in de hoogtecomponent. Voor 95% van de punten bedraagt deze afwijking circa 8 cm ten opzichte van de werkelijkheid. Dit houdt in dat het model in de hoogte al een afwijking van 8 cm kan vertonen wanneer deze dataset wordt toegepast.

### Refereren aan de hand van het hoogtecomponent
Als de planimetrische componenten van de dataset op juiste plek liggen, is het nog steeds van belang om het hoogte component op de juiste manier te referen. Net als het planimetrische component kan de helmert transformatie [BuildingSMART et al. (2020)] en benchmarks gebruikt worden om het de geo data op de juiste plek te krijgen binnen de BIM omgeving. Zie voor de verder uitwerking van de helmert transformatie [PAGINA]. 
De benchmarks kunnne gezien worden als aanknopings punten, die stabiel zijn in het terrein. Hiervoor kan de landmeter een specifiek punt hebben ingewonnen, de gebruiker gebruikt een externe dataset of gebruikt stabiele punten die zowel beschikbaar zijn in het BIM model als de Geo dataset. Hieronder wordt gekeken naar welke "stabiele" punten er beschikbaar zijn:

*Vaste meetpunten in RDNAP*
Voor kleine netwerken worden vaste meetpunten op plekken waarvan met een bepaalde zekerheid gezegd kan worden dat deze niet verstoord of weg kunnen gaan. De meetpunten worden in XYZ bepaald. De bepaling in XY wordt door middel van GNSS uitgevoerd met een nauwkeurigheid van 2-3cm. Er kan gekozen worden om de meetpunten direct via GNSS te bepalen indien dit mogelijk is. Wanneer dit niet mogelijk is, bv als de meetpunten in de muur/wand zitten, worden er tijdelijke punten gemaakt en via tachymetrie de XY bekend gemaakt. Door middel van waterpassing wordt de hoogte (Z) in mm nauwkeurigheid bepaald.

Bij het verwerken van lange netwerken kan er gekozen worden voor referentievelden, deze wordt op dezelfde manier bepaald, maar alleen via GNSS aan elkaar gekoppeld in XY. Voor de hoogte kan een waterpassing uitgevoerd worden per veld.
Het geodetisch netwerk wordt gebruikt om een puntenwolk te geo-refereren, hiervan wordt een BIM model gemaakt. Er kan een controle uitgevoerd worden door de coördinaten en het BIM model te vergelijken.

*Noklijnen*
Uit het IHN-project is gebleken dat er in Nederland belangrijke methoden beschikbaar zijn om data die niet zijn gerefereerd of die geen 3D-informatie bevatten, te koppelen aan bestaande referentiesystemen. Hiervoor kan bijvoorbeeld gebruik worden gemaakt van noklijnen die zijn geëxtraheerd uit het Actueel Hoogtebestand Nederland (AHN). [source: https://www.ahn.nl/integrale-hoogtevoorziening-nederland]
Deze methode, vrij beschikbaar via de dataroom van het AHN, maakt het mogelijk om de beschikbare noklijnen binnen het projectgebied te gebruiken als referentie voor het positioneren van het model ten opzichte van de GIS-laag.
Een aandachtspunt is echter dat deze datasets beschikbaar zijn in GPKG-formaat, waardoor de gebruiker de data handmatig moet converteren naar een DWG-bestand om deze binnen gangbare BIM-software te kunnen gebruiken.

*Straatmeubilair*
Omdat een ingewonnen weg vaak geen woningen bevat, is het gebruik van noklijnen beperkt voor de hoogteregistratie in infrastructurele BIM-modellen buiten stedelijke gebieden. In dergelijke gevallen kan straatmeubilair worden gebruikt, zoals wegmarkeringen, kantverharding of objecten met een duidelijk herkenbare vorm.
Datasets die hierbij van cruciaal belang zijn, zijn het DTB (Digitaal Topografisch Bestand) en het AHN (Actueel Hoogtebestand Nederland). Deze datasets bevatten informatie in 2.5D, wat betekent dat er slechts één hoogtecomponent per coördinaat beschikbaar is. De waarde van dit hoogtecomponent varieert per objecttype. Daarom is het raadzaam om bij grote infrastructuurprojecten het handboek van het DTB te raadplegen. Er wordt onderscheid gemaakt van objecten met een hoge prioriteit en met lage. Dit kan een nauwkuerigheids verschil opleveren tussen de YY cm en ZZ cm. 
In de onderstaande figuur is een BIM-model weergegeven in combinatie met het DTB, waarbij de wegmarkeringen in dit geval goed op elkaar aansluiten. Deze overeenkomst kan worden gebruikt om het hoogtecomponent te realiseren, mits het planimetrische vlak reeds correct is vastgesteld.
Het AHN of een andere puntenwolk in de omgeving kan hiervoor eveneens worden gebruikt. Dit komt doordat de intensiteit, die de basis vormt van een puntenwolk, significant lager is op de weg dan op het omliggende meubilair. Daardoor is het vinden van deze objecten eenvoudiger en kunnen zij gemakkelijk uit de dataset worden geëxtraheerd.

# Georeferentie in uitwisseling
Wanneer men in een bepaalde toepassing of softwarepakket werkt, bevindt het model zich in een assenstelsel. Dit is nodig om op een systematische, eenduidige en wiskundige manier locaties en vormen in ruimte te kunnen vastleggen, verwerken en communiceren. Wanneer men modellen wil delen of combineren buiten deze toepassing of softwarepakket kan men dit in open uitwisselformaat uitwisselen. Hieronder volgt een overzicht van verschillende open uitwisselformaten en de manieren waarop men georeferentie hierin kan doen. 

## Industry Foundation Classes (IFC)
IFC is een uitwisselformaat bedoeld voor het uitwisselen van de Architectuur, Bouwwerk en Constructie Informatie. Het is een software-onafhankelijk open dataformaat. Binnen het IFC-schema is het mogelijk om de volgende attributen voor georeferentie te gebruiken: 

- Binnen IFC (4X3) kan men [IfcPostalAddress](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcPostalAddress.htm) gebruiken om level 10 georeferentie modellen uit te wisselen. 
- Binnen IFC (4X3) kan men met de attributen RefLatitude, RefLongitude en RefElevation [IfcSite](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcSite.htm) Level 20 georeferentie modellen uitwisselen. 
- Binnen IFC (4X3) kan men [IfcAxis2Placement3D](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcAxis2Placement3D.htm) gebruiken om level 30 georeferentie modellen uit te wisselen. Met de attributen Location, Axis en RefDirection kan locatie en richting meegegeven worden.
- Voor Georeferentie level 40 kan men [IfcGeometricRepresentationContext](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcGeometricRepresentationContext.htm) gebruiken. 
- [IfcMapConversion](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcMapConversion.htm) gebruikt men binnen IFC (4X3) voor het beschrijven van georeferentie op level 50. Er is een attribuut SourceCRS, TargetCRS, attributen voor verplaatsing, verdraaiing en schaling. 
- Er is geen klasse binnen IFC (4X3) die ondersteunt in georeferentie 60. Een work-around is de mogelijkheid om gebruik te maken van generic property sets ([IfcPropertySet](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcPropertySet.htm)) voor het opslaan van informatie over de controlepunten voor deze methodiek. Dit wordt momenteel niet ondersteund.  

<div class="advisement">
_AANBEVELING_ Gebruik IfcMapConversion voor georeferentie van BIM in IFC.
</div>

<aside class="example" title="Voorbeeld van georeferentie met IfcMapConversion in IFC">
Voorbeeld van IfcMapConversion in IFC:

```ifc 
#100= IFCCARTESIANPOINT((0.0, 0.0, 0.0));
#101= IFCMAPCONVERSION(
  'Local Engineering CRS',          -- Source CRS (coordinatenstelsel waarin gemodelleerd is)
  'EPSG:7415',                      -- Target CRS (coordinatenstelsel waarin gepositioneerd wordt)
  #100,                          -- Lokaal ankerpunt
  155000.0,                     -- Oostelijke verplaatsing
  463000.0,                     -- Noordelijke verplaatsing
  3.55,                        -- Hoogte verplaatsing
  1.0,                         -- Richting van de X-as
  0.0,                         -- Richting van de Y-as
  1.0                          -- Schaal
);
```
</aside>

IFC MapConversion kan zowel gebruikt worden voor het transformeren van BIM naar Geo als van Geo naar BIM. Vanuit een digitaal 3D-stadsmodel in CityGML of CityJSON kan een deel van dit model naar IFC exporteren. Dit deel kan dan op een 0-punt worden gepositioneerd. In de IfcMapconversion-attributen kunnen de transformatiewaarden worden ingevuld. 

### IFC 5 (JSON)
IFC 5 is een momenteel in ontwikkeling. Het is een herstructurering van het huidige IFC schemas. De functionaliteit van de huidige schema's wil men behouden, maar de technische basis en serialisatie veranderen. Waar de huidige IFC-schema's op STEP zijn gebaseerd, is het IFC 5 schema op JSON gebaseerd. 

Voor geometrie maakt IFC gebruik van USD-formaat (Universal Scene Description), voor geometrie, bijvoorbeeld usdgeom::mesh – veelhoekig oppervlaktemodel. Er zijn nog geen vastgestelde afspraken over georeferentie. Wel zijn in de eerste verkenningen de elementen van IfcMapConversion terug te zien, maar dan als json attributen. 

## DWG/DXF
Wanneer men in 2D vectorsoftware werkt die geen .ifc bestand kan exporteren zijn er ook mogelijkheden voor georeferentie. De objecten in de DXF worden bij voorkeur getekend in een coördinatenruimte die matcht met een geprojecteerd CRS (zoals EPSG:28992 of EPSG:3857). De coördinaten zijn dan in meters, zoals in het coordinatenstelsel. Voorbeeld: een lijn van punt(110000, 450000) naar punt (110500, 450500) is dan correct gepositioneerd in RD-coördinaten.

_AANBEVELING_ Teken een ontwerp op RDNAP coordinaten.

Dit is niet in alle software mogelijk. Bij software die alleen werkt met lokale coordinaten is het lastig om op coordinaat 110000 - 450000 te werken, omdat dit heel ver uit het centrale punt van deze software, punt 0,0 is. 

Een DXF-bestand zelf bevat geen informatie waarmee aangeduid wordt dat de waardes van de geometrie bedoeld is als RD-coördinaten. Het is mogelijk om de attributen vanuit IfcMapconversion als extra bestand mee te geven naast de .dxf als een .WKT, .PROJ of .JSON file. 

_AANBEVELING_ Voorzie in een extra bestand in .WKT volgens [WKT-CRS](https://www.ogc.org/standards/wkt-crs/) of in een
.PROJ of .JSON file conform [PROJ](https://proj.org/en/stable/specifications/) of [PROJJSON](https://proj.org/en/stable/specifications/projjson.html) wanneer de georeferentie en het gebruikt crs niet in het bronbestand is gedefinieerd. 

**Schaal**: Het attribuut "Scale" kan men gebruiken om de schaal van het model aan te geven. Wanneer een bron in milimeters is getekend en de target omgeving in meters, dan kan men dat met de schaal (waarde 0.001) aangeven. 

Wanneer voor georeferentie een precisie van milimeters belangrijk is dient men daarnaast een correctie van horizontale afstanden voor lijnvergroting mee te nemen. 

De formule om deze correctie te berekenen is: 
$$
\Delta \ell = -9,2 + \frac{r_i^2}{1629^2} \text{ mm per 100 m}
$$
gemiddelde coördinaten in km van de eindpunten in het RD-stelsel zijn

## CityGML 
CityGML is een open datamodel en uitwisselformaat voor de representatie van 3D-geo-informatie. De CityGML standaard biedt twee mogelijkheden om een coordinatenstelsel te duiden voor het model. De voorkeur is om een totaal cordinatenstelsel voor een dataset te duiden. Dit doet men in de gml:Envelope die gebruikt wordt om de ruimtelijke begrenzing (bounding box) van de dataset aan te geven. 

Een voorbeeld van georeferentie in CityGML vindt men in de Bijlage B

## CityJSON
In CityJSON moet, anders dan in CityGML, één coordinatenstelsel voor het totaalmodel worden geduid. Dit doet men in het attribuut "Metadata": { 
  ReferenceSystem
}

Het is mogelijk om met het attribuut: "Transform" een verplaatsing en verschaling van een model te duiden. Dit kan voor een 0-punt Geo dataset zorgen en de hoeveelheid data reduceren. 

## Wel Known CRS en Engineered CRS 

GML geeft de mogelijkheid om een engineered CRS uit te drukken. Dit is een lokaal coördinatenstelsel dat niet op de aarde is gebaseerd. Het is mogelijk om dit lokaal coördinatenstelsel te verbinden aan een bekend coordinatenstelsel als RD-NAP waardoor het voor uitwisseling, visualisatie en analyse gebruikt kan worden. 

_AANBEVELING_ Refereer naar een URI van Well Known CRS of een uri van een zelf gehoste CRS. Wanneer dit niet mogelijk is kan men het lokaal CRS in het CityGML of CityJSON bestand definieren.    

## Geopackage
GeoPackage staat naast GML als uitwisselformaat op de Pas-toe-leg-uit lijst. Dit formaat is geschikt voor georeferentie wanneer men werkt met 2D GeoBIM modellen die gemodelleerd worden op een al bekend crs (Bijvoorbeeld RD-NAP of WGS84). Geopackage is OGC standaard die zich baseert op een databaseformaat (SQL-lite). In de tabel gpkg_spatial_ref_sys waarin de informatie voor coordinatenstelsel kan worden opgeslagen. De geopackage standaard heeft geen vaste manier om een engineerdCRS te duiden. Wanneer de SourceCRS een lokaal gedefinieerd grid is, is dit uitwisselformaat minder geschikt.

Opslag van dit CRS in de tabel gpkg_spatial_ref_sys in het bestand

# API
Conform de OGC-API's kan men een server bevragen op de collecties die deze aanbiedt. Door een HTTP GET request naar de collecties te doen krijgt men een lijst met de beschikbare collecties. Als men vervolgens een specifieke collectie bevraagt kan men een lijst van coordinaatreferentiesystemen inzien waarmee de items door de server geleverd kunnen worden. 

Zo kan men kiezen bij features van de BGT uit: 
```
 "crs": [
  "http://www.opengis.net/def/crs/OGC/1.3/CRS84",
  "http://www.opengis.net/def/crs/EPSG/0/28992",
  "http://www.opengis.net/def/crs/EPSG/0/3857",
  "http://www.opengis.net/def/crs/EPSG/0/4258"
 ],
 "storageCrs": "http://www.opengis.net/def/crs/EPSG/0/28992",
 ```

Zo levert 
▪ GET /collections/{collectionId}/items/{featureId}
  ▪ een specifiek item uit de collectie in de default CRS
▪ GET /collections/buildings/items?crs={crsuri}
  ▪ en specifiek item uit de collectie in de benoemde CRS

  ```
  Zo levert de call: 

  GET: https://api.pdok.nl/lv/bgt/ogc/v1/collections/pand/items/83acbb08-48d6-5f5f-aa45-d45d8a52a95d

  het model in CRS84, dat is de default

  en 

  GET: https://api.pdok.nl/lv/bgt/ogc/v1/collections/pand/items/83acbb08-48d6-5f5f-aa45-d45d8a52a95d?crs=http%3A%2F%2Fwww.opengis.net%2Fdef%2Fcrs%2FEPSG%2F0%2F28992

  Geeft dit Pand in EPSG:28992
```

De OGC-API features geeft geen beperking op het definiëren van CRS-en. Het is daarmee ook mogelijk om met de OGC-API features te leveren in een lokaal gedefinieerd eigen coordinatenstelsel. 

Om een dataset met een OGC API-features aan te bieden dient men met een URI de CRS te identificeren. 

```
Een bekende CRS is dan: 

"crs": "http://www.opengis.net/def/crs/EPSG/0/7415"

Een onbekende CRS kan zijn: 
"crs": "https://example.com/crs/Engineered_CRS_Project_ABC"
```
Die URI moet verwijzen naar een beschrijving van het CRS (zodat een client het kan begrijpen of ophalen).

Deze beschrijving van de CRS bevat: 

<gml:parameterValue>
<gml:ParameterValue>
<gml:value uom="9110">52.0922178</gml:value>
<gml:operationParameter xlink:href="https://epsg.org/api/v1/CoordOperationParameter/8801/export?format=gml"/>
</gml:ParameterValue>
</gml:parameterValue>
<gml:parameterValue>
<gml:ParameterValue>
<gml:value uom="9110">5.23155</gml:value>
<gml:operationParameter xlink:href="https://epsg.org/api/v1/CoordOperationParameter/8802/export?format=gml"/>
</gml:ParameterValue>
</gml:parameterValue>
<gml:parameterValue>
<gml:ParameterValue>
<gml:value uom="9201">0.9999079</gml:value>
<gml:operationParameter xlink:href="https://epsg.org/api/v1/CoordOperationParameter/8805/export?format=gml"/>
</gml:ParameterValue>
</gml:parameterValue>
<gml:parameterValue>
<gml:ParameterValue>
<gml:value uom="9001">155000</gml:value>
<gml:operationParameter xlink:href="https://epsg.org/api/v1/CoordOperationParameter/8806/export?format=gml"/>
</gml:ParameterValue>
</gml:parameterValue>
<gml:parameterValue>
<gml:ParameterValue>
<gml:value uom="9001">463000</gml:value>
<gml:operationParameter xlink:href="https://epsg.org/api/v1/CoordOperationParameter/8807/export?format=gml"/>
</gml:ParameterValue>
</gml:parameterValue>

Projectie van geodetisch CRS naar plat vlak
| EPSG coordinaat operatie parameter |Betekenis | 
| ----|---|
| 8001|breedte van de natuurlijke oorsprong (lat) |
| 8802|lengte van de natuurlijke oorsprong (lon)  |
| 8805|schaalfactor op de natuurlijke oorsprong   | 
| 8806|Oostelijke verplaatsing (x 0-offset)       | 
| 8807|Noordelijke verplaatsing (y 0-offset)      |


Transformatie tussen een lokaal en een geodetisch systeem (Helmert Transformatie)
| EPSG coordinaat operatie parameter |Betekenis | 
| ----|---|
| 8605|Translatie in X |
| 8606|Translatie in Y |
| 8607|Translatie in Z | 
| 8608|Rotatie om X-as | 
| 8609|Rotatie om Y-as |
| 8610|Rotatie om Z-as |
| 8611|Schaalverschil  |

Transformatie tussen een lokaal en een geprojecteerd systeem (Affine Transformatie)
| EPSG coordinaat operatie parameter |Betekenis | 
| ----|---|
| 8605|Translatie in X |
| 8606|Translatie in Y |
| 8607|Translatie in Z | 
| 8608|Rotatie om X-as | 
| 8609|Rotatie om Y-as |
| 8610|Rotatie om Z-as |
| 8611|Schaalverschil  |

| EPSG method |Betekenis | 
| ----|---|
|1031 of 9603|3D helmert transformatie| () 
|9623 |2D Affine-Transformatie|
| bestaat niet | 3D Affine-Transformatie | 
