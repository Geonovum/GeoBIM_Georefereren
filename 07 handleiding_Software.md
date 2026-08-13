# Handleiding Software

## Onderlegger 
Voor het Georefereren van BIM-modellen kan het handig zijn om een onderlegger van de locatie te gebruiken. Dit kan een CAD-bestand zijn. Wanneer men zelf een onderlegger wil maken kan men het volgende doen:


### Onderlegger maken/downloaden

Optie 1: 2D 
1. Ga naar PDOK en selecteer in de [BGT download-viewer](https://app.pdok.nl/lv/bgt/download-viewer/) de gewenste locatie.
2. Unzip het downloadbestand. 
3. Drag-drop de bestanden in [QGIS](https://qgis.org/download/).
4. In QGIS selecteer Project>Import/Export>Export Project to DXF. De CRS zal EPSG:28992 (RD NEW) tonen.

<figure id="QGIS-DXF-Export-2D" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/QGIS/QGIS_1.png" alt="QGIS-DXF-Export-2D" style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-QGIS-DXF-Export-2D"></bdi></a><span class="fig-title">Export 2D project naar DXF in QGIS</span></figcaption>
</figure>

Optie 2: 3D 
1. Ga naar [3D BAG](https://www.3dbag.nl/nl/download) en selecteer je gewenste locatie (tegel).
2. Download je bestand en kies Geopackage (GPKG) als bestandformaat. 
3. Drag-drop je bestanden in QGIS.
4. In QGIS ga naar Project>Import/Export>Export Project to DXF. De CRS zal EPSG:74152 (RD NEW + NAP height) tonen.
<figure id="QGIS-DXF-Export-3D" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/QGIS/QGIS_2.png" alt="QGIS-DXF-Export-3D" style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-QGIS-DXF-Export-3D"></bdi></a><span class="fig-title">Export 2D project naar DXF in QGIS</span></figcaption>
</figure>

### Controleren van de onderlegger
Een DWG of DXF kan getekend zijn op RD-coördinaten en toch geen coördinatenstelsel bevatten. De getallen kloppen in dat geval wel, maar Revit weet niet wat ze betekenen.

**Controle in Civil3D**
1.	Open het DWG- of DXF-bestand in Civil 3D.
2.	Kijk in de statusbalk onderin het scherm. Staat daar bijvoorbeeld Amersfoort-RDNew, dan is er een coördinatenstelsel toegekend.
3.	Kijk daarnaast in het lint. Bij een tekening met een coördinatenstelsel verschijnt de tab Geolocation. Ontbreekt die tab, dan is er geen stelsel toegekend.
4.	Manneer men zeker wil weten dat het toegekende stelsel ook klopt, dan kan men onder de tab Geolocation de online kaart aan en kijk of de tekening op de juiste plek op de luchtfoto valt.

<figure id="Onderlegger-met-coördinatenstelsel-in-Civil3D" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/NLRS/Onderleggercheck_Civil3D.png" alt="Onderlegger mét coördinatenstelsel: de statusbalk toont Amersfoort-RDNew en in het lint staat de tab Geolocation." style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Onderlegger-met-coördinatenstelsel-in-Civil3D"></bdi></a><span class="fig-title">Onderlegger mét coördinatenstelsel: de statusbalk toont Amersfoort-RDNew en in het lint staat de tab Geolocation.</span></figcaption>
</figure>

<figure id="Onderlegger-zonder-coördinatenstelsel-in-Civil3D" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/NLRS/Onderleggercheck_Civil3D_zonder-coordinatenstelsel.png" alt="Onderlegger zonder coördinatenstelsel: de statusbalk toont <none> en de tab Geolocation ontbreekt." style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Onderlegger-zondert-coördinatenstelsel-in-Civil3D"></bdi></a><span class="fig-title">Onderlegger zonder coördinatenstelsel: de statusbalk toont 'none' en de tab Geolocation ontbreekt.</span></figcaption>
</figure>

**Controle in Autocad**
In AutoCAD controleert men op dezelfde manier: de statusbalk toont het stelsel en de tab Geolocation is aanwezig.

<figure id="Onderlegger-met-coördinatenstelsel-in-Autocad" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/NLRS/Onderleggercheck_AutocadMAP_met-coordinatenstelsel.png" alt="Onderlegger mét coördinatenstelsel in Autocad: de statusbalk toont Amersfoort-RDNew en in het lint staat de tab Geolocation." style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Onderlegger-met-coördinatenstelsel-in-Autocad"></bdi></a><span class="fig-title">Onderlegger mét coördinatenstelsel in Autocad: de statusbalk toont Amersfoort-RDNew en in het lint staat de tab Geolocation.</span></figcaption>
</figure>

In AutoCAD kan men een coördinatenstelsel wel zien, maar niet toekennen. Daarvoor is Civil 3D of AutoCAD Map 3D nodig.

#### Coördinatenstelsel toekennen in Civil 3D 
1.	Open het bestand in Civil 3D.
2.	Klik in de Toolspace op het tabblad Settings. 
3.	Klik met de rechtermuisknop op de tekeningnaam bovenaan de boom en kies Edit Drawing Settings.
4.	Open het tabblad Units and Zone.
5.	Zet Drawing units op Meters.
6.	Kies bij Categories de categorie Netherlands.
7.	Kies bij Available coordinate systems de regel Netherlands, Amersfoort datum, New System. In het veld Selected coordinate system code verschijnt Amersfoort-RDNew.
8.	Bevestig met OK en sla het bestand op.
9.	Controleer of Amersfoort-RDNew nu in de statusbalk staat en of de tab Geolocation is verschenen.
10.	Zet onder de tab Geolocation de online kaart aan en controleer of de tekening op de luchtfoto op de juiste plek valt.

<figure id="Coordinatenstelsel-toekennen-in-Civil-1." style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/NLRS/Coordinatenstelsel toekennen in civil3D_1.png" alt="Rechtsklikken op de tekeningnaam in het tabblad Settings en kiezen voor Edit Drawing Settings." style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Coordinatenstelsel-toekennen-in-Civil-1"></bdi></a><span class="fig-title">Rechtsklikken op de tekeningnaam in het tabblad Settings en kiezen voor Edit Drawing Settings.</span></figcaption>
</figure>


<figure id="Coordinatenstelsel-toekennen-in-Civil-2." style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/NLRS/Coordinatenstelsel toekennen in civil3D_2.png" alt="Tabblad Units and Zone: categorie Netherlands en het stelsel Netherlands, Amersfoort datum, New System, met code Amersfoort-RDNew." style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Coordinatenstelsel-toekennen-in-Civil-2"></bdi></a><span class="fig-title">Tabblad Units and Zone: categorie Netherlands en het stelsel Netherlands, Amersfoort datum, New System, met code Amersfoort-RDNew.</span></figcaption>
</figure>

## Revit
Revit kent het begrip <a>Internal Origin</a>. Dit is de oorsprong in Revit die niet verplaatsbaar is. Daarnaast bestaat er een *<a>Project Basepoint</a>:*, ook wel Lokaal Coördinatiepunt. Dit punt wordt gebruikt om gemodelleerde elementen te positioneren en uitwisseling met andere modellen mogelijk te maken. tijdens engineering en/of wanneer Georeferentie niet relevant is. Ook kent Revit een <a>Survey Point</a>. Dit punt, een soort CRS-coordinatiepunt, wordt gebruikt om de relatie te leggen met een coördinatenstelsel (CRS) en zo de positie van het model op de aardbol vast te leggen.
Revit kent <a>Project Units</a>. De project units bevat de instelling van de standaard eenheden die men binnen het project gebruikt. Hier kan men bijvoorbeeld opgegeven of er met meters of met millimeters wordt gewerkt of volume in liters of m<sup>3</sup>.<br>
<figure id="Scherm-in-Revit-dat-Lokaal-Coordinatiepunt-en-CRS-Coordinatiepunt-laat-zien" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/Revit_1.png" alt="Scherm in Revit dat Lokaal Coordinatiepunt en CRS-Coordinatiepunt laat zien" style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Scherm-in-Revit-dat-Lokaal-Coordinatiepunt-en-CRS-Coordinatiepunt-laat-zien"></bdi></a><span class="fig-title">Scherm in Revit dat Lokaal Coordinatiepunt en CRS-Coordinatiepunt laat zien</span></figcaption>
</figure>

<aside class="note" title="Modelleer dichtbij het Internal Origin">
  <p><strong>AANBEVELING:</strong> Modelleer een bouwwerk dicht bij het Internal Origin. Het Survey Point voorziet in de RD-offset, niet de fysieke positie van het model. Zet men een bouwwerk daadwerkelijk op RD-coördinaten neer, dan kan het honderden kilometers van het Internal Origin staan. Dan loopt men tegen de 20-mijlsgrens van Revit aan. Dat levert onnauwkeurigheden en weergavefouten op. De hier beschreven werkwijze levert coordinaten en IFC-export op de juiste RD-waarden, terwijl geometrie op zijn plek blijft.
</p>
</aside>

### Methode 1:
#### Onderlegger linken in Revit
1.	Gebruik een DXF, DWG of een RVT in de gewenste CRS-coördinaten als onderlegger en link die in Revit. Daarbij is het aan te raden om bij het linken op te geven dat de eenheid van het bestand meters is. Gebruik bij voorkeur een onderlegger die CRS-informatie in de bron bevat zodat Revit de EPSG-code overneemt en je die niet handmatig hoeft toe te voegen. Open het Revit-model en ga naar Insert > Link CAD.
2.  Wanneer er, zoals bij de start van een project, nog geen ontwerpmodel is, dan is het verstandig om in de onderlegger de positie van een nieuw CRS-Coördinatiepunt op te geven. Kies daarvoor een plek met hele X- en Y-waarden in het coördinatenstelsel.
3.	Selecteer de onderlegger en zet Import units op meter.
3.	Zet Positioning op Auto - Center to Center.
4.	Zet Correct lines that are slightly off axis uit. Revit trekt anders lijnen recht die dat in werkelijkheid niet zijn.
5.	Zet Orient to View uit.
6.	Kies bij Place at het juiste niveau, bijvoorbeeld het maaiveld of de begane grond.
7.	Zet Current view only uit als de onderlegger in meerdere aanzichten zichtbaar moet zijn.
8.	Klik op Open.

<figure id="Onderligger-linken-in-Revit" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/NLRS/Onderligger linken in Revit.png" alt="Instellingen bij Link CAD: importeenheid meter, positionering Auto - Center to Center, en Correct lines that are slightly off axis en Orient to View beide uit." style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Onderligger-linken-in-Revit"></bdi></a><span class="fig-title">Instellingen bij Link CAD: importeenheid meter, positionering Auto - Center to Center, en Correct lines that are slightly off axis en Orient to View beide uit.</span></figcaption>
</figure>

De onderlegger kan getekend zijn op RD-coördinaten. Dat betekent vaak dat de geometrie honderden kilometers van het nulpunt van het bestand liggen. Wanneer men kiest voor Auto - Origin to Origin, dan komt de onderlegger op diezelfde afstand van het model terecht. Men loopt dan direct tegen de 20-mijlsgrens van Revit aan. Center to Center plaatst de inhoud van de onderlegger bij je model, waarna deze handmatig op de juiste plek te leggen is.

#### Uitlijnen en coördinaten overnemen
1.	Verplaats en roteer de onderlegger naar een referentie-punt waarvan je de positie zeker weet of naar het model, zodat de onderlegger op de juiste positie staat. Verplaats daarbij niet het getekend model naar de juiste locatie op de onderlegger, maar verplaats de onderlegger naar het model.
2.	Vergrendel de link met Pin, zodat hij niet ongemerkt kan verschuiven.
3.	Ga naar Manage > Coordinates > Acquire Coordinates en selecteer de onderlegger om de coördinaten over te nemen. Gebruik daarbij niet “Save Position” van de DXF of DWG. Revit maakt anders een Shared Coordinates bestand aan en wijzigt de locatie van de DXF of DWG waardoor die niet meer correct is.
4.  Na "Acquire Coordinates kan Revit bij het opslaan of synchroniseren vragen of de gewijzigde positie van de gelinkte onderlegger moet worden opgeslagen. Of die vraag komt verschilt per bronbestand.  De optie "Disable Shared Positioning" dient te worden gekozen, anders schrijven de nieuwe coordinaten terug naar de onderleger.
5.	Selecteer de gelinkte onderlegger.
6.	Lees de melding die Revit daarna toont. 
7. Selecteer het Survey Point, unclip het en verplaatst het naar de gekozen X- en Y-waarden van het CRS-Coördinatiepunt (hele X- en Y-waarden in het RD-stelsel) en geef als Z-waarde de hoogte ten opzichte van NAP op. Clip vervolgens het Survey Point en verplaats het Survey Point in de Z-richting terug naar 0.
8. Plaats een coördinatie-object op het Survey Point.
9. Plaats een coördinatie-object op het <a>Project Basepoint</a>.
10. Als het ontwerp zover is dat de stramienen vaststaan dan kan het Project Basepoint verplaatst worden zodat die op 5 of 10m van de eerste stramienen staat zoals gebruikelijk. Vóór het verplaatsten moet het Project Basepoint ge-unclipt worden (vanaf Revit 2020.2 is de clip van Project Basepoint verwijderd). Verplaats vervolgens ook een coördinatie-object naar de nieuwe positie van het Project Basepoint.

Staat er achter GIS Coordinate System een omschrijving van het stelsel, dan is het stelsel herkend en overgenomen.

<figure id="Melding-coordinaten-overgenomen-in-revit" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/NLRS/coördinaten overgenomen inclusief stelsel.png" alt="Coördinaten overgenomen inclusief stelsel: Netherlands, Amersfoort datum, New System." style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Melding-coordinaten-overgenomen-in-revit"></bdi></a><span class="fig-title">Coördinaten overgenomen inclusief stelsel: Netherlands, Amersfoort datum, New System.</span></figcaption>
</figure>

Staat er Unknown, dan bevatte het bronbestand geen coördinatenstelsel. Revit neemt dan alleen de getallen over, niet het stelsel.

<figure id="Melding-coordinaten-zonder-stelsel-in-revit" style="display: block; text-align: center; margin: 0 auto;">
      <img src="media/Handleiding/Revit/NLRS/coördinaten overgenomen zonder stelsel.png" alt="Coördinaten overgenomen zonder stelsel: GIS Coordinate System is Unknown." style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Melding-coordinaten-zonder-stelsel-in-rev"></bdi></a><span class="fig-title">Coördinaten overgenomen zonder stelsel: GIS Coordinate System is Unknown.</span></figcaption>
</figure>

De functie "Acquire Coordinates" neemt niet alleen de positie over, maar ook de noordrichting. Na afloop staat True North van het model gelijk aan die van de onderlegger. Voor het tekeningwerk zet men de aanzichten op Project North, via de eigenschap Orientation van het aanzicht. Hierdoor staat een bouwwerk recht op het blad.

Na Acquire Coordinates kan Revit bij het opslaan of synchroniseren vragen of de gewijzigde positie van de gelinkte onderlegger moet worden opgeslagen. Of die vraag komt verschilt per bronbestand. Bij een centraal model valt het extra op, omdat er bij synchroniseren meerdere keren wordt opgeslagen.


### Methode 2: 
**Project Basepoint en Survey Point aanpassen** 
1. Geef het Revit bestand of een DWG-export uit het Revit bestand aan een landmeter of een BIM- of GIS-specialist en vraag om de RD-coördinaten van het Lokaal Coördinatiepunt (Project Basepoint) en vraag om een voorstel voor het CRS-Coördinatiepunt (Survey Point). 
2. Zet in Revit de Project Units op meter.
3. Unclip het Survey Point en verplaats het naar de opgegeven coördinaten van het Lokaal Coördinatiepunt (Project Basepoint). (NB: N/S=Y en E/W=X).
4. Clip het Survey Point en verplaats het naar het Project Basepoint.
9. Unclip het Survey Point en verplaats het naar de opgegeven coördinaten van het CRS-Coördinatiepunt (Survey Point) en geef als Z-waarde de hoogte ten opzichte van N.A.P. op. Clip vervolgens het Survey Point en verplaats het Survey Point in de Z-richting terug naar 0.
5. Selecteer het Project Basepoint en geef de hoekverdraaiing ten opzichte van Grid-noord (True North) op. Het gaat hier om de hoekverdraaiing van Project North naar True North waarbij positief = tegen de klok in en negatief is met de klok mee. Revit zal negatieve hoekverdraaiingen omrekenen naar een positieve hoekverdraaiing.
6. Zet eventueel de Project Units terug naar millimeter.


<figure id="Controle-in-Revit" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/Revit_2.png" alt=Controle-in-Revit style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Controle-in-Revit"></bdi></a><span class="fig-title">Controle van georeferentie in Revit. Het venster "Location and Site" geeft aan of alles goed is gegaan</span></figcaption>
</figure>

**Units**
Door een omissie in de IFC-exporter van Revit moet voorafgaand aan het exporteren naar IFC de Project Units Length op meter ingesteld worden.

### Controle van georeferentie

Wanneer men later wil controleren of er een coördinatenstelsel gebruikt wordt in het model, ga dan naar Manage > Project Location > Location, tabblad Location.

Wanneer er geen coördinatenstelsel gedefinieerd is dan staat *Define Location by* op Internet Mapping Service en de kaart toont de standaardlocatie uit de Revit-template. Het model staat dan feitelijk in de Verenigde Staten, in de omgeving van Boston, zoals op de kaart te zien is.

<figure id="Revit-zonder-coordinatenstelsel" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/NLRS/Revit_zonder_coordinatenstelsel.png" alt=Setup-in-Revit style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Revit-zonder-coordinatenstelsel"></bdi></a><span class="fig-title">Zonder coördinatenstelsel blijft de projectlocatie op de standaardlocatie uit de template staan, in de omgeving van Boston.</span></figcaption>
</figure>

Wanneer er wel een coördinatenstelsel gedefinieerd is dan staat *Define Location by* op Get Location From Survey Point. Onder GIS Coordinate System Code staat Amersfoort-RDNew, met de bijbehorende breedte- en lengtegraad.


<figure id="Revit_met_coordinatenstelsel" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/NLRS/Revit_met_coordinatenstelsel.png" alt=Setup-in-Revit style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Revit_met_coordinatenstelsel"></bdi></a><span class="fig-title">Model met coördinatenstelsel: GIS Coordinate System Code Amersfoort-RDNew.</span></figcaption>
</figure>


### Export naar IFC
1.	Lokaal Coördinatiepunt: exporteer een IFC (4 of hoger) met Project Basepoint als Coordinate Base.<br>
De IFC is niet ge-georefereerd (alleen de coordinaten van Project Basepoint zijn correct) en niet Grid-noord gericht (Project North in Revit).<br>

<figure id="Setup-in-Revit" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/Revit_3.png" alt=Setup-in-Revit style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Setup-in-Revit"></bdi></a><span class="fig-title">Controle van georeferentie in Revit. Het venster "Location and Site" geeft aan of alles goed is gegaan</span></figcaption>
</figure>

2.	CRS-Coördinatiepunt: exporteer een IFC (4 of hoger) met Survey Point als Coordinate Base.<br>
Vul bij EPSG Code in: 28992. Dit zorgt ervoor dat de referentie wordt herkend in de software of tooling. De IFC is ge-Georefereerd en is Grid-noord gericht (True North in Revit)<br> Officieel is de EPSG Code 7415 vanwege de 3 dimensies van coordinaten. Dit wordt (nog) niet ondersteund in Revit. 

<figure id="Setup-in-Revit-Survey-Point" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Revit/Revit_4.png" alt=Setup-in-Revit-Survey-Point style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Setup-in-Revit-Survey-Point"></bdi></a><span class="fig-title">Scherm in Revit met instellingen voor IFC export met Survey Point als Coordinate Base</span></figcaption>
</figure>

Zie ook [Hans Hendriks (2022)](https://github.com/Hans-Lammerts/Sample-Test-Files/blob/master/Geolocation%20information%20from%20Revit%20to%20IFC_v1.0.pdf) voor aanvullende toelichting.








## Autocad Civil 3D

Er zijn momenteel 2 manieren om een Export te maken in Civil3D. De oude manier middels het commando “IFCEXPORT”. Hiermee worden alle Solids in het huidige model geëxporteerd. Dit maakt echter geen gebruikt van de nieuwe functionaliteiten van IFC4x3. Met de oude manier is het ook nodig om een Corridor eerst als solids te exporteren voordat je deze naar IFC exporteert. 
Sinds enige tijd heeft Autodesk een plugin gemaakt welke het commando “IFCINFRAEXPORT” toevoegen aan Civil3D. Hiermee kan een IFC gemaakt worden welke de nieuwe functionaliteiten van IFC4x3 gebruikt. 
Deze [link](https://www.autodesk.com/support/technical/article/caas/sfdcarticles/sfdcarticles/Where-to-download-Civil-3D-IFC-4-3-Import-Export-Extension.html) beschrijft hoe je deze plugin kan downloaden van Autodesk. Voor de rest van deze handleiding wordt er vanuit gegaan dat deze plugin geïnstalleerd is.
 
Stappenplan IFC Export Civil3D “IFCINFRAEXPORT”
1. Maak je Civil3D model zoals je dit altijd doen. Uiteraard rekening houdend met werken op RD-Coördinaten
2. Controleer of het RD stelsel correct is ingesteld met de het commando “EDITDRAWINGSETTING” of het commando “MAPCSASSIGN”

<figure id="Cordinate_system_Civil3D" style="display: block; text-align: center; margin: 0 auto;">
      <img src="./media/Handleiding/Civil3D/Coordinate_System_Civil3D.png" alt=Cordinate_system_Civil3D style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Cordinate_system_Civil3D"></bdi></a><span class="fig-title">Controle van instellingen van RD-stelsel in Civil 3D</span></figcaption>
</figure>

3. Spreek een BIM Base Point af binnen je project af. In het voorbeeld is X=93000, Y=441000 gekozen. Het is slim om dit punt te markeren met een symbool
4. Gebruik het commando “IFCInfraSetProjectBasePoint” om het zojuist afgestemde basepoint te selecteren als basispunt voor de IFC Export. Er wordt een COGO point aangemaakt op deze locatie.
5. Gebruik nu het commando “IFCINFRAEXPORT” om alle objecten in het DWG bestand te exporteren. Het commando “IFCINFRAEXPORTSELECTED” kan gebruikt worden om een beperkt aantal objecten te exporteren.
In deze [link](https://help.autodesk.com/view/CIV3D/2024/ENU/?guid=GUID-FBA4D6BE-3879-4D95-9DC3-B479F7FCFF41) is extra informatie te vinden over de "IFC4.3 IFC Exporter" voor Civil3D.

## ArchiCAD
Instellen Georeferentie (via de IFC4 “MapConversion” methode) voor het exporteren vanuit ArchiCAD. De exacte benamingen kunnen iets afwijken afhankelijk van de versie (AC 23, 24, …), maar de kernstappen blijven gelijk.

1. Projectlocatie instellen

    Ga naar Options > Project Preferences > Project Location….
    Vul hier de geografische coördinaten (latitude/longitude), eventueel hoogte, en stel de juiste kaartprojectie (indien van toepassing) in. 

    Plaats in het model een Survey Point (Meetpunt) op de juiste locatie in het terrein waarmee je het coördinatenreferentiepunt vastlegt. 

    In de instellingen van de Survey Point kun je bij “Geo-referencing Map…” de waarden invullen voor datum, coördinatensysteem etc. 


<div style="display:flex; gap:20px; justify-content:center; align-items:flex-start;">
  <figure style="text-align:center; margin:0;" id="Cordinate_system_ArchiCAD">
    <img src="./media/Handleiding/ArchiCAD/Archicad_01.png" alt="Cordinate_system_ArchiCAD" style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>Controle van instellingen van RD-stelsel in ArchiCAD</figcaption>
  </figure>

  <figure style="text-align:center; margin:0;" id="Cordinate_system_ArchiCAD_2">
    <img src="./media/Handleiding/ArchiCAD/Archicad_02.png" alt="Cordinate_system_ArchiCAD_2" style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>Aanpassing van instellingen van RD-stelsel in ArchiCAD</figcaption>
  </figure>
</div>

<aside class="note" title="Werk dicht op de project-oriëntatie in ArchiCAD">
  <p><strong>AANBEVELING:</strong> Werk het liefst zo dicht mogelijk op de project-oriëntatie in ArchiCAD zodat grote offset-waarden in het IFC-bestand worden vermeden.   </p>
</aside>

2. Instellen van de IFC-exporttranslator

    - Ga naar File > Interoperability > IFC > IFC Translators  
    - Maak een nieuwe translator aan of dupliceer een bestaande (bijv. “General Export”) zodat de wijzigingen veilig te testen zijn.  

    In de translator instellingen: 
    - Kies bij IFC Schema voor IFC4. 
    - Kies het juiste Model View Definition (MVD) zoals “Design Transfer View” indien vereist. 
    In de tab “Geometry Conversion” (of gelijknamige):
    - Kies de juiste plaatsing voor de “IfcSite” entiteit. 
    
    Bij IFC4 wordt de positie van het site-entiteit gekoppeld aan het Survey Point of het Project Origin. 


<aside class="example" title="Match IFC Site location with Survey Point position">
"Match IFC Site location with Survey Point position” → gebruikt het Survey Point als coördinaatreferentie.
“Match IFC Site location with Project Origin” → gebruikt het ArchiCAD Project Origin als referentie. <br> 
Controleer in de Data Conversion/Units sectie dat de exportunits correct zijn ingesteld en dat “IFC Base Quantities” aangevinkt is indien gewenst. 
</aside>

3. Specifieke instellingen voor georeferentie (IFC4 MapConversion)  
    Bij IFC4 is georeferentie op LoGeoRef 50 opgenomen via de entiteiten IfcMapConversion en IfcProjectedCRS. In IFC2x3 gebeurde dit op basis van losse property sets. Zorg ervoor dat in de Project Location en Survey Point de juiste coördinaten en datum/kaartprojectie zijn ingevuld.
    In de translator instellingen de “Match IFC Site location …” correct staat (zoals hierboven).
    Bij export wordt gecontroleerd of de outputbestand de entiteit IfcMapConversion bevat (dit kun je openen als tekst in een IFC-viewer of teksteditor).

4. Export uitvoeren en controle
    - Sla het project op.
    - Onder File > Save As… of via File > Interoperability > IFC > Save as IFC…, selecteer de gekozen translator.
    - Exporteer het bestand.  
    - Open het geëxporteerde IFC bestand in een IFC-viewer (bijv. BIMcollab ZOOM of Blender) en controleer of:  
        - De georeferentie informatie aanwezig is (IfcMapConversion / IfcProjectedCRS).  
        - Het model correct gepositioneerd is t.o.v. de verwachte coördinaten.  
    - Test eventueel import in een andere software (bijv. GIS-omgeving of BIM coördinatie tool) om zeker te zijn dat de locatie klopt.

5. Aandachtspunten / valkuilen  
    De ingevoerde coördinaten in Project Location verplaatsen niet automatisch de geometrie in ArchiCAD: ze worden opgenomen als metadata voor export. 
    Werken met zeer grote coördinaatwaarden (bijv. UTM meters ver weg van 0,0) kan leiden tot precisieproblemen in export/import workflows. Probeer het model origin zo dicht mogelijk bij projectlocatie te houden. Bij import in andere software kan de “site origin” verkeerd worden geïnterpreteerd indien de instellingen van “Match IFC Site location” niet goed staan. Controleer altijd dat de gebruikte translator versie compatibel is met IFC4 en de gewenste MVD.

## Tekla Structures
In Tekla Structures kan met behulp van **Basispunten** een coördinatensysteem voor uitwisselbaarheid worden gebruikt. Bijvoorbeeld voor het importeren en exporteren van IFC-bestanden. Deze basispunten worden gebruikt om het model nauwkeurig te positioneren en uit te lijnen binnen een groter coördinatensysteem. Ze zorgen voor consistente samenwerking en correcte uitwisseling van modellen tussen verschillende partijen.<br>

1. Basispunten definiëren  
    Basispunten kunnen gedefinieerd worden in de **Projecteigenschappen** van Tekla Structures. 
    Klik op _Bestand > Projecteigenschappen > Basispunten_ om het dialoogvenster **Basispunt** te openen. <br>
    Definieer de benodigde gegevens zoals de coördinaten (1) en een eventuele hoek bij de optie Hoek naar het noorden (2)<br>
    en sla het basispunt op onder een naam door op de “+” knop te klikken (3):<br>

<figure id="Basispunt_in_Tekla" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Tekla/Tekla_01.png" alt="Basispunt_in_Tekla" style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Basispunt in Tekla
    </figcaption>
</figure>

2. IFC exporteren  
    Klik op Bestand > Exporteren > IFC4 om het dialoogvenster **IFC exporteren** te openen.
    Selecteer bij Locatie door het gedefinieerde basispunt:
<figure id="IFC_Export_in_Tekla" style="display: block; text-align: center; margin: 0 auto;">
  <img src="./media/Handleiding/Tekla/Tekla_02.png" alt="IFC_Export_in_Tekla" style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
   <figcaption>
      IFC exporteren in Tekla
    </figcaption>
</figure>

Definieer vervolgens de overige benodigde gegevens. Bij de optie _Basispunt exporteren_ kan gekozen worden voor de methode _IfcMapConversion_ of _IfcSite_ als export-setting van dit betreffende Basispunt.

3. IFC importeren  
   Voor het importeren van IFC-modellen wordt in Tekla Structures de functionaliteit **Referentiemodellen** gebruikt.
   Klik in het zijpaneel op Referentiemodellen:
<figure id="IFC_importeren_in_Tekla" style="display: block; text-align: center; margin: 0 auto;">
  <img src="./media/Handleiding/Tekla/Tekla_03.png" alt="IFC_importeren_in_Tekla" style="width: 100%; max-width: 200px; height: auto; display: block; margin: 0 auto;"/>
   <figcaption>
      IFC importeren in Tekla
    </figcaption>
</figure>

Klik vervolgens op de knop **+ Model toevoegen** om het dialoogvenster **Model toevoegen** te openen. Selecteer bij Locatie door het gedefinieerde basispunt:

<figure id="Model_toevoegen_in_Tekla" style="display: block; text-align: center; margin: 0 auto;">
  <img src="./media/Handleiding/Tekla/Tekla_04.png" alt="Model_toevoegen_in_Tekla" style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;"/>
   <figcaption>
      Model toevoegen in Tekla
    </figcaption>
</figure>

Blader vervolgens naar het betreffende IFC-bestand en klik op de knop **Model toevoegen** om het IFC-model in te voegen.
<br>
Meer informatie over basispunten in Tekla Structures vindt men in:<br>
Een uitgebreide uitleg over basispunten in de [Tekla User Assistance](https://support.tekla.com/nl/doc/tekla-structures/2025/int_base_point) <br>
Een webinar [basispunten](https://www.youtube.com/watch?v=iAdi_x3enPE&t=900s) (2020)<br>
<br>

## Sketchup

**Methode 1** 
  Druk op File > Add Location
  In dit venster is het mogelijk om het model, op het oog, op een locatie te plaatsen. Daarnaast is het mogelijk om een specifieke locatie in te typen. 
  Druk op Continue
  Kies voor een 2D Plane of 3D Mesh als ondergrond en kies een density.
  Kies een ondergrond
  Druk op import Site Context 

**Methode 2** 
  Druk op Window > Model Info
  Selecteer Geo-locatie als optie 
  Druk op add-location 

Zie [geolocation functie in Sketchup](https://help.sketchup.com/en/sketchup/modeling-terrain-and-other-rounded-shapes)  
Zie [Tutorial Add Location in Sketchup](https://www.youtube.com/watch?v=-jOXDByVnVM)

**Exporteer in open formaat** 
Zie voor [exporteren vanuit Sketchup](https://help.sketchup.com/en/sketchup-education/exporting-model)
Het is mogelijk om een KMZ of DXF te exporteren. Deze zullen de coordinaten mee kunnen nemen. 

De export bestaat uit: 
- Een .dae mesh bestand. Dit is het 3D model in COLLADA. 
- Een doc.kml bestand. Dit bestand bevat de positie van het 3D model (lat/lon/hoogte)

Deze 

Zie voor [exporteren naar IFC](https://help.sketchup.com/en/importing-and-exporting-ifc-files)
Het is in de huidige versie van Sketchup momenteel nog niet mogelijk om op hoog detail in RD NAP te georefereren. De coordinaten vanuit Sketchup zijn uitgedrukt in UTM-coordinaten. Dit kan men (nog) niet aanpassen. 

De verwachting is dat dit op korte termijn verbeterd aangezien er in de laatste releases veel ontwikkeling is op IFCExport functie voor Sketchup. Wanneer hier plugins of wijzigingen in komen wordt dit toegevoegd aan de praktijkrichtlijn. 

Er is een [Sketchup-IFC-Manager Plugin](https://github.com/BIM-Tools/SketchUp-IFC-Manager) die en goede export maakt naar IfcMapConversion. Hierin worden momenteel ook alleen UTM-coordinaten geexporteert. 

Zie voor [exporteren naar CityGML](https://support.tygron.com/wiki/Converting_a_Sketchup_model_to_CityGML_format)

## Blender

Zorg ervoor dat de addons [Bonsai](https://bonsaibim.org/) en [BlenderGIS](https://github.com/domlysz/BlenderGIS) in Blender geinstalleerd zijn. 

Methode is numeriek, de waarde die wilt gebruiken moet je vooraf hebben bepaald. 
Vanuit de service [IFC2Perceel](https://bim-tools.github.io/perceel2ifc/) kan men een kadastraal perceel als IFC downloaden. 
Deze site geeft een actueel kadastrale perceel op NAP hoogte met een <a>GEO Coördinatiepunt</a>

<figure id="Perceel_2_IFC" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Blender/Perceel2IFC.png" alt="Perceel_2_IFC" style="width: 100%; max-width: 400px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Perceel2IFC 
    </figcaption>
</figure>

Waarden voor de geografische plaatsing van het model <a>nulpunt</a> kun je bekijken en aanpassen onder Project Setup > Geometry > Georeferencing
Dit zijn exact dezelfde waarden als IFCmapconversion. 

<figure id="Georeferentie_van_IFC_in_Blender" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Blender/Blender_01.png" alt="Georeferentie_van_IFC_in_Blender" style="width: 100%; max-width: 800px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Georeferentie van IFC bekijken in Blender 
    </figcaption>
</figure>

Gebruik het oog symbooltje en size om het visueel te laten weergeven

<figure id="Georeferentie_van_IFC_in_Blender_2" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Blender/Blender_02.png" alt="Georeferentie_van_IFC_in_Blender_2" style="width: 100%; max-width: 800px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Georeferentie van IFC bekijken in Blender 
    </figcaption>
</figure>

Handig is ook dat je de rotatie met Grid North kunt laten berekenen

<figure id="Georeferentie_van_IFC_in_Blender_3" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Blender/Blender_03.png" alt="Georeferentie_van_IFC_in_Blender_3" style="width: 100%; max-width: 800px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Georeferentie van IFC bekijken in Blender 
    </figcaption>
</figure>

Op basis van deze georeferentie kan men verder modelleren in Blender. 

Het is ook mogelijk om voor een project eigen IFC Mapconversion waarden toe te voegen. Om deze te achterhalen kan men een referentie-object in een andere toepassing, bijvoorbeeld QGIS maken waarmee de RD-coordinaten en de rotatiehoek achterhaald kan worden. Open de attribuuttabel van de gecreëerde geometrie en klik op open veldberekening. Voeg nieuwe velden in decimalen toe. Met het commando: x(start_point($geometry)) kan een kolom met de x-waarde (Easting) worden toegevoegd, met y(start_point($geometry)) een kolom voor de y waarde (Northing) en met het commando degrees(azimuth( start_point($geometry),end_point($geometry))) de hoekverdraaiing (Angle). 

Deze waarden kan men invullen bij het attribuut IfcMapconversion. 

Start hiervoor een nieuw Ifc Project, het liefst in meters: 


<figure id="Georeferentie_van_IFC_in_Blender_4" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Blender/Blender_04.png" alt="New_IFC_Project_In_Blender" style="width: 100%; max-width: 800px; height: auto; display: block; margin: 0 auto;">
    <figcaption>
      Nieuw ifc-project, in meters, in Blender  
    </figcaption>
</figure>

Druk op het "+" teken naast IfcMapConversion en vul de juiste gegevens in.

<div id="tabel-Blender-ifcmapconversion" style="display: flex; flex-wrap: nowrap; gap: 1em; justify-content: center;">
  <img src="./media/Handleiding/Blender/Blender_05.png" alt="IfcMapConversion_in_Blender" style="width: 400px; height: auto; display: block;">
  <img src="./media/Handleiding/Blender/Blender_06.png" alt="IfcMapConversion_leeg_in_Blender" style="width: 400px; height: auto; display: block;">
  <img src="./media/Handleiding/Blender/Blender_07.png" alt="IfcMapConversion_gevuld_in_Blender" style="width: 400px; height: auto; display: block;">
</div>

Sla het model op als ifc en gebruik tooling zoals ifcgref of andere toepassingen om de georeferentie te controleren. 

Importeren van Geo
Het is ook mogelijk om met de extensie BlenderGIS shapefiles in te laden. Deze worden op het Blender 0,0,0 punt gepositioneerd. Wel kan de geometrie gebruikt worden voor modellering. 

CityGML kan men importeren met de extensie: [CityGML](https://github.com/ppaawweeuu/Import_CityGML). Op deze github staat ook beschreven hoe positionering goed te krijgen. 


## Illustrator/Inkscape

In Illustrator/Inkscape werkt men op digitaal papierformaat. Zorg ervoor dat voorafgaand aan het ontwerp er een onderlegger kaartlaag gebruikt wordt met bekende punten (zoals de BGT). Download deze onderlegger in DXF. Zie [CAD-onderlegger](#cad-onderlegger) of [QGIS](#qgis) hoe dit te doen. Laad deze DXF in Illustrator/Inkscape: 

<figure id="Import_DXF_in_Inkscape" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Inkscape/Inkscape_01.png" alt="Import_DXF_in_Inkscape" height="300">
    <figcaption>
      Importeren van DXF-onderlegger in Inkscape.
    </figcaption>
</figure>

Na ontwerp kunnen de ontwerplagen inclusief de onderlegger als DXF opgeslagen worden. 

<figure id="Opslaan_Inkscape_ontwerp_als_DXF" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Inkscape/Inkscape_02.png" alt="Opslaan_Inkscape_ontwerp_als_DXF" style="width: 100%; max-width: 400px; height: auto; display: block; margin: 0 auto;">
    <figcaption>
      Opslaan van een ontwerp in Inkscape als DXF
    </figcaption>
</figure>

Zonder georeferentie zal de DXF op een verkeerde locatie op de kaart getoond worden. 

<figure id="Ontwerp_Naast_Parijs" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Inkscape/Inkscape_03.png" alt="Ontwerp_Naast_Parijs" style="width: 100%; max-width: 400px; height: auto; display: block; margin: 0 auto;">
    <figcaption>
      Ontwerp wordt geplaatst naast Parijs zonder Georeferentie
    </figcaption>
</figure>

Voer de stappen van Georeferentie in QGIS uit om het DXF bestand op de juiste plaats te krijgen. 

<figure id="Ontwerp_op_de_juiste_plek_na_georeferentie" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Inkscape/Inkscape_04.png" alt="Ontwerp_op_de_juiste_plek_na_georeferentie" style="width: 100%; max-width: 400px; height: auto; display: block; margin: 0 auto;">
    <figcaption>
      Ontwerp op de gewenste plek na georeferentie
    </figcaption>
</figure>

Het is ook mogelijk om aanvullende objecten in DXF terug naar de ontwerptekening te converteren. Dit doet men met het inverse georefereren zoals in het QGIS hoofdstuk beschreven. Dit zorgt ervoor dat men bestaande objecten kan hergebruiken en opwerken. 

<figure id="Extra_element_naar_Inkscape" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Inkscape/Inkscape_05.png" alt="Extra_element_naar_Inkscape" style="width: 100%; max-width: 500px; height: auto; display: block; margin: 0 auto;">
    <figcaption>
      Extra waterelement aan ontwerptekening toegevoegd door inverse georeferentie.
    </figcaption>
</figure>

In Illustrator kan dezelfde functionaliteit gebruikt worden. 

### Illustrator MAPublisher
Illustrator kent een extensie [MAPublisher](https://www.avenza.com/mapublisher/) waarmee Georeferentie in Illustrator ondersteund wordt. Er is een [handeleiding](http://download.avenza.com/Downloads/Docs/MAPublisher/MP90_TutorialGuide.pdf) beschikbaar waarin beschreven staat hoe dit werkt.



## ArcGIS
In ArcGIS Pro zijn er tools beschikbaar om een bestaand BIM-model (IFC en Revit) te georefereren. Hieronder wordt een algemene werkwijze beschreven. Er zijn twee manieren om het model op de juiste locatie te plaatsen, optie A: Transform (invoeren van coördinaat offsets) of optie B: Handmatig (handmatig het model verplaatsen). Beide worden hieronder beschreven. 
*Deze werkwijze is getest en beschreven voor ArcGIS Pro versie 3.6*

**Open het model**
1. Voeg het model toe aan een scene door deze erin te slepen vanuit de Verkenner in Windows of door een folder connectie te maken in het catalog pane.

<figure id="Ingeladen_bim_model_in_ArcGIS_Pro" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/ArcGIS/ArcGIS_01.png" alt="Ingeladen_Bim_Model_in_ArcGIS_Pro" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Ingeladen BIM-model in ArcGIS Pro
    </figcaption>
</figure>

2. Selecteer de laag van het BIM model in het contents panel en open de ‘BIM Data’ tab in de ribbon bovenin

<figure id="Define_projection_in_ArcGIS_Pro" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/ArcGIS/ArcGIS_03.png" alt="Define_projection_in_ArcGIS_Pro" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Define projection
    </figcaption>
</figure>

Define projection (indien nodig)
3. Om de projectie te definiëren of bevestigen selecteer ‘Define projection’ in de ribbon

4. In de Geoprocessing tool selecteer het juiste coördinatensysteem en klik op Run

<figure id="Geoprocessing_in_ArcGIS_Pro" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/ArcGIS/ArcGIS_04.png" alt="Geoprocessing_in_ArcGIS_Pro"style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Geoprocessing in ArcGIS Pro
    </figcaption>
</figure>

**Optie A: Transform (indien de offset bekend is)**

5. Gebruik de ‘Transform’ optie om de transformatie van het model in te voeren
<figure id="Transform_in_ArcGIS_Pro">
    <img src="./media/Handleiding/ArcGIS/ArcGIS_05.png" alt="Transform_in_ArcGIS_Pro" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Transform in ArcGIS Pro
    </figcaption>
</figure>

**Optie B: Transform (indien de offset bekend is)**
6. In de BIM Data tab selecteer ‘Georeference’
<figure id="Georeference_in_ArcGIS_Pro" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/ArcGIS/ArcGIS_06.png" alt="Georeference_in_ArcGIS_Pro" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Georeference in ArcGIS Pro
    </figcaption>
</figure>

7. Gebruik de beschikbare tools om het BIM model op de juiste plaats te leggen
- Locate: zoom naar een adres
- Move to display: verplaats het model naar de huidige kaartweergave
- Elevate to ground: plaats het model op de elevation surface (grond)
- Move: verplaats het model (in X, Y, Z richting)
- Scale: Schaal het model
- Rotate: Roteer het model
- Reset: Reset alle georefereer-acties

<figure id="Georeference_functies_in_ArcGIS_Pro" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/ArcGIS/ArcGIS_07.png" alt="Georeference_functies_in_ArcGIS_Pro" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Georeference functions in ArcGIS Pro
    </figcaption>
</figure>

**Opslaan**
8. Sla de georefereer actie op via de Save opties
- Save: maakt een .wld3 bestand aan op basis van de IFC-bestandsnaam (indien al aanwezig wordt deze overschreven)
- Save to workspace: maakt een generiek ESRI_CAD.wld3 bestand aan voor alle BIM-modellen in dezelfde map
- Save as new: slaat een nieuwe .wld3 bestand op met een naam naar keuze

**Best practices:**
- Vraag de maker van het BIM-model vanaf de juiste coördinaten te modelleren zodat dit georefereren vanuit de bron gedaan wordt in plaats van achteraf.
- Controleer zowel de projectie van het BIM model als die van de scene of kaart.
- Gebruik context data (zoals 3D BAG, BAG footprints, percelen of bomen) bij het handmatig georefereren. Veel van deze lagen zijn openbaar beschikbaar via de Levende Atlas.
- Gebruik de ‘Exterior shell’ laag tijdens het georefereren zodat het model lichter is (zet andere lagen aan indien dit nodig is).
- Het is ook mogelijk om het BIM model in een 2D kaart te laden en vanaf daar in 2D te georefereren.
- Gebruik een ESRI_CAD.prj bestand bij bestanden met dezelfde projectie.
- Raadpleeg de documentatie voor aanvullende uitleg en opties. Waaronder: [ArcGIS model to world transformation dialog](https://pro.arcgis.com/en/pro-app/latest/help/data/cad/model-to-world-transformation-dialog.htm) en [arcgis georeference bim data](https://pro.arcgis.com/en/pro-app/latest/help/data/revit/georeference-bim-data.htm) 

## QGIS
Voor modellen die niet geogerefereerd zijn kan men de Georeferencer in QGIS gebruiken. Dit is een methode voor 2D georeferentie. 

Laad eerst de 2D Vector-modellen in. Voor 2D autocad kan dit DXF zijn. Andere formaten zijn ook mogelijk. <br>
Gebruik in het geval an DXF de plug-in DXF-AnotherDXFImporter

<figure id="QGIS_Georeferencer" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/QGIS/QGIS_5.png" alt="QGIS_Georeferencer" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      QGIS Georeferencer
    </figcaption>
</figure>

Door bekende punten uit het model in te voeren of te positoneren op de kaart, worden de waardes voor Helmert transformatie berekend.   

<figure id="QGIS_Georeferentie_resultaat" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/QGIS/QGIS_6.png" alt="QGIS_Georeferentie_resultaat" style="width: 100%; max-width: 00px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      QGIS Georeferentie rapportage
    </figcaption>
</figure>

Selecteer de GDAL Vector Conversie - Convert Format functie in de toolbox processing: 

<figure id="QGIS_Toolbox_Processing" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/QGIS/QGIS_8.png" alt="QGIS_Toolbox_Processing" style="width: 100%; max-width: 400px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      QGIS Vector conversie 
    </figcaption>
</figure>

De proj-parameters zijn in QGIS ingevuld zodat hiermee een 2D BIM-model juist geogerefereerd wordt. 

Door op uitvoeren te drukken vidnt een affine transformatie plaats. Dit is een super-klasse van de Helmert transformatie.

<figure id="QGIS_Vector_Conversie_2" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/QGIS/QGIS_4.png" alt="QGIS_Vector_Conversie_2" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      QGIS Vector Conversie 
    </figcaption>
</figure>

Door een inverse van de proj-parameter te gebruiken kunnen ook objecten uit een geogerefereerde set, zoals de BGT (RD) naar een Lokaal coordinatenstelsel worden geconverteerd. 
<figure id="QGIS_Inverse-Vector_Conversie" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/QGIS/QGIS_3.png" alt="QGIS_Inverse_Vector_Conversie" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      QGIS Inverse Vector Conversie 
    </figcaption>
</figure>

Het is in QGIS niet mogelijk om met bovenstaande methode 3D Georeferentie te doen. Wanneer x,y,z verplaatsingen, rotatie en schaal bekent is kan men wel proj-waarden invullen in de onderstaande proj pipeline. Veel software begrijpt deze proj pipeline direct. 

Wanneer x, y, z, locatie en schaal niet bekend is kan men met tools als [Ifc georeferencer](#Ifc-georeferencer) dit achterhalen door het model op de juiste locatie te plaatsen, als IFC te downloaden en de waarden van de IFCMAPConversion uit te lezen en te vertalen naar de juiste proj parameter.  

Easting = +x
Northing = +y
OrthogonalHeight = +dh
XAxisOrdinate = +theta
Scale = +s

Stel men heeft onderstaande mapconversion: 
- Easting = 12345
- Northing= 54321
- OrthogonalHeight = 13 
- XAxisAbscissa = 0.866025
- XAxisOrdinate = 0.5
- Scale = 3.2

Dan kan men creëeren:
(arcsin0.5*3600)=108000

```proj 2D + 1D
cct +proj=pipeline +step +proj=helmert +convention=coordinate_frame +x=12345 +y=54321 +s=3.200.000 +theta=(108000) +step +proj=geogoffset +dh=13
```

## Controle van georeferentie in QGIS, Solibri en BIMCollab
Onderstaande voorbeelden beschrijven hoe men georeferentie kan controleren in software. Het is met onderstaande voorbeelden niet mogelijk om dit aan te passen.   

**Controle van 3D Georeferentie van een IFC in QGIS:**
Converteer IFC naar GeoJSON, bijvoorbeeld met [ifc2gis](https://citygeometrix.com/ifc2gis/) en download de file. Maak eventueel de GeoJSON file kleiner door een beperkte selectie van de IFC-elementen te maken. Bijvoorbeeld alleen de slabs en walls. 

Voeg een nieuwe vectorlaag toe in QGIS en selecteer de GeoJSON-file. 

Open, bijvoorbeeld met de PDOK-Locatieserver-plugin, vanuit de PDOK de BAG en de BGT. 

Open een nieuwe 3D-kaartweergave. 
Druk met de rechter muisknop op de 3D geoJSON file en klik op eigenschappen. 
Klik op de 3D-weergave en selecteer Enkel Symbool.
<figure id="QGIS_Georeferentie_controle" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/QGIS/QGIS_7.png" alt="QGIS_Georeferentie_controle" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      QGIS Georeferentie controle
    </figcaption>
</figure>

Het is hiermee mogelijk om visueel te controleren hoe het model positioneert ten opzichte van de BAG en BGT. Houdt hiermee rekening met de nauwkeurigheid van de BAG en BGT, zie <a href="04%20Gebruik%20van%20geo-datasets%20voor%20georeferentie.md#ge o-datasets-voor-het-refereren-van-modellen">Geo datasets voor georefereren</a>

De [IFC2GIS procedure video](https://www.youtube.com/watch?v=pBAhAcyTLSY&t=86s) van Hans Lammerts toont de flow van georeferentie naar QGIS. Zie ook het [BuildingSMART forum](https://forums.buildingsmart.org/t/ifc-to-gis/6115/8) voor een discussie over dit onderwerp. 

**Controle van 3D Georeferentie van een IFC in Solibri:**
Klik in de Model Tree het model open tot je het IfcProject niveau ziet. Zorg dat je een Ifc4 of hoger model hebt. Klik op het IfcProject (icon lijkt op een papiertje met regels erop). Klik op IFC Coordinates. Lees uit de IfcCoordinateReferenceSystem, IfcMapconversion, IfcProjectedCRS (van het lokale nulpunt).

<figure id="Solibri_Georeferentie_controle" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/Solibri/GeoReferentieLoGref50-InSolibri.jpg" alt="Solibri_Georeferentie_controle" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      Solibri Georeferentie controle
    </figcaption>
</figure>

Het is ook mogelijk om LoGref20 te controleren. In dit geval: 
Klik in de Model Tree het model open tot je het IfcSite niveau ziet.Dit kan in zowel Ifc2x3, Ifc4 en Ifc4x3 het kan ook soms dubbel zijn met Mapconversion. Klik op het IfcSite object (icon zou een kavel moeten voostellen). Onder in de “Info view” verschijnen tabbladen. Waaronder “Location”. Klik op Location. Lees bij coördinaten>Latitude, Longitude de WGS84 coördinaten uit (van het lokale nulpunt)

**Controle van 3D Georeferentie van een IFC in BIMCollab:**
BIMcollab kan worden gebruikt om de georeferentie van een BIM-model te controleren. Hiermee wordt inzicht verkregen in de locatie, oriëntatie en coördinatie van het model.
Zie [uitlijnen met IfcMapconversion in BIMCollab](https://helpcenter.bimcollab.com/nl/articles/326917-ifc-modellen-coordineren-met-worldcoordinatesystem-informatie)

<figure id="BIMCollab_Georeferentie_controle" style="display: block; text-align: center; margin: 0 auto;">
    <img src="./media/Handleiding/BIMCollab//GeoReferentieLoGref50-InBIMColllabZoom-2.jpg" alt="BIMCollab_Georeferentie_controle" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption>
      BIMCollab Georeferentie controle
    </figcaption>
</figure>