# Methodes van Georeferentie

Er zijn verschillende methodes beschikbaar om  BIM en GEO modellen bij elkaar te brengen op de kaart. Deze methoden verschillen in nauwkeurigheid en mogelijkheid voor het bijeenbrengen van modellen. Dit wordt door Clemen Christian beschreven als Levels van georefereren [[Christian2019]].

Het is mogelijk om een BIM-model op de kaart te zetten door alleen het adres, van waar het BIM-model dient te komen, te duiden. Deze informatie geeft een indicatie van waar het model moet komen. De informatie is niet toereikend om het model exact te plaatsen (transleren, roteren en schalen). Een andere methode zoals het model relateren aan een officieel coordinatenstelsel is hiervoor wel geschikt. Afhankelijk van de behoefte zijn verschillende methodes geschikt.

De beschikbaarheid van informatie voor het berekenen van georeferentie-parameters voor de verschillende methoden is onderzocht door de TU Delft [[Hakim2024]]. 

<table style="width:100%; table-layout:fixed;">
  <tr>
    <th style = "width:200px;"> Methode </th>
    <th style = "width:50px;"> Level </th>
    <th style = "width:200px;"> Beschrijving </th>
    <th> Translatie </th>
    <th> Rotatie </th>
    <th> Schaal </th>
  </tr>
  <tr>
    <td>
      <img src="./media/georefereren_Level_10.png" alt="Georeferentie level 10" title="Georeferentie Level 10" width="190">
    </td>
    <td> 10</td>
    <td> Met deze methode wordt alleen de locatie waar een model moet komen benoemd. Bijvoorbeeld een adres als "Barchman Wuytierslaan 10, Amersfoort" in een model op te nemen. Men weet hierdoor op welk adres het model moet komen, maar exacte plaatsing, rotatie en schaling is hier niet uit te bepalen.</td>
    <td> Niet mogelijk </td> 
    <td> Niet mogelijk </td> 
    <td> Niet mogelijk </td> 
  </tr>
  <tr>
    <td>
      <img src="./media/georefereren_Level_20.png" alt="Georeferentie level 20" title="Georeferentie Level 20" width="190">
    </td>
    <td> 20</td>
    <td> Met deze methode duidt men één enkel (lat-lon) punt waar het model geplaatst moet worden. Bijvoorbeeld met het coordinaat "52.152494076977185, 5.3720554951931385". Plaatsing van het model op de juiste plek, zowel in 2D als 3D wordt hiermee mogelijk. Rotatie en schalen van het model blijft niet mogelijk.</td>
    <td> Mogelijk </td> 
    <td> Niet mogelijk </td> 
    <td> Niet mogelijk </td> 
  </tr>
  <tr>
    <td>
      <img src="./media/georefereren_Level_30.png" alt="Georeferentie level 30" title="Georeferentie Level 30" width="190">
    </td>
    <td> 30</td>
    <td> Met deze methode wordt aan het grondvlak van een model een coordinaat toegekend. Ook is het mogelijk om de rotatie ten opzichte van het Noorden te duiden. Het schalen van het model is niet mogelijk.</td>
    <td> Mogelijk </td> 
    <td> Eventueel mogelijk </td> 
    <td> Niet mogelijk </td> 
  </tr>
  <tr>
    <td>
      <img src="./media/georefereren_Level_40.png" alt="Georeferentie level 40" title="Georeferentie Level 40" width="190">
    </td>
    <td> 40</td>
    <td> Met deze methode wordt aan het totaal model een coordinaat toegekend, en ook de rotatie ten opzichte van Noorden kan men duiden. Het schalen van het model is niet mogelijk.</td>
    <td> Mogelijk </td> 
    <td> Eventueel mogelijk </td> 
    <td> Niet mogelijk </td> 
  </tr>
  <tr>
    <td>
      <img src="./media/georefereren_Level_50.png" alt="Georeferentie level 50" title="Georeferentie Level 50" width="190">
    </td>
    <td> 50 </td>
    <td> Met deze methode geeft men aan wat het oorspronkelijk coordinatenstelsel was waarin het model is gemodelleerd. Daarnaast geeft men in het model aan naar welk coordinatenstelsel een coversie gedaan  wordt. Heeft men bijvoorbeeld gemodelleerd vanuit een lokaal assenstelsel (0,0,0) dan kan men beschrijven welke translatie, rotatie en verschaling men moet toepassen om te kunnen combineren met data in RijksDriehoeksstelsel (RD).</td>
    <td> Mogelijk </td> 
    <td> Mogelijk </td> 
    <td> Mogelijk </td> 
  </tr>
  <tr>
    <td>
      <img src="./media/georefereren_Level_60.png" alt="Georeferentie level 60" title="Georeferentie Level 60" width="190">
    </td>
    <td> 60 </td>
    <td> Met deze methode koppelt men punten in model aan ingemeten punten tijdens constructie aan coordinaten in een specifiek coordinatenstelsel. </td>
    <td> Mogelijk </td> 
    <td> Mogelijk </td> 
    <td> Mogelijk </td> 
  </tr>
</table>

<table style="width:100%; table-layout:fixed;">
  <tr>
    <th style = "width:30px;"> Level </th>
    <th> Methode </th>
    <th> Toepassingsvoorbeeld </th>
  </tr>
  <tr>
    <td> 10 </td>
    <td> Benoemen Adres </td>
    <td> Voor administratieve analyses of navigatie </td>
  </tr>
  <tr>
    <td> 20 </td>
    <td> Het specificeren van één punt </td>
    <td> Voor het weergeven van een model als punt op de kaart en analyses zonder geometrische context </td>
  </tr>
  <tr>
    <td> 30 </td>
    <td> Het specificeren van punt en verdraaiing van het grondvlak </td>
    <td> Voor niet geometrische analyses, navigatie of controle van rotatie </td>
  </tr>
  <tr>
    <td> 40 </td>
    <td> Het specificeren van punt en verdraaiing van het model </td>
    <td> Voor niet geometrische analyses, navigatie of controle van rotatie </td>
  </tr>
  <tr>
    <td> 50 </td>
    <td> Aangeven van Source-CRS en trasformatie naar target-CRS </td>
    <td> Voor het combineren van Geo en BIM in applicaties t.b.v. visualisatie, analyse, coördinatie of integratie </td>
  </tr>
  <tr>
    <td> 60 </td>
    <td> Koppeling van punten in BIM, Geo en op het fysiek terrein </td>
    <td> Als het BIM-model gebruikt moet worden voor constructie/landmeetkundige integratie, waar de positie van het model in het terrein meetkundig verifieerbaar moet zijn. </td>
  </tr>
</table>

<aside class="note" title="Gebruik van level van Georefereren">
  <p>**AANBEVELING** Gebruik voor GeoBIM-integratie level 50 en voor GeoBIM-inzet voor constructiedoeleinde level 60 van georefereren.  </p>
</aside>
<aside class="note" title="Gebruik tooling om modellen te verrijken">
<p>**AANBEVELING** Gebruik tooling om modellen die nog niet voldoen aan georeferentie 50, wanneer nodig, te verrijken met georeferentie informatie conform level 50. </p>
</aside>


## 1D-, 2D- en 3D-Geo- en -BIM-modellen
Zowel BIM- als GEO-modellen kunnen een 1D, 2D als 3D coordinatenstelsel gebruiken. Om een juiste transformatie van coordinaten van 2D en 3D modellen te krijgen kunnen verschillende methoden worden toegepast.  

Een GEO coordinatenstelsel kan 3D samengesteld (EPSG:7415), 2D (EPSG:28992) of 1D (EPSG:5709) zijn. 

| Van (bron)          | Naar (target)     |  Mogelijkheid | 
| -----------   | -------   | ------------- |
| 2D GEO of BIM        | 2D GEO of BIM    | 2D Helmert (gelijkvormigheidstransformatie Refereren aan stuk Lennard) transformatie | 
| 2D GEO of BIM   | 3D GEO of BIM     | 2D Helmert transformatie + Interpolatie van z waarde naar target | 
| 3D GEO of BIM        | 2D GEO of BIM    | Optie 1: 3D Helmert transformatie + Maaiveld bron-model transformeren naar z-waarde 0. <br>  Optie 2: Voetafdruk bron-model extraheren en 2D Helmert transformatie | 
| 3D GEO of BIM        | 3D GEO of BIM    | 3D Helmert transformatie | 


<img src="./media/2d_en_3d_GeoBIM.png" alt="2D en 3D Geo of BIM combineren" title="Georeferentie Level 60" width="5000">

Om van geprojecteerd CRS naar een Geografische CRS te gaan is een coordinaatconversie nodig i.p.v. transformatie. Het is mogelijk om conversies van 2D naar 2D of van 3D naar 3D te doen.

De mogelijkheden zijn:
| Van (bron)         | Naar (target)     |  Mogelijkheid | 
| -----------   | -------   | ------------- |
| 2D GEO/BIM (geprojecteerd)       | 2D GEO/BIM (geografisch)   | RDNAPTRANS    |
| 3D GEO/BIM (geprojecteerd)        | 3D GEO/BIM (geografisch)   | RDNAPTRANS    |

## Schaal: 
Een Geo of BIM bronmodel kan in een andere eenheid getekend zijn dan de eenheid van een targetmodel waarin het bronmodel moet landen. Het is daarom van belang om de juiste verschaling van model aan te geven. Wanneer een bron in milimeters is getekend en de target omgeving in meters, dan kan men dat met een schaal, waarde 0.001, aangeven. Of wanneer men van inches naar meter gaat met een schaal, waarde 0.0254.

Wanneer voor georeferentie een precisie van milimeters belangrijk is dient men daarnaast een correctie van horizontale afstanden voor lijnvergroting mee te nemen. 

De formule om deze correctie te berekenen is: 
$$
\Delta \ell = -9,2 + \frac{r_i^2}{1629^2} \text{ mm per 100 m}
$$
gemiddelde coördinaten in km van de eindpunten in het RD-stelsel zijn.

<mark> Graag het beeld gebruiken uit: https://www.bruna.nl/images/active/InkijkPDF/eboekhuis/9789071301872.pdf#page=23 </mark>


