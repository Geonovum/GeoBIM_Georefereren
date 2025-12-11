# Handleiding Software

# Software

## CAD Onderlegger 
Voor het Georefereren van BIM-modellen kan het handig zijn om een CAD-bestand van de locatie te gebruiken als onderlegger. Wanneer men zelf een onderlegger wil maken kan met het volgende doen:


Optie 1: 2D 
1. Ga naar PDOK en selecteer in de [BGT download-viewer](https://app.pdok.nl/lv/bgt/download-viewer/) de gewenste locatie.
2. Unzip het downloadbestand. 
3. Drag-drop de bestanden in [QGIS](https://qgis.org/download/).
4. In QGIS selecteer Project>Import/Export>Export Project to DXF. De CRS zal EPSG:28992 (RD NEW) tonen.

<figure id="QGIS-DXF-Export-2D">
      <img src="./media/QGIS_1.png" alt="Leefttijd van verschillende puntenwolken van de stationsregio in Delft" height="500"/>
    <figcaption><a class="self-link" href="#fig-QGIS-DXF-Export-2D"></bdi></a><span class="fig-title">Export 2D project naar DXF in QGIS</span></figcaption>
</figure>


Optie 2: 3D 
1. Ga naar [3D BAG](https://www.3dbag.nl/nl/download) en selecteer je gewenste locatie (tegel).
2. Download je bestand en kies Geopackage (GPKG) als bestandformaat. 
3. Drag-drop je bestanden in QGIS.
4. In QGIS ga naar Project>Import/Export>Export Project to DXF. De CRS zal EPSG:74152 (RD NEW + NAP height) tonen.
<figure id="QGIS-DXF-Export-3D">
      <img src="./media/QGIS_2.png" alt="Leefttijd van verschillende puntenwolken van de stationsregio in Delft" height="500"/>
    <figcaption><a class="self-link" href="#fig-QGIS-DXF-Export-3D"></bdi></a><span class="fig-title">Export 2D project naar DXF in QGIS</span></figcaption>
</figure>

## Revit
Revit kent het begrip <a>Internal Origin</a>. Dit is de oorsprong in Revit die niet verplaatsbaar is. Daarnaast bestaat er een *<a>Project Basepoint</a>:*, ook wel Lokaal Coördinatiepunt. Dit punt wordt gebruikt om gemodelleerde elementen te positioneren en uitwisseling met andere modellen mogelijk te maken. tijdens engineering en/of wanneer Georeferentie niet relevant is. Ook kent Revit een <a>Survey Point</a>. Dit punt, een soort CRS-coordinatiepunt, wordt gebruikt om de relatie te leggen met een coördinatenstelsel (CRS) en zo de positie van het model op de aardbol vast te leggen.
Revit kent <a>Project Units</a>. De project units bevat de instelling van de standaard eenheden die men binnen het project gebruikt. Hier kan men bijvoorbeeld opgegeven of er met meters of met millimeters wordt gewerkt of volume in liters of m<sup>3</sup>.<br>
<figure id="Scherm-in-Revit-dat-Lokaal-Coordinatiepunt-en-CRS-Coordinatiepunt-laat-zien">
      <img src="./media/Revit_1.png" alt="Scherm in Revit dat Lokaal Coordinatiepunt en CRS-Coordinatiepunt laat zien" height="400"/>
    <figcaption><a class="self-link" href="#fig-Scherm-in-Revit-dat-Lokaal-Coordinatiepunt-en-CRS-Coordinatiepunt-laat-zien"></bdi></a><span class="fig-title">Scherm in Revit dat Lokaal Coordinatiepunt en CRS-Coordinatiepunt laat zien</span></figcaption>
</figure>


## Methode 1: link DXF, DWG of RVT
1.	Gebruik een DXF, DWG of een RVT in de gewenste CRS-coördinaten als onderlegger en link die in Revit. Daarbij is het aan te raden om bij het linken op te geven dat de eenheid van het bestand meters. Gebruik bij voorkeur een onderlegger die CRS-informatie in de bron bevat zodat Revit de EPSG-code overneemt en je die niet handmatig hoeft toe te voegen.
2.	Wanneer er, zoals bij de start van een project, nog geen ontwerpmodel is, dan is het verstandig om in de onderlegger de positie van een nieuw CRS-Coördinatiepunt op te geven. Kies daarvoor een plek met hele X- en Y-waarden in het coördinatenstelsel.
3.	Verplaats en roteer de onderlegger naar een referentie-punt waarvan je de positie zeker weet of naar het model, zodat de onderlegger op de juiste positie staat. Verplaats daarbij niet het getekend model naar de juiste locatie op de onderlegger, maar verplaats de onderlegger naar het model.
4.	Gebruik ‘Aquire Coordinates’ en selecteer de onderlegger om de coördinaten over te nemen. Gebruik daarbij niet “Save Position” van de DXF of DWG. Revit maakt anders een Shared Coordinates bestand aan en wijzigt de locatie van de DXF of DWG waardoor die niet meer correct is.
5.	Selecteer het Survey Point, unclip het en verplaatst het naar de gekozen X- en Y-waarden van het CRS-Coördinatiepunt (hele X- en Y-waarden in het RD-stelsel) en geef als Z-waarde de hoogte ten opzichte van NAP op. Clip vervolgens het Survey Point en verplaats het Survey Point in de Z-richting terug naar 0.
6.	Plaats een coördinatie-object op het Survey Point.
7.	Plaats een coördinatie-object op het <a>Project Basepoint</a>.
8.	Als het ontwerp zover is dat de stramienen vaststaan dan kan het Project Basepoint verplaatst worden zodat die op 5 of 10m van de eerste stramienen staat zoals gebruikelijk. Vóór het verplaatsten moet het Project Basepoint ge-unclipt worden. Verplaats vervolgens ook een coördinatie-object naar de nieuwe positie van het Project Basepoint.

## Methode 2: Project Basepoint en Survey Point aanpassen
1.	Geeft het Revit bestand of een DWG-export uit het Revit bestand aan een landmeter of een BIM- of GIS-specialist en vraag om de RD-coördinaten van het Lokaal Coördinatiepunt (Project Basepoint) en vraag om een voorstel voor het CRS-Coördinatiepunt (Survey Point). 
2.	Zet in Revit de Project Units op meter.
3.	Unclip het Survey Point en verplaats het naar de opgegeven coördinaten van het Lokaal Coördinatiepunt (Project Basepoint). (NB: N/S=Y en E/W=X).
4.	Clip het Survey Point en verplaats het naar het Project Basepoint.
9.	Unclip het Survey Point en verplaats het naar de opgegeven coördinaten van het CRS-Coördinatiepunt (Survey Point) en geef als Z-waarde de hoogte ten opzichte van N.A.P. op. Clip vervolgens het Survey Point en verplaats het Survey Point in de Z-richting terug naar 0.
5.	Selecteer het Project Basepoint en geef de hoekverdraaiing ten opzichte van Grid-noord (True North) op. Het gaat hier om de hoekverdraaiing van Project North naar True North waarbij positief = tegen de klok in en negatief is met de klok mee. Revit zal negatieve hoekverdraaiingen omrekenen naar een positieve hoekverdraaiing.
6.	Zet eventueel de Project Units terug naar millimeter.


<figure id="Controle-in-Revit">
      <img src="./media/Revit_2.png" alt=Controle-in-Revit height="500"/>
    <figcaption><a class="self-link" href="#fig-Controle-in-Revit"></bdi></a><span class="fig-title">Controle van georeferentie in Revit. Het venster "Location and Site" geeft aan of alles goed is gegaan</span></figcaption>
</figure>

## Units

Door een omissie in de IFC-exporter van Revit moet voorafgaand aan het exporteren naar IFC de Project Units Length op meter ingesteld worden.

## Export naar IFC
1.	Lokaal Coördinatiepunt: exporteer een IFC (4 of hoger) met Project Basepoint als Coordinate Base.<br>
De IFC is niet ge-georefereerd (alleen de coordinaten van Project Basepoint zijn correct) en niet Grid-noord gericht (Project North in Revit).<br>

<figure id="Setup-in-Revit">
      <img src="./media/Revit_3.png" alt=Setup-in-Revit height="400"/>
    <figcaption><a class="self-link" href="#fig-Setup-in-Revit"></bdi></a><span class="fig-title">Controle van georeferentie in Revit. Het venster "Location and Site" geeft aan of alles goed is gegaan</span></figcaption>
</figure>

2.	CRS-Coördinatiepunt: exporteer een IFC (4 of hoger) met Survey Point als Coordinate Base.<br>
Vul bij EPSG Code in: <mark> 28992</mark> **opmerking, waarom geen 7415**. De IFC is ge-Georefereerd en is Grid-noord gericht (True North in Revit)<br>

<mark> dit is dezelfde figuur. Klopt dit? </mark>

<figure id="Controle-in-Revit">
      <img src="./media/Revit_2.png" alt=Controle-in-Revit height="500"/>
    <figcaption><a class="self-link" href="#fig-Controle-in-Revit"></bdi></a><span class="fig-title">Controle van georeferentie in Revit. Het venster "Location and Site" geeft aan of alles goed is gegaan</span></figcaption>
</figure>

<figure id="Setup-in-Revit-Survey-Point">
      <img src="./media/Revit_4.png" alt=Setup-in-Revit-Survey-Pointt height="400"/>
    <figcaption><a class="self-link" href="#fig-Setup-in-Revit-Survey-Point"></bdi></a><span class="fig-title">Scherm in Revit met instellingen voor IFC export met Survey Point als Coordinate Base</span></figcaption>
</figure>

<mark> Vanwaar deze bron, kunnen we dit toelichten?</mark>

[Hans Hendriks (2022)](https://github.com/Hans-Lammerts/Sample-Test-Files/blob/master/Geolocation%20information%20from%20Revit%20to%20IFC_v1.0.pdf)

## Autocad Civil 3D

Er zijn momenteel 2 manieren om een Export te maken in Civil3D. De oude manier middels het commando “IFCEXPORT”. Hiermee worden alle Solids in het huidige model geëxporteerd. Dit maakt echter geen gebruikt van de nieuwe functionaliteiten van IFC4x3. Met de oude manier is het ook nodig om een Corridor eerst als solids te exporteren voordat je deze naar IFC exporteert. 
Sinds enige tijd heeft Autodesk een plugin gemaakt welke het commando “IFCINFRAEXPORT” toevoegen aan Civil3D. Hiermee kan een IFC gemaakt worden welke de nieuwe functionaliteiten van IFC4x3 gebruikt. 
De onderstaande link beschrijft hoe je deze plugin kan downloaden van Autodesk. Voor de rest van deze handleiding wordt er vanuit gegaan dat deze plugin geïnstalleerd is.
https://www.autodesk.com/support/technical/article/caas/sfdcarticles/sfdcarticles/Where-to-download-Civil-3D-IFC-4-3-Import-Export-Extension.html 
Stappenplan IFC Export Civil3D “IFCINFRAEXPORT”

Stappenplan IFC Export Civil3D “IFCINFRAEXPORT”
1.	Maak je Civil3D model zoals je dit altijd doen. Uiteraard rekening houdend met werken op RD-Coördinaten
2.	Controleer of het RD stelsel correct is ingesteld met de het commando “EDITDRAWINGSETTING” of het commando “MAPCSASSIGN”
![alt text](media\Coordinate_System_Civil3D.png)

3.	Spreek een BIM Base Point af binnen je project af. In het voorbeeld is X=93000, Y=441000 gekozen. Het is slim om dit punt te markeren met een symbool
4.	Gebruikt het commando “IFCInfraSetProjectBasePoint” om het zojuist afgestemde basepoint te selecteren als basispunt voor de IFC Export. Er wordt een COGO point aangemaakt op deze locatie.
5.	Gebruik nu het commando “IFCINFRAEXPORT” om alle objecten in het DWG bestand te exporteren. Het commando “IFCINFRAEXPORTSELECTED” kan gebruikt worden om een beperkt aantal objecten te exporteren.
In onderstaande link is extra infromatie te vinden over de IFC4.3 IFC Exporter voor Civil3D.
https://help.autodesk.com/view/CIV3D/2024/ENU/?guid=GUID-FBA4D6BE-3879-4D95-9DC3-B479F7FCFF41 


## ArchiCAD
Instellen Georeferentie (via de IFC4 “MapConversion” methode) voor het exporteren vanuit ArchiCAD. De exacte benamingen kunnen iets afwijken afhankelijk van de versie (AC 23, 24, …), maar de kernstappen blijven gelijk.

1. Projectlocatie instellen

Ga naar Options > Project Preferences > Project Location….
Vul hier de geografische coördinaten (latitude/longitude), eventueel hoogte, en stel de juiste kaartprojectie (indien van toepassing) in. 
Plaats in het model een Survey Point (Meetpunt) op de juiste locatie in het terrein waarmee je het coördinatenreferentiepunt vastlegt. 
In de instellingen van de Survey Point kun je bij “Geo-referencing Map…” de waarden invullen voor datum, coördinatensysteem etc. 

<img width="458" height="885" alt="image" src="https://github.com/user-attachments/assets/4dd041da-458d-4327-8d60-018dc988b490" />

<img width="497" height="887" alt="image" src="https://github.com/user-attachments/assets/aa12e54d-4487-4a9a-b5c9-b045de2a990c" />

Tip: Werk het liefst zo dicht mogelijk op de project-oriëntatie in ArchiCAD zodat grote offset-waarden in het IFC-bestand worden vermeden. 


2. Instellen van de IFC-exporttranslator

Ga naar File > Interoperability > IFC > IFC Translators
Maak een nieuwe translator aan of dupliceer een bestaande (bijv. “General Export”) zodat je wijzigingen veilig kunt testen. 
In de translator instellingen:
Kies bij IFC Schema voor IFC4. 
Kies het juiste Model View Definition (MVD) zoals “Design Transfer View” indien vereist. 
In de tab “Geometry Conversion” (of gelijknamige) kies je de juiste plaatsing voor de “IfcSite” entiteit. Bij IFC4 wordt de positie van het site-entiteit gekoppeld aan het Survey Point of het Project Origin. 

Bijvoorbeeld:

“Match IFC Site location with Survey Point position” → gebruikt het Survey Point als coördinaatreferentie.
“Match IFC Site location with Project Origin” → gebruikt het ArchiCAD Project Origin als referentie.
Controleer in de Data Conversion/Units sectie dat de exportunits correct zijn ingesteld en dat “IFC Base Quantities” aangevinkt is indien gewenst. 


3. Specifieke instellingen voor georeferentie (IFC4 MapConversion)

Bij IFC4 wordt de georeferentie opgenomen via de entiteiten IfcMapConversion en IfcProjectedCRS in plaats van slechts losse property sets zoals in IFC2x3. Zorg ervoor dat:In de Project Location en Survey Point de juiste coördinaten en datum/kaartprojectie zijn ingevuld.
In de translator instellingen de “Match IFC Site location …” correct staat (zoals hierboven).
Bij export wordt gecontroleerd of de outputbestand de entiteit IfcMapConversion bevat (dit kun je openen als tekst in een IFC-viewer of teksteditor).

4. Export uitvoeren en controle

Sla je project op.
Onder File > Save As… of via File > Interoperability > IFC > Save as IFC…, selecteer je de gekozen translator.
Exporteer het bestand.
Open het geëxporteerde IFC bestand in een IFC-viewer (bijv. BIMcollab ZOOM) en controleer of:
De georeferentie informatie aanwezig is (IfcMapConversion / IfcProjectedCRS).
Het model correct gepositioneerd is t.o.v. de verwachte coördinaten.
Test eventueel import in een andere software (bijv. GIS-omgeving of BIM coördinatie tool) om zeker te zijn dat de locatie klopt.

5. Aandachtspunten / valkuilen

De ingevoerde coördinaten in Project Location verplaatsen niet automatisch de geometrie in ArchiCAD: ze worden opgenomen als metadata voor export. 
Werken met zeer grote coördinaatwaarden (bijv. UTM meters ver weg van 0,0) kan leiden tot precisieproblemen in export/import workflows: probeer model origin zo dicht mogelijk bij projectlocatie te houden. Bij import in andere software kan de “site origin” verkeerd worden geïnterpreteerd indien de instellingen van “Match IFC Site location” niet goed staan. Controleer altijd dat de gebruikte translator versie compatibel is met IFC4 en de gewenste MVD.

## Tekla Structures
In Tekla Structures kan met behulp van **Basispunten** een coördinatensysteem voor uitwisselbaarheid worden gebruikt. Bijvoorbeeld voor het importeren en exporteren van IFC-bestanden. Deze basispunten worden gebruikt om het model nauwkeurig te positioneren en uit te lijnen binnen een groter coördinatensysteem. Ze zorgen voor consistente samenwerking en correcte uitwisseling van modellen tussen verschillende partijen.<br>
<br>
1. Basispunten definiëren
   
Basispunten kunnen gedefinieerd worden in de **Projecteigenschappen** van Tekla Structures. 
Klik op _Bestand > Projecteigenschappen > Basispunten_ om het dialoogvenster **Basispunt** te openen. <br>
Definieer de benodigde gegevens zoals de coördinaten (1) en een eventuele hoek bij de optie Hoek naar het noorden (2)<br>
en sla het basispunt op onder een naam door op de “+” knop te klikken (3):<br>

<img width="782" height="678" alt="image" src="https://github.com/user-attachments/assets/b20b7fa4-43ac-41e6-864c-76b2e8e7a725" />

2. IFC exporteren
   
Klik op Bestand > Exporteren > IFC4 om het dialoogvenster **IFC exporteren** te openen.
Selecteer bij Locatie door het gedefinieerde basispunt:

<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/c59fc0d3-3af2-4c5e-8706-4f419d42d964" />

Definieer vervolgens de overige benodigde gegevens. Bij de optie _Basispunt exporteren_ kan gekozen worden voor de methode _IfcMapConversion_ of _IfcSite_ als export-setting van dit betreffende Basispunt.

3. IFC importeren
   
Voor het importeren van IFC-modellen wordt in Tekla Structures de functionaliteit **Referentiemodellen** gebruikt.
Klik in het zijpaneel op Referentiemodellen:

<img width="250" height="500" alt="image" src="https://github.com/user-attachments/assets/4ee89424-4632-4c19-8e41-88b401a74c37" />

Klik vervolgens op de knop **+ Model toevoegen** om het dialoogvenster **Model toevoegen** te openen. Selecteer bij Locatie door het gedefinieerde basispunt:

<img width="500" height="300" alt="image" src="https://github.com/user-attachments/assets/8cbc4120-2031-4130-bb5d-e45978838516" />

Blader vervolgens naar het betreffende IFC-bestand en klik op de knop **Model toevoegen** om het IFC-model in te voegen.
<br>
Meer informatie over basispunten in Tekla Structures:<br>
Een uitgebreide uitleg over basispunten in de [Tekla User Assistance](https://support.tekla.com/nl/doc/tekla-structures/2025/int_base_point) <br>
Een webinar [basispunten](https://www.youtube.com/watch?v=iAdi_x3enPE&t=900s) (2020)<br>
<br>

--- 

## Sketchup

georeference: https://www.youtube.com/shorts/G2dFYtu4daI
geolocation: https://www.youtube.com/shorts/SZ47268CLI8

--- 

## Blender
--- 
Methode is numeriek, de waarde die wilt gebruiken moet je vooraf hebben bepaald. 
Een goed begin is de site [IFC2Perceel](https://bim-tools.github.io/perceel2ifc/)
Deze site geeft het het actueele kadastrale perceel op NAP hoogte met een <a>GEO Coördinatiepunt</a>

<img width="700" height="438" alt="image" src="https://github.com/user-attachments/assets/797b0407-712f-4b66-9329-01a7f04a7037" />

Waarden voor de geografische plaasing van het model <a>nulpunt</a> kun je bekijken en aanpassen onder Project Setup > Geometry > Georeferencing
Dit zijn extat dezelfde waarden als IFCmapconersion. 

<img width="700" height="460" alt="image" src="https://github.com/user-attachments/assets/49e8f6a9-f0ca-4585-94f2-a14d76e1368a" />


Gebruik het oog symbooltje en size om het visueel te laten weergeven

<img width="700" height="270" alt="image" src="https://github.com/user-attachments/assets/a283aa36-2f13-41d1-871d-4b3ec30e54f8" />

Handig is ook dat je de rotatie met Grid North kunt laten berekenen
<img width="700" height="325" alt="image" src="https://github.com/user-attachments/assets/9b369f66-9f20-4369-adf7-f54ef9e33048" />

dxf import-extension

## Illustrator/Inkscape
--- 
The workflow is to:

Georeference the raster in QGIS
Digitize/Vectorize in QGIS
Depending on your map, the above workflow will still be faster than attempting to georeference the vectors you created, compare: How to georeference a vector layer with control points?

https://gis.stackexchange.com/questions/195527/qgis-use-svg-file-as-a-layer

### Illustrator MapPublisher
https://www.youtube.com/watch?v=SfBNL8TvAC8


## QGIS
Plug-in DXF - AnotherDXFImporter

https://opengislab.com/blog/tag/Convert+DXF+DWG

GDAL - Toolbox processing
GDAL Vetor Converse Covert Format 

Kaartlagen, georeferencer: DXF - openen - Ground Contro Punt Toevoegen - Kaart in de kaart toeveogen (of handmatig invoeren)
Dit voor 4 punten doen. Druk op run 

Hiermee krijg je de affine transformatie (Dat is een super-klasse van helmert)
 