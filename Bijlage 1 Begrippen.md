# Bijlagen 
## Definities en afkortingen

**<dfn>EPSG</dfn>**<br>
<a>EPSG</a> is de afkorting voorEuropean Petroleum Survey Group, de oorspronkelijke organisatie die de standaardisatie van coördinaatreferentiesystemen heeft opgezet. Hun codes zijn nu wereldwijd dé referentie in GIS, geodesie en cartografie. Van oorsprong is de EPSG  een organisatie opgericht door de Europese olie- en gasindustrie om geodetische en cartografische standaarden te ontwikkelen. Ze wilden een uniforme lijst van coördinaatreferentiesystemen (CRS) en transformaties vastleggen, zodat geografische data wereldwijd correct en consistent kon worden gebruikt. De EPSG Geodetic Parameter Dataset, een internationale standaardcatalogus met codes (zoals EPSG:4326 voor WGS84 en EPSG:5709 voor NAP). Tegenwoordig wordt de EPSG-database onderhouden door de International Association of Oil & Gas Producers (IOGP), via hun Geomatics Committee.<br>
<br>
**<dfn>CRS</dfn>**<br> 
Coördinaat Referentie Systeem. Een systeem waarmee een gebied wordt ingedeeld zodat ieder punt binnen dat gebied eenduidig kan worden bepaalt.<br>
<br>
**<dfn>SRS</dfn>:**<br> Spatial Reference System <br>
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
**<dfn>scan-to-BIM</dfn>** <br>
Term om met technieken en software hulpmiddelen inmetingen om te zettten 3D objecten.<br> 
<br>
**<dfn>Ellipsoïdische coördinaten</dfn>** of **geografische coördinaten**<br>Coördinaten voor een ronde aarde. Bijvoorbeeld uitgedrukt als lon. 4.8952°E lat. 52.3702°N voor WGS84 (wereld) en ETRS89 (Europa)<br>
<br>
**<dfn>Geocentrische coördinaten</dfn>** <br> Geocentrische coördinaten zijn coördinaten die een positie op of nabij de aarde beschrijven ten opzichte van het zwaartepunt van de aarde. In plaats van latitude/longitude (hoekmaten) of een projectie op een vlak, gebruik je hier een cartesisch 3D-stelsel (X, Y, Z) dat in het centrum van de aarde begint. Deze worden in de bouw niet gebruikt.<br>
<br>
**<dfn>Kaartprojectie</dfn>**<br>
**<dfn>Ellipsoïdische hoogte</dfn>** <br>
**<dfn>Orthometrische hoogte</dfn>** <br>
**<dfn>quasi-geoïdemodel</dfn>** <br>
**<dfn>Coördinaattransformatie</dfn>:** <br>
**<dfn>2D gelijkvormigheidstransformatie</dfn>** <br>
**<dfn>kleinste kwadratenschatting</dfn>** <br>
**<dfn>overbepaaldheid</dfn>** <br>
**<dfn>GNSS</dfn>** <br>
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
<a>AHN</a> staat voor Actueel Hoogtebestand Nederland. Het is een digitale hoogtekaart van heel Nederland waarin de hoogte van het maaiveld en objecten (zoals gebouwen en bomen) zeer nauwkeurig is vastgelegd<br>
<br>
**<dfn>survey points</dfn>** <br>
**<dfn>Footprint alignment</dfn>** <br>
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
Het begrip “Nulpunt” is meervoudig interpreteerbaar en dient vermeden te worden. In de praktijk heeft het meerdere betekenissen.<br>
- De oorsprong in modelleersoftware (internal origin).<br>
- Referentiepunt voor uitwisseling van BIM-modellen (project base point, BIM nulpunt).<br>
- Referentiepunt voor het RD-stelsel in het BIM-model (survey point in Revit).<br>
- Referentiepunt in RD NAP voor een perceel of site (Geo-nulpunt).<br>
- De referentiekubus zelf die op het nulpunt staat.<br>
- De oorsprong van het RD-stelsel (in Amersfoort).<br>
- De oorsprong van het RD-stelsel na translatie (Parijs).<br>
<br>
<br>

