# Bijlagen 
## Definities en afkortingen
<dfn>CRS</dfn>: Coördinaat Referentie Systeem. Een systeem waarmee een gebied wordt ingedeeld zodat ieder punt binnen dat gebied eenduidig kan worden bepaalt.

<dfn>SRS</dfn>: Spatial Reference System

<dfn>Geodetische CRS</dfn>

<dfn>Geprojecteerd CRS</dfn>

<dfn>Vertikaal CRS</dfn>

<dfn>Samengesteld CRS</dfn>

<dfn>Geografisch CRS</dfn>

<dfn>Lokaal CRS</dfn>: Een arbitrair gekozen assenstelsel zonder directe relatie met de echte wereld, tenzij er coördinaattransformatie wordt toegepast.

<dfn>Engineering CRS</dfn>: 

<dfn>Source CRS</dfn>

<dfn>Target CRS</dfn>

<dfn>scan-to-BIM</dfn>

<dfn>Ellipsoïdische coördinaten</dfn>: Ook wel geografische coördinaten

<dfn>Geocentrische coördinaten</dfn>: Ook wel rechthoekige coördinaten genoemd

<dfn>Kaartprojectie</dfn>

<dfn>Ellipsoïdische hoogte</dfn>

<dfn>Orthometrische hoogte</dfn>

<dfn>quasi-geoïdemodel</dfn>

<dfn>CRS-coördinatiepunt</dfn>:
referentiepunt dat gebruikt wordt voor de translatie van een BIM-model naar een CRS (MapConversion). Een CRS-coördinatiepunt staat op bij voorkeur op hele X- en Y-coördinaten van het CRS.

<dfn>Coördinaattransformatie</dfn>:

<dfn>2D gelijkvormigheidstransformatie</dfn>
<dfn> kleinste kwadratenschatting </dfn>
<dfn> overbepaaldheid </dfn>
<dfn> GNSS </dfn>

<dfn>BIM nulpunt</dfn>:
Referentiepunt voor het uitwisselen van BIM-modellen zonder georeferentie. Een Bim nulpunt staat op een vaste afstand (meestal 5 of 10 meter) ten opzichte van de eerste gridlijnen van een BIM-model.

<dfn>GEO Coördinatiepunt</dfn>:
Referentiepunt voor het uitwisselen van Geodata. Het GEO Coördinatiepunt is een lokaal vastgesteld punt van een site, perceel of andere omgevingsdata. De RD waarde (XYZ) van dit punt is vastgesteld. Geodata wordt op deze manier op de de juiste positie in in BIM gebracht waarbij de geodata <a>Noordgericht</a> is en een translatie kent. Een voorbeeld is de IFC output van de  https://bim-tools.github.io/perceel2ifc/ om IFC data van een perceel te verkrijgen.   

<dfn>Noordgericht</dfn> 
Noordgerichte data betekent dat ietsdata  georiënteerd is in de richting van het (geografisch) kaartnoorden. Het geeft aan dat de bovenkant of hoofdrichting naar het noorden wijst

<dfn>AHN</dfn> 
AHN staat voor Actueel Hoogtebestand Nederland. Het is een digitale hoogtekaart van heel Nederland waarin de hoogte van het maaiveld en objecten (zoals gebouwen en bomen) zeer nauwkeurig is vastgelegd

<dfn>survey points</dfn>

<dfn>Footprint alignment</dfn>

<dfn>RD</dfn> Stelsel Rijksdriehoekmeting. Ook wel RD-stelsel of (foutief) RD-new of Amersfoort genoemd. Een CRS die voor het Nederlands grondgebied wordt gebruikt met de code EPSG:28992.

<dfn>Nulpunt</dfn>: 
- De oorsprong in modelleersoftware (internal origin).
- Referentiepunt voor uitwisseling van BIM-modellen (project base point, BIM nulpunt).
- Referentiepunt voor het RD-stelsel in het BIM-model (survey point in Revit)
- Referentiepunt in RD NAP voor een perceel of site (Geo-nulpunt).
- De referentiekubus zelf die op het nulpunt staat.
- De oorsprong van het RD-stelsel (in Amersfoort).
- De oorsprong van het RD-stelsel na translatie (Parijs).

Het begrip “Nulpunt” is meervoudig interpreteerbaar en dient vermeden te worden. In de praktijk heeft het meerdere betekenissen.

<dfn>Geo-nulpunt</dfn>:
[ vul dit aan ]

<dfn>True North</dfn>
"True" verwijst naar de richting naar de Noordpool. Dit is weer een andere dan het magnetische noorden. Beide worden niet gebruikt in BIM.

<dfn>Grid North</dfn>:
De richting van de Y-as in een CRS (het noorden). Alternatief: Grid noord, CRS noord. NB: hebben we dan ook het begrip Lokaal noord nodig?
Wordt ook wel aangeduid met 'kaart noord' Dis is de rotatie parameter voor BIM sofwtare om te gebruiken

<dfn>Project North</dfn>:
Project North is een term uit bouwkunde en ontwerpsoftware die verwijst naar de geometrische oriëntatie van een gebouw binnen een projecttekening. Het is dus niet het echte noorden (Grid North), maar een praktische richting die gebruikt wordt om het ontwerp overzichtelijk en werkbaar te maken. De hoek tussen Project North en Grid North is belangrijk. Deze dient 3 graden precies bekend te zijn. 

<dfn>MapConversion</dfn>
beschrijving van de translatie (verplaatsing, hoekverdraaiing en schaal) ten opzichte van een CRS-coördinatiepunt.
