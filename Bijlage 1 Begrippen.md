# Bijlagen 
## Definities en afkortingen

**<dfn>EPSG</dfn>**<br>
<a>EPSG</a> is de afkorting voorEuropean Petroleum Survey Group, de oorspronkelijke organisatie die de standaardisatie van coördinaatreferentiesystemen heeft opgezet. Hun codes zijn nu wereldwijd dé referentie in GIS, geodesie en cartografie. Van oorsprong is de EPSG  een organisatie opgericht door de Europese olie- en gasindustrie om geodetische en cartografische standaarden te ontwikkelen. Ze wilden een uniforme lijst van coördinaatreferentiesystemen (CRS) en transformaties vastleggen, zodat geografische data wereldwijd correct en consistent kon worden gebruikt. De EPSG Geodetic Parameter Dataset, een internationale standaardcatalogus met codes (zoals EPSG:4326 voor WGS84 en EPSG:5709 voor NAP). Tegenwoordig wordt de EPSG-database onderhouden door de International Association of Oil & Gas Producers (IOGP), via hun Geomatics Committee.<br>
<br>
**<dfn>CRS</dfn>**<br> 
Coördinaat Referentie Systeem. Een systeem waarmee een gebied wordt ingedeeld zodat ieder punt binnen dat gebied eenduidig kan worden bepaalt. Een CRS kan een lokaal karakter hebben, bijvoorbeeld het grid volgens systematiek 'A-1' op de bouw tot wereldwijd, in de vorm van WGS84.<br>
<br>
**<dfn>SRS</dfn>:**<br>
Spatial Reference System (SRS), is een ander term voor coördinaatreferentiesysteem (CRS). Het is in beide gevallen een raamwerk waarmee locaties op aarde eenduidig worden vastgelegd en gemeten in coördinaten. Het bepaalt hoe geografische data wordt gekoppeld aan een positie op aarde.<br>
<br>
**<dfn>Geodetische CRS</dfn>** <br>
Een Geodetische CRS (Coordinate Reference System) is een coördinaatreferentiesysteem dat gebaseerd is op de ronde vorm van de aarde (meestal een ellipsoïde) om locaties op aarde nauwkeurig te beschrijven. WGS84 (wereldwijd) of ETRS89 voor het Europese continent zijn voorbeelden hiervan. Positie wordt normaliter uitgedrukt lengtegraad (longitude of kortweg lon.) en in breedtegraad (latitude of kortweg lat.) <br>
<br>
**<dfn>Geprojecteerd CRS</dfn>** <br>
Een Geprojecteerd CRS (Coordinate Reference System) is een coördinaatreferentiesysteem waarin de kromme, driedimensionale vorm van de aarde (zoals beschreven door een geodetische CRS) wordt afgebeeld op een plat vlak met behulp van een kaartprojectie.Het RD (Rijksdriehoeksstelsel) is een voorbeeld van een geprojecteerd CRS<br>
<br>
**<dfn>Vertikaal CRS</dfn>** <br>
Een coördinaatreferentiesysteem dat gebruikt wordt om hoogtes of dieptes ten opzichte van een referentievlak vast te leggen. Waar een geodetisch CRS werkt met breedte- en lengtegraad, en een geprojecteerd CRS met x- en y-coördinaten op een plat vlak, richt een verticaal CRS zich uitsluitend op de z-as: de hoogte of diepte. NAP is een voorbeeld van een vertikaal CRS. Deze is gereistreerd onder EPSG:5709)<br>
<br>
**<dfn>Samengesteld CRS</dfn>** <br>
Een Samengesteld CRS (Compound Coordinate Reference System) is een coördinaatreferentiesysteem dat ontstaat door twee of meer afzonderlijke CRS’en te combineren. Het wordt vaak gebruikt wanneer je zowel horizontale als verticale coördinaten nodig hebt om een positie volledig te beschrijven. Voor BIM geldt dat RD en NAP worden gecombineerd vanuit 2 verschillende CRS systemen. EPSG:28992 voor RD (x,y) en EPSG:5709 voor NAP (z). Het samengestelde CRS is EPSG:7415.<br>
<br>
**<dfn>Lokaal CRS</dfn>** of **<dfn>Engineering CRS</dfn>** <br>
Een lokale assenstelsel bepaald voor de bouw. Het 'grid A-1' en de coordinaten dit hieruit voortkomen zijn een voorbeeld van een  lokaal CRS. De projectie naar RD kan wordt vastgelegd met de translatie en rotatie zoals deze wordt vastgesteld in de <a>IFCmapconverion</a>.<br>
<br>
**<dfn>Scan-to-BIM</dfn>** <br>
Term om met technieken en software hulpmiddelen inmetingen om te zettten 3D objecten.<br> 
<br>
**<dfn>Ellipsoïdische coördinaten</dfn>** of **geografische coördinaten**<br>Coördinaten voor een ronde aarde. Bijvoorbeeld uitgedrukt als lon. 4.8952°E lat. 52.3702°N voor WGS84 (wereld) en ETRS89 (Europa)<br>
<br>
**<dfn>Geocentrische coördinaten</dfn>** <br> Geocentrische coördinaten zijn coördinaten die een positie op of nabij de aarde beschrijven ten opzichte van het zwaartepunt van de aarde. In plaats van latitude/longitude (hoekmaten) of een projectie op een vlak, gebruik je hier een cartesisch 3D-stelsel (X, Y, Z) dat in het centrum van de aarde begint. Deze worden in de bouw niet gebruikt.<br>
<br>
**<dfn>Kaartprojectie</dfn>**<br>
een wiskundige methode om de kromme, driedimensionale vorm van de aarde (of een deel daarvan) af te beelden op een plat tweedimensionaal vlak. Omdat de aarde bolvormig (ellipsoïdaal) is, kan ze nooit zonder vervorming volledig plat worden weergegeven. Kaartprojecties zijn dus altijd een compromis tussen vorm, afstand, richting en oppervlakte.<br>
<br>
**<dfn>Ellipsoïdische hoogte</dfn>** <br>
Ellipsoïdische hoogte is de hoogte van een punt ten opzichte van een referentie-ellipsoïde (een wiskundig model van de aarde). Het is de hoogte die je rechtstreeks krijgt uit GNSS/GPS-metingen, omdat satellietsystemen werken met een ellipsoïde zoals WGS84.<br>
<br>
**<dfn>Orthometrische hoogte</dfn>** <br> de hoogte van een punt boven het geoïde (het gemiddeld zeeniveau), gemeten langs de richting van de zwaartekracht. Het is de hoogte die in de praktijk het meest betekenisvol is, omdat ze aansluit bij ons dagelijks begrip van “hoogte boven zeeniveau”.<br>
<br>
**<dfn>Quasi-geoïdemodel</dfn>** <br>
Een quasi-geoïdemodel is een wiskundig model dat de vorm van de geoïde (gemiddeld zeeniveau) benadert en gebruikt wordt om GNSS-hoogtes (ellipsoïdale hoogtes) om te rekenen naar fysische hoogtes zoals NAP.<br>
<br>
**<dfn>Coördinaattransformatie</dfn>:** <br>
Een coördinaattransformatie is het proces waarbij coördinaten van een punt of dataset worden omgerekend van het ene coördinaatreferentiesysteem (CRS) naar een ander. Dit is nodig omdat er wereldwijd verschillende CRS’en bestaan (bijvoorbeeld WGS84, RD, NAP), die elk hun eigen referentie-ellipsoïde, projectie of referentievlak gebruiken.<br>
<br>
**<dfn>2D gelijkvormigheidstransformatie</dfn>** <br>
Een 2D gelijkvormigheidstransformatie (ook wel Helmert-transformatie genoemd) is een wiskundige transformatie die een vlakke coördinatenruimte (2D) omzet naar een andere, waarbij de vorm en verhoudingen behouden blijven. Het wordt veel gebruikt in de geodesie en GIS om coördinaten van het ene stelsel naar het andere te transformeren.<br>
<br>
**<dfn>Kleinste kwadratenschatting</dfn>** <br>
Kleinste kwadratenschatting (Least Squares Estimation, LSE) is een wiskundige methode om parameters in een model te schatten door de som van de kwadraten van de afwijkingen (residuen) tussen waargenomen waarden en modelvoorspellingen zo klein mogelijk te maken. Het is een fundamenteel principe in statistiek, geodesie, econometrie en data-analyse.<br>
<br>
**<dfn>Overbepaaldheid</dfn>** <br>
Overbepaaldheid betekent dat er in een wiskundig of geodetisch probleem meer vergelijkingen of waarnemingen beschikbaar zijn dan strikt noodzakelijk om de onbekenden te bepalen. Het systeem van vergelijkingen is dus “overbepaald”.<br>
<br>
**<dfn>GNSS</dfn>** <br>
GNSS staat voor Global Navigation Satellite System. Het is de verzamelnaam voor alle satellietsystemen die wereldwijd gebruikt worden om posities, snelheden en tijd te bepalen. GNSS is dus de overkoepelende term, terwijl GPS slechts één van die systemen is.<br>
<br>
**<dfn>NSGI</dfn>** <br>
NSGI staat voor Nederlandse Samenwerking Geodetische Infrastructuur. Het is een samenwerkingsverband tussen het Kadaster, Rijkswaterstaat en de Dienst der Hydrografie van de Koninklijke Marine. Samen zorgen zij voor het opzetten, onderhouden en beschikbaar stellen van de geodetische infrastructuur van Nederland. DE NSGI heeft een online tool voor het omrekenen van  coördinaten van ETRS89 naar RD. <br> https://www.nsgi.nl/coordinatenstelsels-en-transformaties/tools/online-coordinatentransformatie <br>
<br>
**<dfn>BIM nulpunt</dfn>** <br>
Referentiepunt voor het uitwisselen van BIM-modellen zonder georeferentie. Een Bim nulpunt staat op een vaste afstand (meestal 5 of 10 meter) ten opzichte van de eerste gridlijnen van een BIM-model.<br>
<br>
**<dfn>GEO Coördinatiepunt</dfn>** <br>
Referentiepunt voor het uitwisselen van Geodata. Het GEO Coördinatiepunt is een lokaal vastgesteld punt van een site, perceel of andere omgevingsdata. De RD waarde (XYZ) van dit punt is vastgesteld. Geodata wordt op deze manier op de de juiste positie in in BIM gebracht waarbij de geodata <a>Noordgericht</a> is en een translatie kent. Een voorbeeld is de IFC output van de  https://bim-tools.github.io/perceel2ifc/ om IFC data van een perceel te verkrijgen. <br>
<br>
**<dfn>Noordgericht</dfn>** <br>
Modeldata die <a>Noorgericht(/a> is betekent dat het georiënteerd is in de richting van het geografisch noorden (<a>Grid North</a>. Het geeft aan dat de bovenkant of hoofdrichting naar het noorden wijst van de kaart. In het Engels vertaald: Grid North.<br>
<br>
**<dfn>IFCMapconversion</dfn>** <br>
<a>IFCMapconversion</a> is een onderdeel van de IFC-standaard (Industry Foundation Classes) dat wordt gebruikt om een lokaal coördinatensysteem van een BIM-model te koppelen aan een geografisch coördinatensysteem.<br> Het zorgt ervoor dat modellen correct worden uitgelijnd met kaarten of GIS-data. Het besschrijft de volgende coördinatentransformatie:<br> 
Het kaartreferentiesysteem (CRS) Voor Nederland is dat EPSG:7415 met RD+NAP (XYZ, of EPSG:28992 voor alleen RD (XY).<br>
-Translatie: Het voegt verschuivingen toe in Eastings, Northings en OrthogonalHeight om het model geografisch correct te positioneren. <br>
-Rotatie: Het model wordt anti-clockwise geroteerd rond de z-as om de assen uit te lijnen met het kaartreferentiesysteem. <br>
-Schaal: Er wordt één uniforme schaal toegepast op de x-, y- en z-as om eenheden te converteren. <br>
 van millimeter naar meter is deze waarde 0.001. <br>
-Meer informatie op de site van BuildingSmart <br>https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcMapConversion.htm<br>
<br>
**<dfn>AHN</dfn>:** <br>
<a>AHN</a> staat voor Actueel Hoogtebestand Nederland. Het is een digitale hoogtekaart van heel Nederland waarin de hoogte van het maaiveld en objecten (zoals gebouwen en bomen) zeer nauwkeurig is vastgelegd. Iedere 'generatie' van AHN krijgt een nieuw volgnummer. Meest nieuwste generatie is AHN4 is landsdekkend maar er is ook AHN5 beschikbaar. We spreken over een 'landsdekkend' als van heel Nederland data beschikbaar is. Let er op dat tussen AHN inwinning en vrijgeven een tijd tussen zit.<br>
<br>
**<dfn>Survey points</dfn>** <br>
Survey points zijn referentiepunten die gebruikt worden bij landmeetkunde en geodetische metingen om de positie van objecten of gebieden nauwkeurig vast te leggen. Ze vormen de basis voor het opbouwen van kaarten, het uitvoeren van bouwprojecten en het beheren van geografische informatie.<br>
<br>
**<dfn>Footprint alignment</dfn>** <br>
Footprint alignment betekent het op elkaar afstemmen van de “voetafdrukken” van objecten of datasets, zodat hun geometrische grenzen en posities correct overeenkomen in een ruimtelijk referentiesysteem. Het wordt vaak gebruikt in remote sensing, GIS en beeldverwerking om satellietbeelden, luchtfoto’s of gebouwcontouren nauwkeurig te registreren en te combineren.<br>
<br>
**<dfn>RD</dfn>:** <br>Stelsel Rijksdriehoekmeting. Ook wel <a>RD</a>-stelsel. Een CRS die voor het Nederlands grondgebied wordt gebruikt met de code EPSG:28992. Gecombineerd met waarde NAP is deze CRS EPSG:7415 voor BIM.<br>
<br>
**<dfn>True North</dfn>** <br>
True verwijst naar de richting naar de Noordpool. Dit is weer een andere dan het magnetische noorden. Beide worden niet gebruikt in BIM.<br>
<br>
**<dfn>Grid North</dfn>** <br>
<a>Grid North</a> is richting van de verticale rasterlijnen op een kaart (het coördinatenstelsel van de kaartprojectie). Het is dus de “noord”-richting die hoort bij het kaartgrid, en kan afwijken van zowel het ware noorden (geografische Noordpool) als het magnetische noorden (richting waarin een kompas wijst). Grid North wordt in de basis gebrruikt in zowel GIS als BIM software. <br>
<br>
**<dfn>Project North</dfn>** <br>
<a>Project North</a> is een term uit bouwkunde en ontwerpsoftware die verwijst naar de geometrische oriëntatie van een gebouw binnen een projecttekening. Het is dus niet het kaart noorden (Grid North), maar een praktische richting die gebruikt wordt om het ontwerp overzichtelijk en werkbaar te maken. De hoek tussen Project North en Grid North is belangrijk. Deze dient 3 graden precies bekend te zijn.<br> 
<br>
**<dfn>Nulpunt</dfn>** <br>
<br>
Het begrip “<a>Nulpunt</a>” is meervoudig interpreteerbaar en dient zoveelmogelijk vermeden te worden in de communicatie tussen GIS en BIM. In de praktijk kan een nulpunt meerdere betekenissen hebben:<br>
- De oorsprong in modelleersoftware (internal origin).<br>
- Referentiepunt voor uitwisseling van BIM-modellen (project base point, BIM nulpunt).<br>
- Referentiepunt voor het RD-stelsel in het BIM-model (survey point in Revit).<br>
- Referentiepunt in RD NAP voor een perceel of site (Geo-nulpunt).<br>
- De referentiekubus zelf die op het nulpunt staat.<br>
- De oorsprong van het RD-stelsel (in Amersfoort).<br>
- De oorsprong van het RD-stelsel na translatie (Parijs).<br>
<br>
<br>

