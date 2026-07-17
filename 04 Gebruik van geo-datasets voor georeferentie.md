# Gebruik van geodata voor georeferentie

## Georeferentie Level 60 voor BIM-modellen
De aanbevolen methode voor georeferentie (level 50) kan worden toegepast voor infrastructuurprojecten, maar is daarvoor vaak niet toereikend en vereist in de praktijk een hogere nauwkeurigheid (level 60). Om een model met level 60 te georefereren, zijn er o.a. drie mogelijkheden om dit toe te passen: (1) Gebruik van teferentiepunten (<a>survey point</a>s), (2) <a>Geografische uitlijning</a> en (3) <a>scan-to-BIM</a> gebaseerd op technieken [BuildingSMART et al. (2020)](https://www.buildingsmart.org/wp-content/uploads/2025/04/The-buildingSMART-Awards-Yearbook-2020.pdf). Voor iedere methode van georeferentie wordt in de theorie nader toegelicht hoe deze kan worden toegepast. Bij de derde mogelijkheid is het model vaak reeds geogerefereerd, en zijn er in de meeste gevallen een transformatieparameters beschikbaar die het model vertaalt van een BIM-softwareomgeving naar het coördinatenstelsel waarin de puntenwolk is ingewonnen.

Daarom wordt geadviseerd om uitsluitend bij optie 1 en 2 een beoordelingstoets uit te voeren, om te verifiëren of het model zich daadwerkelijk op de correcte locatie bevindt.

### Het gebruik van referentiepunten
Voor kleine netwerken worden vaste meetpunten op plekken waarvan met een bepaalde zekerheid gezegd kan worden dat deze niet verstoord worden of verdwijnen. De meetpunten worden in RDNAP bepaald, en kunnen beschouwd worden als stabiel in het terrein. De bepaling in RD wordt door middel van RTK-<a>GNSS</a> uitgevoerd met een nauwkeurigheid van 2-3 cm. Wanneer het niet mogelijk is meetpunten direct via RTK-GNSS te bepalen, bijvoorbeeld als de meetpunten in een muur/wand zitten, worden er tijdelijke punten gemaakt en via tachymetrie de RD-coördinaten ingemeten. Doormiddel van waterpassing wordt de hoogte (H) met mm-nauwkeurigheid bepaald.

Bij het verwerken van langgerekte netwerken kan er gekozen worden voor referentievelden, deze wordt op dezelfde manier bepaald, maar alleen via GNSS gekoppeld aan RD-coördinaten. Voor de NAP-hoogte kan een waterpassing uitgevoerd worden per veld. Het geodetisch netwerk wordt gebruikt om een puntenwolk te georefereren, hiervan wordt een BIM-model gemaakt. Er kan een controle uitgevoerd worden door de coördinaten en het BIM-model te vergelijken.

### Geografische uitlijning
Geografische uitlijning (in de Engelstalige literatuur aangeduid als footprint alignment) vereist dat zowel het planimetrische (XY) als het altimetrische (Z) component expliciet worden meegenomen. Om een ongerefereerd model te transformeren naar een gerefereerde ruimtelijke omgeving, is het noodzakelijk gebruik te maken van bestaande, stabiele objecten waarvan de verplaatsing in de tijd verwaarloosbaar is. Hierbij wordt een iteratief uitlijningsproces toegepast. Dit proces vangt aan met een initiële, grove schatting van het planimetrische component, waarna het altimetrische component verder wordt verfijnd op basis van patroonherkenning. Voor toepassing binnen infrastructuur- en B&U-projecten kunnen twee typen objecten als referentie worden ingezet: (1) noklijnen en (2) straatmeubilair.

*Noklijnen*
Als de planimetrische componenten van de dataset op juiste plek liggen, is het nog steeds van belang om het hoogte component op de juiste manier te referen. Vanuit het Inetergaal Hoogtevoorziening Nederland (IHN)-project is gebleken dat er in Nederland belangrijke methoden beschikbaar zijn om data die niet zijn gerefereerd of die geen 3D-informatie bevatten, te koppelen aan bestaande referentiesystemen. Hiervoor kan bijvoorbeeld gebruik worden gemaakt van noklijnen die zijn geëxtraheerd uit het [Actueel Hoogtebestand Nederland (AHN)](https://www.ahn.nl/integrale-hoogtevoorziening-nederland)
Deze methode, vrij beschikbaar via de dataroom van het AHN, maakt het mogelijk om de beschikbare noklijnen binnen het projectgebied te gebruiken als referentie voor het positioneren van het model ten opzichte van de GIS-laag. Een aandachtspunt is echter dat deze datasets beschikbaar zijn in GPKG-formaat, waardoor de gebruiker de data handmatig moet converteren naar een DWG-bestand om deze binnen gangbare BIM-software te kunnen gebruiken.

*Straatmeubilair*
Bij infrastructuurprojecten zijn in veel gevallen geen gebouwen aanwezig, waardoor het gebruik van noklijnen beperkt is voor de hoogteregistratie binnen infrastructurele BIM-modellen buiten stedelijke gebieden. In dergelijke situaties kan gebruik worden gemaakt van straatmeubilair en andere infrastructuurobjecten met een duidelijke geometrische of semantische herkenbaarheid, zoals wegmarkeringen, kantverharding en overige vaste objecten.

Voor deze toepassing zijn verschillende landelijke datasets van belang die, naast het Actueel Hoogtebestand Nederland (AHN), kunnen worden ingezet. Voorbeelden hiervan zijn het Digitaal Topografisch Bestand (DTB/1GiS) en het Nationaal Wegenbestand (NWB). Het is hierbij van belang te onderkennen dat deze datasets niet volledig driedimensionaal zijn. Zo is het DTB/1GiS een 2.5D-dataset, waarbij per XY-coördinaat slechts één hoogtewaarde beschikbaar is, terwijl het huidige NWB uitsluitend tweedimensionale geometrie bevat.

Door wisselende prioriteiten binnen grootschalige infrastructuurprojecten kunnen er verschillen optreden in betrouwbaarheid en in de toegepaste inwin- en meetmethoden per objecttype. Daarom is het raadzaam om vooraf het DTB-handboek te raadplegen, voordat een object wordt geselecteerd voor toepassing binnen de geografische uitlijningsmethode. Afhankelijk van de objectcategorie kan dit resulteren in planimetrische afwijkingen van circa 5 tot 15,5 cm en altimetrische afwijkingen van ongeveer 10 tot 15 cm.

De onderstaande figuur toont de combinatie van een BIM-model met het DTB/1GiS van de Drechtentunnel. Het volledige overzicht boven (links) en onder (rechts) maaiveld illustreert hoe een geo-gereferereerd BIM-model is gepositioneerd binnen zijn geografische context.
<figure id="Geo_overzicht_BIM_DTB">

  <div style="display: flex; justify-content: center; gap: 20px; flex-wrap: wrap;">
    <img src="./media/geo_overzicht.png" alt="geo_overzicht" height="250"/>
    <img src="./media/geo_overzicht_2.png" alt="geo_overzicht_2" height="250"/>
  </div>

  <figcaption>
    <em>
      Overzicht van de Drechttunnel met het DTB en de 3DBAG. Links geeft de data boven de grond weer, en rechts de data onder de grond.  
      Dit overzicht is gemaakt vanuit de RWS Digital Twin Basisvoorziening.
    </em>
  </figcaption>

</figure>

Naast vectoriële datasets zoals het DTB/1GiS en het NWB kan ook het AHN, of een andere beschikbare puntenwolk in de omgeving, worden ingezet. Wegmarkeringen en andere infrastructurele objecten zijn hierin vaak goed herkenbaar doordat de intensiteitswaarden van de punten op het wegdek doorgaans significant lager zijn dan die van het omliggende straatmeubilair. Hierdoor kunnen deze objecten relatief eenvoudig worden geïdentificeerd en geëxtraheerd uit de puntenwolk, wat ze geschikt maakt als referentie voor hoogteregistratie.

## Geo datasets voor het refereren van modellen
Voor het refereren van datasets naar een geo domein, zijn een aantal datasets beschikbaar om op aan te sluiten. Deze zijn (niet limitatief) weergegeven in onderstaande [tabel](#tabel-overzicht-nationale-datasets) (<a href="https://cuatro.sim-cdn.nl/ahn/uploads/1_inventarisatie_van_puntenwolken_in_nederland_1.pdf?cb=mm0aYtMc"><em>WP1: Inventarisatie van puntenwolken in
Nederland</em></a>). In de tabel zijn de volgende informatie weergegeven: de bestandsnaam, eigenaar, nauwkeurigheid, dimensie en locatie. 

<table id="tabel-overzicht-nationale-datasets">
   <caption>Overzicht van nationale datasets beschikbaar voor geo-referentie van project data of modelen</caption>
  <thead>
    <tr>
      <th>Naam</th>
      <th>Nauwkeurigheid</th>
      <th>Dimensie</th>
      <th>Domein</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://www.pdok.nl/introductie/-/article/digitaal-topografisch-bestand-dtb-"><strong>DTB / 1GiS</strong></a></td>
      <td>cm-nauwkeurig op objectniveau</td>
      <td>2.5D</td>
      <td>Landelijk, beheerde water/wegen-infrastructuur</td>
    </tr>
    <tr>
      <td><a href="https://www.pdok.nl/introductie/-/article/basisregistratie-grootschalige-topografie-bgt-"><strong>BGT</strong></a></td>
      <td>cm-nauwkeurig op objectniveau</td>
      <td>2D</td>
      <td>Landelijk</td>
    </tr>
    <tr>
      <td><a href="https://www.ahn.nl/dataroom"><strong>AHN</strong></a></td>
      <td>10–15 cm (verticaal) &amp; 13–18 cm</td>
      <td>3D</td>
      <td>Landelijk</td>
    </tr>
    <tr>
      <td><strong>PMG</strong></td>
      <td>± 2 cm (relatief)</td>
      <td>3D</td>
      <td>RWS-wegennet, selectieve locaties</td>
    </tr>
    <tr>
      <td><a href="https://www.nationaalwegenbestand.nl/nwb-downloaden"><strong>NWB</strong></a></td>
      <td>± 1 m (topologisch)</td>
      <td>2D</td>
      <td>Landelijk, wegennet (NL)</td>
    </tr>
    <tr>
      <td><a href="https://spoorinbeeld.nl/"><strong>SpoorInBeeld - Helicopter vluchten</strong></a></td>
      <td>± 12 cm (XYZ)</td>
      <td>3D</td>
      <td>Spoortracés Nederland</td>
    </tr>
    <tr>
      <td><a href="https://www.beeldmateriaal.nl/dataroom"><strong>Beeldmateriaal</strong></a></td>
      <td>± 5–10 cm (projectie)</td>
      <td>2.5D</td>
      <td>Landelijk / stedelijk</td>
    </tr>
    <tr>
      <td><a href="https://maps.rijkswaterstaat.nl/geoweb55/index.html?viewer=NAPinfo"><strong>NAP-netwerk</strong></a></td>
      <td>&lt; 1 cm (verticaal)</td>
      <td>1D (Z)</td>
      <td>Landelijk meetnet (peilmerken)</td>
    </tr>
    <tr>
      <td><a href="https://www.pdok.nl/introductie/-/article/basisregistratie-adressen-en-gebouwen-ba-1"><strong>BAG</strong></a></td>
      <td>± 10 cm (objectpositie)</td>
      <td>2D/2.5D</td>
      <td>Landelijk (NL)</td>
    </tr>
  </tbody>
</table>

Naast primaire geo datasets, kunnen gemeentes, provicies en centrale overheden andere datasets beschikbaar hebben, die kleiner van scope zijn. Ook zijn er datasets die zijn geextraheerd uit de bovenbenoemde datasets. Een voorbeeld is de 3DBAG, waar het <a>AHN</a> de basis is voor het maken van deze dataset, maar het <a> DTB </a> is ook opgebouwd uit verschillende meet technieken met verschillende standaarden. Vanuit het onderzoek van Rijkswaterstaat, Tu Delft, Het Waterschapshuis en de EuroSDR is er een analyse uitgevoerd voor alle LiDAR datasets in europa, deze zijn weergegeven via <a href="https://3d.bk.tudelft.nl/eupc/"> <strong>European Pointclouds (EUPC)</strong></a>

### Kwaliteits kenmerken voor geobestanden naar BIM
De verschillende datasets die voor dit doel kunnen worden gebruikt, zijn duidelijk van elkaar te onderscheiden. Zoals in de vorige paragraaf is benadrukt, vormen zowel het planimetrische (XY) als het altimetrische (Z) component een fundamenteel onderdeel van een geo-databestand. Afwijkingen in deze componenten, of verschillen die ontstaan door uiteenlopende momenten van inwinning of ontwerp, kunnen een aanzienlijke impact hebben op de onderlinge uitlijning van datasets. Het correct refereren van een bestand ten opzichte van deze assen is daarom essentieel om betrouwbare vervolgstappen in het uitlijnings- en integratieproces te kunnen uitvoeren.

Het doel van het refereren van een model binnen het geo-domein is het positioneren ervan in de echte wereld. Deze echte wereld bestaat uit een lokaal en een globaal coördinatensysteem. Zoals eerder beschreven, wordt een BIM-model in de toegepaste softwarepakketten vaak in een 0,0,0-referentiesysteem geplaatst. Daarentegen bevatten globale coördinaten aanzienlijk grotere waarden, wat ertoe kan leiden dat een dataset vastloopt binnen een applicatie. De documentatie van het gebruikte coördinatensysteem is eveneens van cruciaal belang. Wanneer dit systeem niet correct is vastgelegd, kunnen er problemen ontstaan tijdens de conversie van de hoogtecomponent.

### Primaire kwaliteits kenmerken voor geobestanden naar bim
Voor het gebruik van een dataset uit het **GIS-domein** zijn verschillende kenmerken van belang voor de toepassing binnen een **BIM-systeem**. Niet alle data is even geschikt om gebruikt te worden, naast het gerbuik van het juiste coordinaten systeem, spelen er kwaliteits kenmerken mee die van invloed zijn op zowel de ingewonnen als de gerbruikte referentie data. Op basis van o.a. de onderzoeken en initiatieven van het <a href="https://www.ahn.nl/integrale-hoogtevoorziening-nederland"> <em>Intergaal Hoogtevoorziening Nederland</em></a> (Het Waterschapshuis, Rijkswaterstaat, TU Delft & het Kadaster), de  <a href="https://www.digigo.nu/ilsen-en-richtlijnen/basis-ils-puntenwolk/"> <em>Basis ILS puntenwolken</em></a> (DigiGo) en <a href="https://www.digigo.nu/ilsen-en-richtlijnen/basis-ils-puntenwolk/"> <em>Handreiking 3D Tiling</em></a> (Geonovumn) kunnen de volgende componenten worden meegenomen. Let wel er zijn meer componenten die van invloed zijn op de kwaliteit en bruikbarheid van de data. 

***1. Geografische distributie van de meet punten***

Afhankelijk van de inwin methode, is de geografische distributie van de meetpunten van belang. Dit heeft namelijk een direct effect van het onderscheiden van objecten in het terrein, maar ondersteunt ook in correct vinden van de refrenetie punten. De distributie wordt omschreven door de hoeveelheid punten per vierkante meter of door de minimale afstand tussen de punten. De leert praktijk is een hoge puntdichtheid gekoppeld aan een hoger detailniveau van het 3D-model.

***2. De absolute en relatieve nauwkeurigheid van een geo-dataset***

In de literatuur en uitvraag­specificaties wordt een onderscheid gemaakt tussen de **absolute** en **relatieve** nauwkeurigheid van een geo-dataset. De **absolute nauwkeurigheid** beschrijft de afwijking tussen de inwinning of het model en de werkelijkheid, terwijl de **relatieve nauwkeurigheid** vaak wordt gebruikt om de afwijking tussen meetpunten binnen overlappende inwinningen te omschrijven. Een voorbeeld hiervan is een dwarsprofiel over een ingewonnen stuk snelweg. Beide typen nauwkeurigheden worden uitgedrukt in een planimetrische (XY) en een altimetrische (Z) component. De verschillende uitvraag­specificaties laten zien dat de relatieve nauwkeurigheid altijd kleiner is dan de absolute nauwkeurigheid.

***3. De classificatieparameters in een geo-dataset***

De wijze waarop objecten binnen een geo-dataset worden geclassificeerd, is essentieel voor de bruikbaarheid binnen een BIM-context. De toegepaste classificatiemethode vormt een belangrijke kwaliteitsparameter, bijvoorbeeld wanneer classificatie wordt uitgevoerd door kunstmatige intelligentie (AI) of door menselijke experts. Daarnaast zijn de gebruikte definities een cruciaal startpunt binnen dit proces. Zo kan de classificatie van vegetatie in de referentiedataset niet automatisch dezelfde definitie hebben als in de ingewonnen dataset, wat kan leiden tot interpretatieverschillen of inconsistenties in het uiteindelijke model.

***4. De inwindatum van de geo-dataset***

Het moment van inwinning bepaalt de bruikbaarheid van de dataset, aangezien iedere geo-dataset die wordt weergegeven in een GIS-omgeving een momentopname is. Een geo-dataset vertegenwoordigt nooit de volledige werkelijkheid, maar vormt slechts een benadering van de omgeving. Hierdoor kan de omgeving, afhankelijk van de mate van verandering, in de loop van de tijd sterk of minder sterk afwijken van de oorspronkelijke weergave. Dit wordt geïllustreerd in de onderstaande figuren aan de hand van de stationsregio van Delft, zoals weergegeven in het Actueel Hoogtebestand Nederland en de 3D Basisvoorziening, waarbij de bouw van de stationsregio een ingrijpende verandering in het terrein laat zien.

<figure id="Leefttijd-van-verschillende-puntenwolken-van-de-stations-regio-in-Delft">
      <img src="./media/Regio_delft_verandering.png" alt="Leefttijd van verschillende puntenwolken van de stationsregio in Delft" height="500"/>
    <figcaption><a class="self-link" href="#fig-Leefttijd-van-verschillende-puntenwolken-van-de-stations-regio-in-Delft"></bdi></a><span class="fig-title">Leefttijd van verschillende puntenwolken van de stationsregio in Delft (figuur is uit wp1 van het <a href="https://www.ahn.nl/integrale-hoogtevoorziening-nederland"> <em>Intergaal Hoogtevoorziening Nederland</em></a> overgenomen.) </span></figcaption>
</figure>
