# Coördinaatreferentiesystemen en Coördinaattransformatie

Om informatie te koppelen aan een locatie op aarde worden geodetische coördinaatreferentiesystemen gebruikt. <a>Geodetische CRS</a>-en die relevant zijn voor het georefereren van BIM in Nederland zijn:

<table>
  <caption>Relevante coördinatiesystemen voor het georefereren Geo en BIM in Nederland</caption>
  <thead>
    <tr>
      <th>Naam</th>
      <th>Omschrijving</th>
      <th>EPSG-code</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>RD</td>
      <td><a href="#geprojecteerd-crs">Geprojecteerd CRS</a> voor Nederland</td>
      <td>EPSG:28992</td>
    </tr>
    <tr>
      <td>NAP</td>
      <td><a href="#vertikaal-crs">Vertikaal CRS</a> (hoogte) voor Nederland</td>
      <td>EPSG:5709</td>
    </tr>
    <tr>
      <td>RDNAP</td>
      <td><a href="#samengesteld-crs">Samengesteld CRS</a> voor Nederland</td>
      <td>EPSG:7415</td>
    </tr>
    <tr>
      <td>ETRS89</td>
      <td><a href="#geografische-en-geocentrisch-crs">Geografisch CRS</a> voor Europa en precieze (centimeter niveau) plaatsbepaling in Nederland</td>
      <td>EPSG:4258 (2D-code)</td>
    </tr>
    <tr>
      <td>WGS 84</td>
      <td>Geografisch CRS voor de aarde en niet precieze (meter niveau) plaatsbepaling in Nederland, niet geschikt voor uitwisseling van data, alleen voor visualisaties</td>
      <td>EPSG:4326 (2D-code)</td>
    </tr>
  </tbody>
</table>

De <a>EPSG code</a> is een unieke identificatie van het CRS binnen de zogenaamde EPSG-database, een wereldwijde verzameling van coördinaatsystemen en -transformaties.

Voor BIM toepassingen wordt vaak gebruik gemaakt van een <a>Lokaal CRS</a>. Door een link te maken tussen het lokale assenstelsel in BIM en een <a>geprojecteerd CRS</a> kan een BIM model verder gebruikt worden in GEO/GIS systemen met zo min mogelijk verlies van data. Vanaf hier kan GIS/GEO software gebruik maken van projecties en andere GIS tools om het BIM model te projecteren in de wereld en hier aanvullende analyse op te doen. Het omzetten van het ene CRS naar het andere CRS wordt een <a>Coördinaattransformatie</a> genoemd.

Zoals hierboven aangegeven worden in Nederland meerder CRS-en Bij het gebruik van meerdere CRS-en bestaat risico op introductie van fouten door onjuiste implementatie van de relaties tussen CRS-en. Binnen Nederland worden aanbieders van data worden geadviseerd om data aan te bieden in de verschillende CRS-en gericht op de eindgebruikers. Eindgebruikers worden juist geadviseerd data waar mogelijk op te vragen in hetzelfde CRS. Dit is ook een nadrukkelijke aanbeveling voor gebruikers van BIM-software. 

<aside class="note" title="Gebruik hetzelfde CRS">
  <p>**AANBEVELING** Vraag als eindgebruiker geodata waar mogelijk op in hetzelfde CRS</p>
</aside>

De meeste BIM software is namelijk niet instaat transformaties uit te voeren tussen verschillende geprojecteerde CRS'en. Wanneer GIS data dus naar BIM moet worden uitgewisseld is het belangrijk dat dit al geprojecteerd is in het coördinatensysteem wat de BIM Software verwacht. Afhankelijk van de BIM Software kan het zelfs nodig zijn te transformeren naar het lokale stelsel wat gebruikt wordt door de BIM Software. Hier dienen binnen projecten duidelijk afspraken over gemaakt worden.

<aside class="note" title="Maak vooraf afspraken over de te gebruiken CRS-en en transformatie">
  <p>**AANBEVELING** Maak afspraken met projectpartners over te gebruiken CRS-en</p>
</aside>

De volgende pargraven gaan dieper in op de verschillende CRS-typen, de relaties tussen CRS-en die direct relevant zijn voor deze praktijkrichtlijn en introduceert de gangbare terminologie voor CRS-en. Voor nog meer informatie en adviezen wordt verwezen naar de [Handreiking Gebruik coördinaatreferentiesystemen bij uitwisseling en visualisatie van geo-informatie](https://docs.geostandaarden.nl/crs/crs/).

## Geodetische CRS-en

### Geografische en geocentrisch CRS

Geodetische CRS-en gebruiken een vereenvoudigd 3D-model van de aarde om locaties vast te leggen ten opzichte van het aardoppervlak. Het vereenvoudigd model is een omwentelingsellipsoïde (een afgeplatte bol). Coördinaten worden uitgedrukt in ellipsoïdsche breedte (<span style="font-family: 'Times New Roman';">&#981;</span>), lengte (<span style="font-family: 'Times New Roman';">&lambda;</span>) en hoogte (<span style="font-family: 'Times New Roman';"><i>h</i></span>) of rechthoekige coördinaten <span style="font-family: 'Times New Roman';"><i>X</i></span>, <span style="font-family: 'Times New Roman';"><i>Y</i></span> en <span style="font-family: 'Times New Roman';"><i>Z</i></span> ten opzichte van het middelpunt van de ellpisoïde. In onderstaande figuur zijn de hoeken en assen van de ellipsoïdische en rechthoekige coördinaten weergegeven.

<table>
  <caption>Componenten waarmee men coördinaten uit kan drukken</caption>
  <tr>
    <td>
      <p><span style="font-family: 'Times New Roman';"><strong><i>Z</i><sub>ecef</sub></strong></span>: de rotatieas van de ellipsoïde vanaf de oorsprong</p>
      <p><span style="font-family: 'Times New Roman';"><strong><i>X</i><sub>ecef</sub></strong></span>: de as vanaf de oorsprong richting de nulmeridiaan in het equatorvlak loodrecht op de rotatieas</p>
      <p><span style="font-family: 'Times New Roman';"><strong><i>Y</i><sub>ecef</sub></strong></span>: de as vanaf de oorsprong loodrecht op de nulmeridiaan en de rotatieas</p>
      <p><span style="font-family: 'Times New Roman';"><strong><i>θ</i></strong></span>: de hoek die de loodlijn vanaf het oppervlak van de ellipsoïde maakt met het <span style="font-family: 'Times New Roman';"><strong><i>XY</i></strong></span>-vlak (= equatorvlak) 
      <mark>(let op: in dit plaatje is niet goed zichtbaar dat de loodlijn niet per se door het nulpunt hoeft te gaan)</mark></p>
      <p><span style="font-family: 'Times New Roman';"><strong><i>λ</i></strong></span>: de hoek met de nulmeridiaan</p>
      <p><span style="font-family: 'Times New Roman';"><strong><i>h</i></strong></span>: de hoogte boven de ellipsoïde</p>
    </td>
    <td>
      <figure id="3D_CRS" style="margin: 0;">
        <img src="media/geonovum-geo-bim_georefereren_2.png" alt="3D CRS" height="400"/>
        <figcaption><span class="fig-title">3D CRS</span></figcaption>
      </figure>
    </td>
  </tr>
</table>

<a>Ellipsoïdische coördinaten</a> worden ook wel geografische coördinaten genoemd, rechthoekige coördinaten worden ook wel <a>geocentrische coördinaten</a> genoemd.

### Geprojecteerd CRS

Om geo-informatie op een plat vlak weer te geven, worden kaartprojecties gebruikt. Veel gebruikte projectievlakken zijn een cilinderopperlvlak, kegeloppervlak en een plat vlak.


<figure id="Projecties">
   <img src="media/geonovum-geo-bim_georefereren_3.png" alt="Projecties" title="Onderschrift"  height="200"></a>
    <figcaption><a class="self-link" href="#fig-Projecties"></bdi></a><span class="fig-title">Projecties</span></figcaption>
</figure>


Elke <a>kaartprojectie</a> introduceert vervormingen in hoeken, afstanden en/of oppervlakten, omdat het onmogelijk is om het gekromde aardoppervlak af te beelden in een plat vlak en daarbij alle drie eigenschappen tegelijk exact te behouden. De keuze van een geschikte projectie hangt af van het doel van de kaart en welke eigenschappen het belangrijkst zijn voor de toepassing.

In Nederland wordt het geprojecteerde RD-stelsel gebruikt. het RD-stelsel heeft als eigenschap dat hoeken onvervormd worden weergegeven en afwijkingen in afstanden en oppervlakte beperkt zijn binnen Nederland.

<figure id="RD_Projectie">
  <img src="media/geonovum-geo-bim_georefereren_6-b.png" alt="RD Projectie" height="400"/></a>
  <figcaption><a class="self-link" href="#fig-RD-Projectie"></bdi></a><span class="fig-title">Projectie</span></figcaption>
</figure> 

### Vertikaal CRS 

<a>Ellipsoïdische hoogte</a> heeft geen fysieke betekenis, het geeft hoogte van een punt of object boven een vereenvoudigd model van de aarde. Orthometrische hoogtesystemen die een relatie hebben met zwaartekracht hebben wel een fysieke betekenis, tussen punten met exact dezelfde <a>orthometrische hoogte</a> zal in theorie geen water stromen. De relatie tussen de orthometrische hoogte en ellipoidische hoogte wordt gevormd door een <a>quasi-geoïdemodel</a>. Een quasi-geoïdemodel geeft de hoogte van het referentievlak voor de orthometrische hoogte boven de ellipsoïde. Het orthometrische hoogte systeem voor Nederlands is het Normaal Amsterdams Peil (NAP).

<figure id="Ellips,_Geoide,_aardoppervlak">
  <img src="media/geonovum-geo-bim_georefereren_1.png" alt="Ellips, Geoide, aardoppervlak" height="400">
  <figcaption><a class="self-link" href="#fig-Ellips,-Geoide,-aardoppervlak"></bdi></a><span class="fig-title">Ellips, Geoide, aardoppervlak</span></figcaption>
</figure> 

Het referentievlak voor de orthometrische hoogte volgt het zwaartekrachtveld en daarmee de kromming van de aarde. Terwijl voor de horizontale component de kromming van het aardoppervlak vaak genegeerd kan worden, geldt die niet voor de vertikale component. Onderstaande figuur illustreert afwijkingen bij het verwaarlozen van de aardkromming voor de afstand en het hoogteverschil tussen punten P en Q. Bij het verwaarlozen van de aardkromming snijden de lijn RQ en de raaklijn aan de ellips vanuit P elkaar in het punt Q. <mark>De werkelijke afstand PQ over het aardoppervlak is korter dan de afstand PQ', op een afstand van 10 kilometer is het verschil echter slecht 1 centimeter.</mark> Punt P en Q hebben beide dezelfde hoogte ten opzichte van het aardoppervlak, punt Q'ligt echter x meter boven het aardoppervlak. Het hoogteverschil is 10 meter bij 10 km of 1 cm bij 400 meter.
<figure id="Afwijking_van_aardkromming">
  <img src="media/geonovum-geo-bim_georefereren_4-b.png" alt="Afwijking door aardkromming" height="400">
  <figcaption><a class="self-link" href="#fig-Afwijking-door-aardkromming"></bdi></a><span class="fig-title">Afwijking door aardkromming</span></figcaption>
</figure> 

### Samengesteld CRS

* geprojecteerd + hoogte  (RDNAP)
* geografisch 2D + hoogte (ETSR89_NAP)

## Lokaal CRS

Een <a>lokaal CRS</a> is een arbitrair gekozen assenstelsel. De oorsprong, de oriëntatie en het vertikale referentievlak van het stelsel worden gekozen op basis van praktische overwegingen <mark>en kan voordelen hebben bij bepaalde 3D modeleer software <i> is dat zo</i></mark>. <mark> Sommige applicaties voorzien ook alleen in een lokaal assenstelsel om in te modelleren</mark> Dit kan project afhankelijk zijn, bijvoorbeeld een hoekpunt, voorgevel en begane grond van een gebouw, de eenheden zijn vaak in meters of millimeters. Er is geen directe relatie met de echte wereld tenzij er een coördinaattransformatie wordt toegepast.

### Benadering van RD in lokaal CRS

In sommige software pakketen zoals AutoCAD is het gebruikelijk om met het lokale stelsel en RD-stelsel te benaderen, bijvoorbeeld door het gebruik van bekende punten of door de oorsprong te verschuiven. AutoCAD is alleen zelf niet bewust dat dit RD-coördinaten zijn. Wat de software betreft is dit een lokaal stesel zonder verdere betekenis en worden de aardkromming en eigenschappen van de kaartprojectie niet toegepast. De link tussen de lokale coördinaten en het geprojecteerd CRS is in dit geval X<sub>bim</sub> &ne; X<sub>gis</sub>, Y<sub>bim</sub> &ne; Y<sub>gis</sub>, Z<sub>bim</sub> &ne; Z<sub>gis</sub>.

### True North, Grid North, Project North

Soms wordt de relatie van het lokale CRS ten opzicht van het Noorden gegeven. In de BIM-sector worden hiervoor de termen <a>True North</a>, <a>Grid North</a> en <a> Project North </a> om de relatie met de oriëntatie van een geodetisch CRS aan te geven. Deze hebben afhankelijk van het type CRS de volgende betekenis.

* CRS obv ellipsoïde: true north is in de richting van de rotatie as van de ellipsoïde (<span style="font-family: 'Times New Roman';"><i>Z</i><sub>ecef</sub></span> in eerdere figuur)
* CRS obv projectie: true north is in de richting noorden van geprojecteerde stelsel vaak de Y-as of Northing-as, ook wel grid north genoemd.


<figure id="True_North_en_Grid_North">
  <img src="./media/True_North_and_Grid_North.png" alt="True North en Grid North" title="True North en Grid North" height="300"> 
  <figcaption><a class="self-link" href="#fig-True-North-en-Grid-North"></bdi></a><span class="fig-title">True North en Grid North</span></figcaption>
</figure>

* Het Project North is normaliter gebaseerd op de voornaamste as van het bouwwerk. Het beïnvloedt hoe je schetst in views in software en hoe views op tekenbladen worden geplaatst.Het Project North richt zich vaak richting de bovenkant van een tekengebied. Dit vereenvoudigt het modelleren. 

<figure id="Project_North">
  <img src="./media/Project North.png" alt="Project North" title="Project North" height="300"> 
  <figcaption><a class="self-link" href="#fig-Project-North"></bdi></a><span class="fig-title">Project North</span></figcaption>
</figure> 

## Coördinaattransformatie tussen lokaal CRS en geodetisch

De coördinaattransformatie tussen een geodetisch CRS en een lokaal CRS wordt, binnen de huidige standaarden, apart gegeven voor de horizontale en de vertikale component.

<aside class="note" title="Aparte Horizontale en Vertikale coördinaattransformatie">
  <p>**AANBEVELING** Gebruik aparte transformaties voor de horizontale en vertikale componenten. Dit betekent één 2D transformatie voor het horizontale vlak en één 1D transformatie voor het verticale vlak resulteert in een 3D transformatie.</p>
</aside>

### Horizontaal - 2D gelijkvormigheidstransformatie

De relatie tussen het lokale CRS en een geprojecteerd CRS wordt gelegd via een <a>2D gelijkvormigheidstransformatie</a> (ook wel 2D Helmert transformatie genoemd).

<table>
  <tr>
    <td>
    <figure id="Relatie_GeoBIM">
      <img src="media/geonovum-geo-bim_georefereren_7.png" alt="Relatie GeoBIM" height="250"/>
    <figcaption><a class="self-link" href="#fig-Relatie-GeoBIM"></bdi></a><span class="fig-title">Relatie GeoBIM</span></figcaption>
    </figure> 
    </td>
    <td>
    <figure id="2D_Transformatie">
      <img src="media/geonovum-geo-bim_georefereren_8.png" alt="2D Transformatie" height="250"/>
          <figcaption><a class="self-link" href="#fig-2D-Transformatie"></bdi></a><span class="fig-title">2D Transformatie</span></figcaption>
    </figure>
    </td>
  </tr>
  <tr>
  <td>
  3D relatie tussen geografisch, geocentrisch en geprojecteerd CRS en lokaalstelselsel. Paramters voor de 2D gelijkvormighedistransformatie zijn translateies (t), schaal (s) en rotatie (alpha)
  </td>
  <td>
  2D relatie tussen geprojecteerd CRS en lokaalstelselsel. Parameters voor de 2D gelijkvormighedistransformatie zijn translateies (t), schaal (s) en rotatie (alpha). Er is een eenduidige relatie tussen de parameters rotatiehoek (alpha) en de inIFC/BIM gebruikte termen XAxisAbscissa (cos(alpha)) en XAxisOrdinate (sin(alpha))
  </td>
  </tr>
</table>

De parameters voor de 2D gelijkvormigheidstransformatie kunnen worden berekend wanneer van minimaal 2 punten de coördinaten bekend zijn in het geprojecteerde en het lokale CRS. De parameters kunnen worden berekend met behulp van een <a>kleinste kwadratenschatting</a>, wanneer voor meer dan 2 gemeenschappelijke punten de coördinaten in beide stelsels beschikbaar zijn, kan door de <a>overbepaaldheid</a> worden getoetst op eventuele fouten in de coördinaten van 1 van de punten in een van de stelsels. <mark>De toetsing kan bijvoorbeeld door naar de grootte sluitvectoren/residuen te kijken of, zoals gebruikelijk in de landmeetkunde, een statistische toetsting uit te voeren. </mark>

<mark>DIT MAG ER WEL UIT?</mark>

De overbepaalde gelijkvormigheidstransformatie tussen een bron- en een doelstelsel word ook wel een Helmert-transformatie genoemd, het model van de Helmert-transformatie is een [speciaal geval van de gelijkvormigsheidtransformatie](https://www.kadaster.nl/documents/1953498/2914454/Handleiding_Technische+Werkzaamheden+Kadaster+%28HTW%29.pdf/#page=193) waarbij:

* de coördinaten van de gemeenschappelijke punten in het bronstelsel geen onzekerheid hebben en dus exact bekend worden verondersteld
* de onzekerheid van de coördinaten van de gemeenschappelijke punten allemaal gelijk zijn en er geen correlatie is tussen de coördinaten

Hoewel deze aannames niet altijd realistisch zijn geeft het model van de Helmert transformatie een eenvoudige manier om de parameters te berekenen met lineaire vergelijkingen.

<mark>Wat te doen met deze plaat: </mark>

<figure id="Welke_plaat_is_dit?">
      <img src="media/geonovum-geo-bim_georefereren_5.png" alt="Welke plaat is dit?" height="250"/>
          <figcaption><a class="self-link" href="#fig-Welke-plaat-is-dit?"></bdi></a><span class="fig-title">Welke plaat is dit?</span></figcaption>
    </figure>


### Vertikaal - vast hoogteverschil

Voor de relatie tussen vertikale referentievlakken is het uitgangspunt in de huidge standaarden dat de relatie is vast te leggen via een vast hoogteverschil.

