# Coördinatenstelsels en coördinatentransformatie

Om informatie te koppelen aan een locatie op aarde worden coördinatenstelsels gebruikt, die in de geo-informatie coördinaatreferentiesystemen (CRS'en) genoemd worden. In nederland worden meerdere CRS'en gebruikt, de <a>CRS</a>-en die relevant zijn voor het georefereren van BIM in Nederland zijn opgenomen in onderstaande tabel:

<table>
  <caption>Relevante coördinatenstelsels voor het georefereren van geo- en BIM-data in Nederland</caption>
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
      <td><a href="#geografische-en-geocentrisch-crs">Geografisch CRS</a> voor Europa en precieze (centimeterniveau) plaatsbepaling in Nederland</td>
      <td>EPSG:4258 (2D-code)</td>
    </tr>
    <tr>
      <td>WGS 84</td>
      <td>Geografisch CRS voor de aarde en niet-precieze (meterniveau) plaatsbepaling in Nederland, niet geschikt voor uitwisseling van data</td>
      <td>EPSG:4326 (2D-code)</td>
    </tr>
  </tbody>  
</table>

De <a>EPSG-code</a> is een unieke identificatie van het CRS binnen de zogenaamde EPSG-database, een wereldwijde verzameling van coördinatenstelsel en -transformaties.

Voor BIM-toepassingen wordt vaak gebruik gemaakt van een <a>Lokaal CRS</a>. Door een link te leggen tussen het lokale assenstelsel in BIM en bijvoorbeeld een <a>geprojecteerd CRS</a> kan een BIM-model gebruikt worden in een <a>GIS-systeem</a> of andere geo-software. Daarna kan deze software gebruik maken van andere projecties en GIS-tools om het BIM-model te visualiseren in de wereld en hier aanvullende analyse op te doen. Het omrekenen van het ene CRS naar het andere CRS wordt een <a>Coördinatentransformatie</a> genoemd.

Zoals hierboven aangegeven worden in Nederland meerdere CRS-en gebruikt. Bij het gebruik van meerdere CRS'en bestaat risico op introductie van fouten door onjuiste implementatie van de transformaties tussen CRS'en. Binnen Nederland worden aanbieders van data daarom geadviseerd om data aan te bieden in de verschillende CRS'en gericht op de eindgebruikers. Eindgebruikers worden juist geadviseerd data waar mogelijk op te vragen in hetzelfde CRS. Dit is ook een nadrukkelijke aanbeveling voor gebruikers van BIM-software. 

<aside class="note" title="Gebruik hetzelfde CRS">
  <p><strong>AANBEVELING:</strong> Vraag als eindgebruiker geo- en bim-data waar mogelijk op in hetzelfde CRS</p>
</aside>

De meeste BIM-software is namelijk niet in staat om transformaties uit te voeren tussen verschillende CRS'en. Wanneer GIS-data naar BIM moet worden uitgewisseld is het belangrijk dat dit al geprojecteerd is in het coördinatensysteem dat de BIM-software verwacht. Afhankelijk van de BIM-software kan het zelfs nodig zijn te transformeren naar het lokale stelsel dat gebruikt wordt door de BIM-software. Hier dienen binnen projecten duidelijke afspraken over gemaakt te worden.

<aside class="note" title="Maak vooraf afspraken over de te gebruiken CRS'en">
  <p><strong>AANBEVELING:</strong> Maak afspraken met projectpartners over de te gebruiken CRS'en en coördinatentransformatie</p>
</aside>

De volgende paragrafen gaan dieper in op de verschillende CRS-typen, de relaties tussen CRS-en die direct relevant zijn voor deze praktijkrichtlijn en introduceert de gangbare terminologie voor CRS-en. Voor nog gedetailleerdere informatie en adviezen wordt verwezen naar de [Handreiking Gebruik coördinaatreferentiesystemen bij uitwisseling en visualisatie van geo-informatie](https://docs.geostandaarden.nl/crs/crs/).

## Geodetische CRS'en

### Geografisch en geocentrisch CRS

Geodetische CRS'en gebruiken een wiskundig 3D model van de aarde om locaties vast te leggen ten opzichte van het aardoppervlak. Het wiskundig model is een omwentelingsellipsoïde (een afgeplatte bol). 
Coördinaten worden uitgedrukt in ellipsoïdsche breedte (<span style="font-family: 'Times New Roman';">&#966;</span>), lengte (<span style="font-family: 'Times New Roman';">&lambda;</span>) en hoogte (<span style="font-family: 'Times New Roman';"><i>h</i></span>) of rechthoekige coördinaten <span style="font-family: 'Times New Roman';"><i>X</i></span>, <span style="font-family: 'Times New Roman';"><i>Y</i></span> en <span style="font-family: 'Times New Roman';"><i>Z</i></span> ten opzichte van het middelpunt van de ellipsoïde. In onderstaande figuur zijn de hoeken en assen van de ellipsoïdische en rechthoekige coördinaten weergegeven.

<table style="width: 100%; table-layout: fixed;">
  <caption>Hoeken en assen waarmee men geografische en geocentrische coördinaten uit kan drukken</caption>
  <tr>
    <td style="width: 50%; vertical-align: top; padding-right: 1em;">
      <p><span style="font-family: 'Times New Roman';"><strong><i>Z</i><sub>ecef</sub></strong></span>: de rotatieas van de ellipsoïde vanaf de oorsprong</p>
      <p><span style="font-family: 'Times New Roman';"><strong><i>X</i><sub>ecef</sub></strong></span>: de as vanaf de oorsprong richting de nulmeridiaan in het equatorvlak loodrecht op de rotatieas</p>
      <p><span style="font-family: 'Times New Roman';"><strong><i>Y</i><sub>ecef</sub></strong></span>: de as vanaf de oorsprong loodrecht op de nulmeridiaan en de rotatieas</p>
      <p><span style="font-family: 'Times New Roman';"><strong><i>&#966;</i></strong></span>: de hoek die de loodlijn vanaf het oppervlak van de ellipsoïde maakt met het <span style="font-family: 'Times New Roman';"><strong><i>XY</i></strong></span>-vlak (= equatorvlak) 
      </p>
      <p><span style="font-family: 'Times New Roman';"><strong><i>&lambda;</i></strong></span>: de hoek met de nulmeridiaan</p>
      <p><span style="font-family: 'Times New Roman';"><strong><i>h</i></strong></span>: de hoogte boven de ellipsoïde</p>
    </td>
    <td style="width: 50%; vertical-align: top; padding-left: 1em;">
      <figure id="3D_CRS" style="margin: 0;">
                <img src="media/geonovum-geo-bim_georefereren_2.png" alt="3D CRS" style="width: 100%; max-width: 600px; height: auto;"/>
                <figcaption><a class="self-link" href="#fig-3D-CRS"></bdi></a><span class="fig-title">Geografisch en geocentrisch CRS</span></figcaption>
      </figure>
    </td>
  </tr>
</table>

<mark>Figuur aanpassen. De x-as moet door dhet snijpunt van de evenaar en de greenwich-nulmeridiaan. De evenaar en nulmeridiaan liggen niet op de goede plek. Voor locaties in Nederland gaat de loodlijn niet exact door het 0-punt. Voor de letter phi moet &#966; gebruikt worden i.p.v. &#981;. De letter h in de figuur weergeven bij de ellipsoïdische hoogte.</mark>

<a>Ellipsoïdische coördinaten</a> worden ook wel geografische coördinaten genoemd, rechthoekige coördinaten vanuit het middelpunt van de aarde worden ook wel <a>geocentrische coördinaten</a> genoemd.

### Geprojecteerd CRS

Om geo-informatie vanaf het gekromde aardoppervlak op een plat vlak weer te geven, worden kaartprojecties gebruikt. Veel gebruikte projectievlakken zijn een cilinderopperlvlak, kegeloppervlak en een plat vlak.


<figure id="Projecties" style="display: block; text-align: center; margin: 0 auto;">
   <img src="media/geonovum-geo-bim_georefereren_3.png" alt="Projecties" style="width: 100%; max-width: 800px; height: auto; display: block; margin: 0 auto;"/></a>
    <figcaption><a class="self-link" href="#fig-Projecties"></bdi></a><span class="fig-title">Projecties</span></figcaption>
</figure>

<mark>Waarom alleen een lampje bij een plat vlak? De pijljtes bij cilinder en kegel geven bovendien iets heel anders weer (het krullen van het projectievlak) dan bij het platte vlak (daar zijn het de stralen van het lampje). Dat is nogal verwarrend!</mark>

 

Elke <a>kaartprojectie</a> introduceert vervormingen in hoeken, afstanden en/of oppervlakten, omdat het onmogelijk is om het gekromde aardoppervlak af te beelden in een plat vlak en daarbij alle drie eigenschappen tegelijk exact te behouden. De keuze van een geschikte projectie hangt af van het doel van de kaart en welke eigenschappen het belangrijkst zijn voor de toepassing.

In Nederland wordt het geprojecteerde RD-stelsel gebruikt. Het RD-stelsel heeft als eigenschap dat hoeken onvervormd worden weergegeven en afwijkingen in afstanden en oppervlakte beperkt zijn binnen Nederland. Voor nauwkeurige toepassingen kan de variabele schaal van het RD-stelsel leiden tot vergroting of verkleining. Wanneer voor georeferentie op land een precisie beter dan 1 cm per 100 meter (10 centimeter per kilometer) belangrijk is dient men een schaalcorrectie Δℓ op horizontale afstanden toe te passen voor RD. Op de Nederlandse Exclusieve Economische Zone (EEZ) van de Noordzee loopt de schaalcorrectie op tot 1 cm per 10 meter (10 cm per 100 meter). De formule om werkelijke afstanden te schalen naar afstanden in het RD-stelsel is: 

<math display="block"><mi>Δℓ</mi><mo>=</mo><mo>-</mo><mn>9,2</mn><mo>+</mo><mfrac><mrow><msup><mrow><mo>(</mo><msub><mi>x</mi><mi>RD</mi></msub><mo>-</mo><mn>155000</mn><mo>)</mo></mrow><mn>2</mn></msup><mo>+</mo><msup><mrow><mo>(</mo><msub><mi>y</mi><mi>RD</mi></msub><mo>-</mo><mn>436000</mn> <mo>)</mo></mrow><mn>2</mn></msup></mrow><mrow><mn>1629</mn><mo>·</mo><msup><mn>10</mn><mo>6</mo></msup></mrow></mfrac><mtext> mm per 100 m</mtext>
</math>

waarbij:  <math><msub><mi>x</mi><mi>RD</mi></math> en <math><msub><mi>y</mi><mi>RD</mi></math> de gemiddelde RD-coördinaten in meter zijn van locatie van het BIM-project.

Let op, voor een precisie beter dan 1 cm per 500 meter (10 centimeter per 5 km) moet ook rekening gehouden worden met het onregelmatige RD-correctiegrid en volstaat bovenstaande formule niet.

<mark>Bovenstaande heeft te veel overlap met paragraaf "Afwijking door projectie"</mark>

<table style="width: 100%; table-layout: fixed;">
  <tr>
    <td style="width: 50%; vertical-align: top;">
      <figure id="RD_Projectie" style="margin: 0; display: flex; flex-direction: column; align-items: center;">
         <div style="width: 100%; max-width: 400px; height: 300px;">
         <img src="media/geonovum-geo-bim_georefereren_6-a.png" alt="RD Projectie"style="width: 100%; height: 100%; object-fit: contain;"/></a>
         </div>
        <figcaption><a class="self-link" href="#fig-RD-Projectie"></bdi></a><span class="fig-title">Een punt op het aardoppervlak (zwart) wordt op het RD-projectievlak geprojecteerd (groen) vanaf het punt diametraal tegenover Amersfoort. </span></figcaption>
      </figure> 
    </td>
    <td style="width: 50%; vertical-align: top;">
      <figure id="RD_Correctie" style="margin: 0; display: flex; flex-direction: column; align-items: center;">
         <div style="width: 100%; max-width: 400px; height: 300px;">
         <img src="./media/Correcties_aan_gemeten_afstanden.png" alt="2D en 3D Geo of BIM combineren" style="width: 100%; height: 100%; object-fit: contain;" />
         </div>
        <figcaption><a class="self-link" href="#fig-RD-Correctie"></bdi></a><span class="fig-title">Correcties aan gemeten afstanden voor de RD-projectie in mm per 100 m.</span></figcaption>
      </figure> 
    </td>
  </tr>
</table>

Waar het projectievlak binnen de ellipsoïde valt worden afstanden korter weergegeven dan in werkelijkheid, waar het projectievlak buiten de ellipsoïde valt worden afstanden langer weergegeven dan in werkelijkheid. Het maximale effect is 10 millimeter  per 100 meter op het vaste land.

### Vertikaal CRS 

<a>Ellipsoïdische hoogte</a> heeft geen fysieke betekenis, het geeft de hoogte van een punt of object aan boven een vereenvoudigd model van de aarde. Hoogtesystemen die een relatie hebben met de zwaartekracht hebben wel een fysieke betekenis. Tussen punten met exact dezelfde <a>fysische hoogte</a> zal in theorie geen water stromen. De relatie tussen de fysische hoogte en ellipoidische hoogte wordt gevormd door een <a>quasi-geoïdemodel</a>. Een quasi-geoïdemodel geeft de hoogte van het referentievlak voor de fysische hoogte boven de ellipsoïde. Het fysische hoogtesysteem voor Nederland is het Normaal Amsterdams Peil (NAP).

<figure id="Ellips,_Geoide,_aardoppervlak" style="display: block; text-align: center; margin: 0 auto;">
  <img src="media/geonovum-geo-bim_georefereren_1.png" alt="Ellips, Geoide, aardoppervlak" 
  style="width: 100%; max-width: 400px; height: auto; display: block; margin: 0 auto;">
  <figcaption style="margin-top: 0.5em;"><a class="self-link" href="#fig-Ellips,-Geoide,-aardoppervlak"></bdi></a><span class="fig-title">Ellipsoïde, quasi-geoïdemodel en aardoppervlak</span></figcaption>
</figure> 

<mark>In bovenstaand figuur aanpassen: Zeeniveau naar quasi-geoïdemodel; Aardbolling naar ellispoïde. En toevoegen: ellispoïdeische hoogte (bij het lange pijltje); fysische hoogte (bij het korte pijltje); aardoppervlak (de de overgang tussen groen en bruin).</mark>

<mark>Deze paragraaf en bijbehorende afbeelding verplaatsen naar het stuk tekst over afwijkingen.</mark> Het referentievlak voor de fysische hoogte volgt het zwaartekrachtveld en daarmee ook de kromming van de aarde. Voor projecten tot 2 km kan de kromming van het aardoppervlak vaak genegeerd worden voor de horizontale component. Dit geldt niet voor de vertikale component. Onderstaande figuur illustreert afwijkingen bij het verwaarlozen van de aardkromming voor de afstand en het hoogteverschil tussen punten P en Q. Bij het verwaarlozen van de aardkromming ontstaat in punt Q een hoogtefout x. De hoogtefout is 1 cm bij 360 meter en 10 cm bij 1100 meter. <mark>De werkelijke afstand PQ' over het aardoppervlak is korter dan de afstand PQ, maar dit effect is kleiner dan een millimeter bij afstanden tot enkele kilometers.</mark> 
<figure id="Afwijking_van_aardkromming" style="display: block; text-align: center; margin: 0 auto;">
  <img src="media/geonovum-geo-bim_georefereren_4-b.png" alt="Afwijking door aardkromming" style="width: 100%; max-width: 300px; height: auto; display: block; margin: 0 auto;">
  <figcaption><a class="self-link" href="#fig-Afwijking-door-aardkromming"></bdi></a><span class="fig-title">Afwijking in de hoogte door aardkromming</span></figcaption>
</figure> 

<mark>PQ^1 veranderen in PQ'; Q' toevoegen (op het aardoppervlak onder Q); O toevoegen in het middelpunt van de aarde; Werelddelen vervangen voor een correcte orthogonale projectie.</mark>

### Samengesteld CRS

Een CRS dat bestaat uit de combinatie van een 2D CRS en een vertikaal CRS, bijvoorbeeld een geprojecteerd CRS en een verticaal CRS, noemen we een <a>Samengesteld CRS</a>. Een <a>Coördinatentransformatie</a> van of naar een samengesteld CRS wordt afzonderlijk uitgevoerd voor de CRS'en van het samengestelde CRS, bijvoorbeeld: voor de transformatie van 3D geografisch ETRS89 naar het samengestelde RDNAP, wordt apart van ETRS89 naar RD en apart van ETRS89 naar NAP getransformeerd. Samengestelde CRS'en in Nederland die relevant zijn voor BIM-modellen zijn:
* RDNAP (EPSG:7415), de samenstelling van geprojecteerd CRS RD (EPSG:28992) en verticaal CRS NAP (ESPG:5709).
* ETRS89 met NAP-hoogte (EPSG:9286), de samenstelling van 2D geografisch CRS ETRS89 (EPSG:4258) en verticaal CRS NAP (ESPG:5709).

## Lokaal CRS

Een <a>lokaal CRS</a> is een arbitrair gekozen assenstelsel. De oorsprong, de oriëntatie en het vertikale referentievlak van het stelsel worden gekozen op basis van praktische overwegingen en kan voordelen hebben bij bepaalde 2D- of  3D- modeleersoftware (BIM). Sommige applicaties voorzien ook alleen in een lokaal assenstelsel om in te modelleren. De oorsprong van het assenstelsel kan projectafhankelijk zijn, bijvoorbeeld een hoekpunt, voorgevel en begane grond van een gebouw, of een aantal meter hiervandaan. De eenheden zijn vaak in meters of millimeters. Er is geen directe relatie met de echte wereld tenzij er een coördinatentransformatie wordt toegepast.

### Benadering van RD in lokaal CRS

In sommige softwarepakketen, zoals AutoCAD, is het gebruikelijk om met het lokale stelsel het RD-stelsel en het NAP-niveau te benaderen, bijvoorbeeld door het gebruik van bekende punten of door de oorsprong te verschuiven. AutoCAD gaat er alleen niet bewust mee om dat dit RD-coördinaten en NAP-hoogten zijn. Wat de software betreft is dit een lokaal stelsel zonder verdere betekenis en worden de aardkromming, zwaartekracht en eigenschappen van de kaartprojectie, zoals de locatieafhankelijke schaalfactor en gridcorrecties, niet toegepast. De link tussen de lokale coördinaten en het geprojecteerd CRS is in dit geval dat coördinaten bij benadering overeen komen (X<sub>bim</sub> &cong; x<sub>RD</sub>, Y<sub>bim</sub> &cong; y<sub>RD</sub>, Z<sub>bim</sub> &cong; H<sub>NAP</sub>).

### Ware noorden, kaartnoorden, magnetisch noorden en projectnoorden

Soms wordt de relatie van het lokale CRS ten opzicht van het noorden gegeven. In de BIM-sector worden de termen ware noorden, kaartnoorden en projectnoorden gebruikt om de relatie met de oriëntatie van een geodetisch CRS aan te geven. Daarnaast is er ook nog magnetisch noorden.

* Ware noorden (<a>True North</a>): de richting langs de plaatselijke meridiaan naar de noordpool (het snijpunt van de Z-as met de ellipsoïde in de eerdere figuur Geografisch en geocentrisch CRS) in een modern geografisch CRS zoals ETRS89.

* Kaartnoorden (<a>Grid North</a>): de plaatselijke richting evenwijdig aan de y-as (Northing) van een geprojecteerd CRS. Door de vervorming van een kaartprojectie is dit over het algemeen niet gelijk aan het ware noorden. Voor de RD-projectie vallen het ware noorden en kaartnoorden alleen samen op de meridiaan door Amersfoort. Daarbuiten loopt deze in Nederland op land op tot maximaal 2&deg; naar het oosten of westen en tot ca. 3&deg; in op zee. <mark>Correctieformule weergeven? (zie: https://nl.wikipedia.org/wiki/Stelsel_van_de_Rijksdriehoeksmeting#Projectie)</mark> 

<figure id="True_North_en_Grid_North" style="display: block; text-align: center; margin: 0 auto;">
  <img src="./media/True_North_and_Grid_North.png" alt="True_North_en_Grid_North" title="True North en Grid North" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;"> 
  <figcaption><a class="self-link" href="#fig-True-North-en-Grid-North"></bdi></a><span class="fig-title">Ware noorden (True North) en kaartnoorden (Grid North)</span></figcaption>
</figure>

* Magnetisch noorden (<a>Magnetic North</a>): de plaatselijke veranderlijke richting van het magneetveld van de aarde. Dit is de richting die een kompas aangeeft. In Nederland is de afwijking van het magnetisch noorden ten opzichte van het ware noorden (declinatie) nu ca. +3&deg; (naar het oosten), en deze afwijking wordt momenteel per 6 jaar ongeveer een graad groter. Er zijn modellen die de afwijking voorspellen voor een plaats en tijd op aarde.  

* Projectnoorden (<a>Project North</a>): de richting van de <mark>Y-as</mark> van een BIM-model, normaliter gebaseerd op de voornaamste as van het bouwwerk. Het beïnvloedt hoe je schetst in views in software en hoe views op tekenbladen worden geplaatst. Het Project North richt zich vaak richting de bovenkant van een tekengebied. Dit vereenvoudigt het modelleren. Het verschil tussen projectnoorden en het noorden van het voor georeferentie gebruikte CRS (afhankelijk van het CRS is dit het ware noorden of het kaartnoorden) kan groot zijn.

<figure id="Project_North" style="display: block; text-align: center; margin: 0 auto;">
  <img src="./media/Project_North.png" alt="Project_North" title="Project North" style="width: 100%; max-width: 400px; height: auto; display: block; margin: 0 auto;"> 
  <figcaption><a class="self-link" href="#fig-Project-North"></bdi></a><span class="fig-title">Project North</span></figcaption>
</figure> 

Het verschil tussen ware noorden en kaartnoorden kan van belang zijn bij zonnestudies. Het verschil met magnetisch noorden is alleen van belang bij het gebruik van een kompas en dat is niet gebruikelijk in maatvoering of landmeetkundige projecten. 

## Coördinatentransformatie tussen lokaal CRS en geodetisch CRS

De coördinatentransformatie tussen lokaal CRS en een geodetisch CRS wordt, binnen de huidige BIM-standaarden, apart gegeven voor de horizontale en de vertikale component, niet alleen bij transformaties van samengestelde CRS'en.

<aside class="note" title="Aparte Horizontale en Vertikale coördinaattransformatie">
  <p><strong>AANBEVELING:</strong> Gebruik aparte transformaties voor de horizontale en vertikale component. Dit betekent één 2D (of 3D) transformatie voor het horizontale vlak en één 1D transformatie voor de verticale richting die samen resulteren in een transformatie van 3D data.</p>
</aside>

### Horizontaal: gelijkvormigheidstransformatie

De parameters voor de 2D of 3D gelijkvormigheidstransformatie kunnen worden berekend wanneer respectievelijk van minimaal 2 of 3 punten de coördinaten bekend zijn zowel in het lokale CRS als het geprojecteerde of geografsiche CRS. Wanneer voor meer gemeenschappelijke punten de coördinaten in beide stelsels beschikbaar zijn, kunnen de parameters worden berekend met behulp van een <a>kleinstekwadratenschatting</a>. Dit levert betere precisie op. Door de <a>overbepaaldheid</a> kan dan ook worden getoetst op eventuele fouten in de coördinaten van één van de punten in een van de stelsels. De toetsing kan bijvoorbeeld door naar de grote van de sluitvectoren/residuen van de gebruikte punten te kijken of, zoals gebruikelijk in de landmeetkunde, een statistische toetsting uit te voeren.

#### 2D gelijkvormigheidstransformatie voor geprojecteerd CRS 
De relatie tussen het lokale CRS en een geprojecteerd CRS wordt gelegd via een <a>2D gelijkvormigheidstransformatie</a> (ook wel <a>2D Helmert transformatie</a> genoemd).

<table>
  <tr>
    <td>
    <figure id="2D-gelijkvormigheidstransformatie" style="display: block; text-align: center; margin: 0 auto;">
      <img src="media/geonovum-geo-bim_georefereren_7.png" alt="Relatie GeoBIM" style="width: 100%; max-width: 300px; height: auto; display: block; margin: 0 auto;"/>
    <figcaption><a class="self-link" href="#fig-Relatie-GeoBIM"></bdi></a><span class="fig-title">Transformatie naar RD voor een lokaal stelsel van een BIM-model</span></figcaption>
    </figure> 
    </td>
  </tr>
  <tr>
  <td>
De parameters voor een 2D gelijkvormighedistransformatie zijn translaties (t<sub>x</sub>, t<sub>y</sub>), schaal (s) en rotatie (&alpha;). Er is een eenduidige relatie tussen de parameters rotatiehoek (&alpha;) en de in IFC/BIM gebruikte termen XAxisAbscissa (cos &alpha;) en XAxisOrdinate (sin &alpha;).
  </td>
  </tr>
</table>
<mark>txRD en tyRD bij de assen zetten: nu lijkt tyRD de oost-westafstand weer te geven van de horizontale streepjeslijn.</mark>

<table>
  <tr>
    <td>
    <figure id="Horizontale-en-vertikale_transformatie"  style="display: block; text-align: center; margin: 0 auto;">
      <img src="media/geonovum-geo-bim_georefereren_8.png" alt="2D Transformatie" style="width: 100%; max-width: 300px; height: auto; display: block; margin: 0 auto;"/>
          <figcaption><a class="self-link" href="#fig-2D-Transformatie"></bdi></a><span class="fig-title">Relatie tussen geografisch, geocentrisch en geprojecteerd CRS en een lokaal stelsel</span></figcaption>
    </figure>
    </td>
  </tr>
  <tr>
  <td>
De parameters voor een 2D gelijkvormighedistransformatie zijn translaties (t<sub>x</sub>, t<sub>y</sub>), schaal (s) en rotatie (alpha).
  </td>
  </tr>
</table>
<mark>Is deze complexe figuur nodig?</mark>

#### 3D gelijkvormigheidstransformatie voor geografisch CRS

De relatie tussen het lokale CRS en een geografisch CRS wordt gelegd via een <a>3D gelijkvormigheidstransformatie</a> (ook wel <a>3D Helmert transformatie</a> genoemd) via het bijbehorende geocentrische CRS.

<mark>formule en een figuur voor de vertikale transformatie toevoegen</mark>

### Vertikaal: vast hoogteverschil

Voor de relatie tussen vertikale referentievlakken is het uitgangspunt in de huidige standaarden dat de relatie is vast te leggen via een vast hoogteverschil. 

<mark>formule (H<sub>NAP = H<sub>BIM + t<sub>H) en een figuur voor de vertikale transformatie toevoegen</mark>

Door de gelijkvormigheidstransformatie voor de horizontale component te combineren met een vast hoogteverschil voor de verticale component ontstaat één geïntegreerde transformatie voor 3D data. 

## Geometrische effecten bij BIM-georeferentie en BIM-transformatie
Bij het georefereren van een BIM-model ten opzichte van een CRS zijn er twee opties. Bij de eerste benadering blijft het model volledig cartesisch. Daarbij blijven hoeken, lengtes en vormen exact behouden binnen het model. In dit geval resulteert het verschil tussen het platte vlak van het BIM-model en het gekromde aardoppervlak in dat horizontaal en verticaal/waterpas geleidelijk af gaat wijken van de fysieke werkelijkheid en van CRSen als ETRS89 en NAP. Deze effecten worden vooral merkbaar bij lange infrastructuur of zeer hoge nauwkeurigheidseisen of wanneer de combinatie met geodatasets gemaakt worden.

In de tweede benadering transformeert men het model naar een CRS dat de aardkromming volgt. In dit geval ontstaan verschillende geometrische vervormingen die samenhangen met de overgang tussen een lokaal cartesisch model en een CRS voor de aarde. Een BIM-model is in de basis cartesisch en lokaal vlak, terwijl CRSen rekening houden met projectie en aardkromming. Door de transformatie zullen de hoeken, en/of de lijnvorm en -lengte, en/of de oppervlaktes afwijken van het orginele model. 

<figure id="Geometrische_effecten_bij_transformatie"  style="display: block; text-align: center; margin: 0 auto;">
      <img src="media\Geometrische_verandering_bij_transformatie_voor_georeferentie.png" alt="Geometrische_effecten_bij_transformatie" style="width: 100%; max-width: 300px; height: auto; display: block; margin: 0 auto;"/>
          <figcaption><a class="self-link" href="#fig-Geometrische_effecten_bij_transformatie"></bdi></a><span class="fig-title">Enkele geometrische effecten die op kunnen treden bij transformaties tussen cartesische modellen en een CRS voor de aarde.</span></figcaption>
  </figure>


## Afwijkingen
Veel BIM-modellen zijn gebaseerd op cartesische geometrie, waarbij wordt aangenomen dat de ruimte vlak is en kan worden beschreven met een orthogonaal coördinatenstelsel. Deze benadering introduceert afwijkingen wanneer zij wordt toegepast op het aardoppervlak. De aarde is immers geen vlak maar een gekromd lichaam dat benaderd wordt door een ellipsoïde.

Wanneer geografische coördinaten zonder passende transformatie of projectie rechtstreeks worden verwerkt binnen een cartesisch model, ontstaan systematische verschillen tussen de gemodelleerde en de werkelijke afstanden, richtingen en oppervlakken. Deze afwijkingen nemen toe naarmate de beschouwde afstanden groter worden en de invloed van de aardkromming sterker doorwerkt. Ook veroorzaakt het gebruik van een cartesisch model op een gekromd aardoppervlak zonder passende maatregelen afwijkingen in de hoogte.

Het verschil tussen een vlak cartesisch stelsel en de werkelijke geometrie van het aardoppervlak vormt een fundamentele bron van meet- en modelafwijkingen. Een goed begrip van deze afwijkingen is essentieel om de nauwkeurigheid van ruimtelijke analyses te kunnen beoordelen en om te bepalen wanneer correcties voor aardkromming noodzakelijk zijn.

### Schaalfout door projectie 
Een afwijking waarmee men rekening moet houden bij het gebruik van een geprojecteerd CRS met een hoekgetrouwe projectie (zoals RD) is de afwijking door lijnvergroting of -verkleining door de projectie. Deze afwijking komt door de schaalfout beschreven in [Geprojecteerd CRS](#geprojecteerd-crs). Dit schaalverschhil treedt op tussen bij XY-coördinaten van een BIM-model en RD-coordinaten, maar niet bij de Z-coördinaat van een BIM-model nen NAP-hoogte. 

Problemen met deze afwijking kunnen gaan spelen als men een BIM-model zonder transformatie wil combineren met geodata in RD, of als men geodata in RD zonder transformatie als ondergrond voor een BIM-model gebruikt, en daar in werkelijke meters in gaat tekenen.   

De afwijkingen die hierbij kunnen ontstaan zijn maximaal 1 cm per 100 meter (10 cm per 1 km) op land. En tot 10 cm per 100 meter (1 meter per km) op zee.

Daarnaast is er een correctiegrid voor RD dat een vervorming geeft. Deze afwijking is maximaal 1 cm per 500 meter (10 cm per 5 km). 

### Afwijking door aardkromming
Een andere soort afwijking waarmee men rekening kan houden is de afwijking door aardkromming. De kromming van de aarde die afwijkingen veroorzaken bij cartesisch gemodelleerde modellen. Hier zijn twee effecten. De **hoogteafwijking** en de **vervorming door aardkromming**. Wanneer men iets horizontaal vlak, waterpas, wil maken in de werklijkheid, is dit feitelijk licht krom.

Dit geeft een **hoogtefout** als we een cartesisch BIM-model willen combineren met geodetisch ETRS89. De afwijking die hierdoor ontstaat is 1 cm op 360 m afstand (10 cm op 1,1 km) van het punt waar de horizontaal en vertikaal van het BIM-model overeenkomen met die van de aarde, maar loopt kwadratisch op met de afstand. Als dat punt in het midden van het BIM-model gekozen wordt geeft dit een fout van 1 cm per 720 meter (10 cm op 2,2 km). Deze fout kan meestal voorkomen worden door een afzonderlijker

De **vervorming door aardkromming** treedt op doordat in de gekromde wereld de verticaal aan de ene kant van een model niet helemaal evenwijdig is aan de verticaal aan de andere kant van het model, en dus de afstand tussen de verticalen hoger boven het aardoppervlak steeds groter wordt. De grootte van het effect is afhankelijk van de modelgrootte: de lengte (L) van het model en het hoogteverschil (∆H) binnen het model. Voor een nauwkeurigheid van 1 cm mag L×∆H niet meer dan 64 km×m zijn en voor een nauwkeurigheid van 10 cm niet meer 640 km×m zijn. Dit probleem is niet oplosbaar, maar zal alleen bij grote modellen met grote hoogteverschillen relevant kunnen worden. 

Voor een nauwkeurigheid van 1 cm kan een model tot L = 2 km voor ∆H tot 32 m gebruikt worden, of L = 200 m voor ∆H tot 320 m. Voor een nauwkeurigheid van 10 cm kan een model tot 20 km voor ∆H tot 32 m gebruikt worden, of L = 20 km voor ∆H tot 320 m. 

### Afwijking door lijnuitbuiging
Een volgende afwijking is horizontale uitbuiging van lijnen. Dit komt doordat een rechte lijn in het een geprojecteerd coördinatenstelsel geen rechte lijn is in een ander coördinatenstelsel of in de werkelijkheid. Voor RD valt deze afwijking mee (ca. 1,3 mm bij 1 km, ca. 3 cm bij 5 km en ca. 8 cm bij 10 km), maar voor andere kaartprojecties (met name webmercator) kan deze afwijking problemen geven. 

In Nederland (tot 56° noorderbreedte):
* Afwijkingen tot 1 cm bij een afstand van 587 m <mark>(ca. 900 m in RD)</mark>
* Afwijkingen tot 10 cm bij een afstand van 1857 m <mark>(ca. 11 km in RD)</mark>

Als oplossing kan er voor gezorgd worden dat er in geodate en BIM-modellen geen lijnsegmenten gebruikt worden die te lang zijn voor de gewenste nauwkeurigheid. Voor een nauwkeurigheid van 1 mm zijn punten met een maximale tussenafstand van 200 meter nodig voor de in Nederland gangbare projecties. Voor het genereren van synthetische tussenpunten kan afhankelijk van wat bedoeld is, gekozen worden tussen punten op een rechte lijn in de kaart of een rechte lijn in werkelijkheid (geodetische lijn in ETRS89), zie [handreiking gebruik coordinaatreferentiesystemen](https://docs.geostandaarden.nl/crs/crs/#vormvastheid) en het [langelijnenadvies](https://gnss-data.kadaster.nl/misc/docs/langelijnenadvies.pdf). 

### Afwijking van het noorden
<mark>te veel overlap met eerdere paragraaf over noorden</mark>

### Conclusie

Voor modellen van minder dan 360 m kunnen cartesische XYZ-coördinaten in BIM rechtstreeks in het terrein uitgezet worden met een nauwkeurigheid van 1 cm, en modellen tot 1,1 km met een nauwkeurigheid van 10 cm. Voor grotere modellen of hogere nauwkeurigheidseisen is correctie nodig of moet via het RDNAP-coördinaten getransformeerd worden.

Voor modellen van minder dan 100 m kunnen RDNAP-coördinaten lokaal als cartesische XYZ-coördinaten in BIM gebruikt worden met een nauwkeurigheid van 1 cm, en modellen tot 1 km met een nauwkeurigheid van 10 cm. Voor grotere modellen of hogere nauwkeurigheidseisen is correctie nodig of moet getransformeerd worden voor nauwkeurige aansluiting op geo-informatie, zoals BAG-, BGT- of kadastrale gegevens. Hiermee wordt het mogelijk om nauwkeurige ruimtelijke bevragingen te doen. 

<aside class="note" title="Bepaal georeferentiemethode en route op basis van projectomvang en nauwkeurigheidsbehoefte">
  <p><strong>AANBEVELING:</strong> Bepaal voor elk project de omvang (lengte, breedte, hoogte) en de gewenste nauwkeurigheid. Kies op basis hiervan de benodigde correcties of transformatiemethode voor de benodigde route voor georefereren en de metadata over de georeferentie.</p>
</aside>
  
