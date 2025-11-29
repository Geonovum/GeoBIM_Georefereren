# Bijlagen 
## Definities en afkortingen

**<dfn>CRS</dfn>:** Coördinaat Referentie Systeem.<br>Een systeem waarmee een gebied wordt ingedeeld zodat ieder punt binnen dat gebied eenduidig kan worden bepaalt.
**<dfn>SRS</dfn>:** Spatial Reference System <br>
**<dfn>Geodetische CRS</dfn>** <br> 
**<dfn>Geprojecteerd CRS</dfn>** <br>
**<dfn>Vertikaal CRS</dfn>** <br>
**<dfn>Samengesteld CRS</dfn>** <br>
**<dfn>Geografisch CRS</dfn>** <br>
**<dfn>Lokaal CRS</dfn>:** <br>Een arbitrair gekozen assenstelsel zonder directe relatie met de echte wereld, tenzij er coördinaattransformatie wordt toegepast.<br>
**<dfn>Engineering CRS</dfn>:** <br>
**<dfn>Source CRS</dfn>** <br>
**<dfn>Target CRS</dfn>** <br>
**<dfn>scan-to-BIM</dfn>** <br>Algemene term om van inmetingen 3D objecten te genereren.<br> 
**<dfn>Ellipsoïdische coördinaten</dfn>:** <br>Ook wel geografische coördinaten genoemd.<br>
**<dfn>Geocentrische coördinaten</dfn>:** Ook wel rechthoekige coördinaten genoemd.<br>
**<dfn>Kaartprojectie</dfn>**<br>** <br>
**<dfn>Ellipsoïdische hoogte</dfn>** <br>
**<dfn>Orthometrische hoogte</dfn>** <br>
**<dfn>quasi-geoïdemodel</dfn>** <br>
**<dfn>Coördinaattransformatie</dfn>:** <br>
**<dfn>2D gelijkvormigheidstransformatie</dfn>**<br>
**<dfn>kleinste kwadratenschatting</dfn>**<br>
**<dfn>overbepaaldheid</dfn>**<br>
**<dfn>GNSS</dfn>**<br>
**<dfn>BIM nulpunt</dfn>:** <br>
Referentiepunt voor het uitwisselen van BIM-modellen zonder georeferentie. Een Bim nulpunt staat op een vaste afstand (meestal 5 of 10 meter) ten opzichte van de eerste gridlijnen van een BIM-model.<br>
**<dfn>GEO Coördinatiepunt</dfn>:** <br>
Referentiepunt voor het uitwisselen van Geodata. Het GEO Coördinatiepunt is een lokaal vastgesteld punt van een site, perceel of andere omgevingsdata. De RD waarde (XYZ) van dit punt is vastgesteld. Geodata wordt op deze manier op de de juiste positie in in BIM gebracht waarbij de geodata <a>Noordgericht</a> is en een translatie kent. Een voorbeeld is de IFC output van de  https://bim-tools.github.io/perceel2ifc/ om IFC data van een perceel te verkrijgen. <br>  
**<dfn>Noordgericht</dfn>:** <br>
Noordgerichte data betekent dat het georiënteerd is in de richting van het geografisch noorden. Het geeft aan dat de bovenkant of hoofdrichting naar het noorden wijst van de kaart. In het Engels vertaald: Grid North.<br>
**<dfn>IFCMapconversion</dfn>:** <br>
IfcMapConversion is een onderdeel van de IFC-standaard (Industry Foundation Classes) dat wordt gebruikt om een lokaal coördinatensysteem van een BIM-model te koppelen aan een geografisch coördinatensysteem. Het zorgt ervoor dat modellen correct worden uitgelijnd met kaarten of GIS-data. Het besschrijft de volgende coördinatentransformatie:<br> 
Het kaartreferentiesysteem (CRS) Voor Nederland is dat EPSG:7415 met RD+NAP (XYZ, of EPSG:28992 voor alleen RD (XY).<br>
Translatie: Het voegt verschuivingen toe in Eastings, Northings en OrthogonalHeight om het model geografisch correct te positioneren<br>
Rotatie: Het model wordt anti-clockwise geroteerd rond de z-as om de assen uit te lijnen met het kaartreferentiesysteem.<br>
Schaal: Er wordt één uniforme schaal toegepast op de x-, y- en z-as om eenheden te converteren.<br>
Meer informatie op de site van BuildingSmart https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcMapConversion.htm<br>
**<dfn>AHN</dfn>:** <br>
AHN staat voor Actueel Hoogtebestand Nederland. Het is een digitale hoogtekaart van heel Nederland waarin de hoogte van het maaiveld en objecten (zoals gebouwen en bomen) zeer nauwkeurig is vastgelegd<br>
**<dfn>survey points</dfn>** <br>
**<dfn>Footprint alignment</dfn>** <br>
**<dfn>RD</dfn>:** <br>Stelsel Rijksdriehoekmeting. Ook wel RD-stelsel. Een CRS die voor het Nederlands grondgebied wordt gebruikt met de code EPSG:28992. Gecombineerd met waarde NAP is deze CRS EPSG:7415 voor BIM.<br>
**<dfn>Nulpunt</dfn>:**<br> 
- De oorsprong in modelleersoftware (internal origin).<br>
- Referentiepunt voor uitwisseling van BIM-modellen (project base point, BIM nulpunt).<br>
- Referentiepunt voor het RD-stelsel in het BIM-model (survey point in Revit).<br>
- Referentiepunt in RD NAP voor een perceel of site (Geo-nulpunt).<br>
- De referentiekubus zelf die op het nulpunt staat.<br>
- De oorsprong van het RD-stelsel (in Amersfoort).<br>
- De oorsprong van het RD-stelsel na translatie (Parijs).<br>
Het begrip “Nulpunt” is meervoudig interpreteerbaar en dient vermeden te worden. In de praktijk heeft het meerdere betekenissen.<br>
**<dfn>True North</dfn>**<br>
"True" verwijst naar de richting naar de Noordpool. Dit is weer een andere dan het magnetische noorden. Beide worden niet gebruikt in BIM.<br>
**<dfn>Grid North</dfn>:**<br>
De richting van de Y-as in een CRS (het noorden). Alternatief: Grid noord, CRS noord. NB: hebben we dan ook het begrip Lokaal noord nodig?
Wordt ook wel aangeduid met 'kaart noord' Dis is de rotatie parameter voor BIM sofwtare om te gebruiken
**<dfn>Project North</dfn>:**<br>
Project North is een term uit bouwkunde en ontwerpsoftware die verwijst naar de geometrische oriëntatie van een gebouw binnen een projecttekening. Het is dus niet het echte noorden (Grid North), maar een praktische richting die gebruikt wordt om het ontwerp overzichtelijk en werkbaar te maken. De hoek tussen Project North en Grid North is belangrijk. Deze dient 3 graden precies bekend te zijn.<br> 

