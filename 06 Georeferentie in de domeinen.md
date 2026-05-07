# Georeferentie in de domeinen B&U en Infra

## Georeferentie in de B&U
B&U-projecten kenmerken zich doorgaans door een beperkte ruimtelijke omvang. Modellen worden 
daarom vaak in een lokaal assenstelsel opgezet. Dit verhoogt de numerieke stabiliteit van 
berekeningen en voorkomt afrondingsfouten in ontwerpsoftware. Daarnaast vereenvoudigt het 
de samenwerking tussen disciplines binnen één modelomgeving. Wanneer integratie met 
informatiesystemen, infrastructuurmodellen of stadsmodellen nodig is, wordt het model 
gekoppeld aan een bekend nationaal coördinatenstelsel.

**Voorbeelden van B&U-projecten**
- Vliegvelden en ziekenhuizen (relatief langgerekte objecten)  
- Woningen (beperkte omvang)

Woningen, flats en ziekenhuizen beslaan meestal enkele tientallen tot honderden meters. Over 
dergelijke afstanden zijn de effecten van aardkromming en kaartprojectievervorming 
verwaarloosbaar. Het gebruik van vlakke coördinaten veroorzaakt daardoor in de praktijk geen 
meetbare geometrische afwijkingen.

## Georeferentie in de Infra

### Kenmerken van infraprojecten
Infraprojecten zijn vaak langgerekt en sterk afhankelijk van hun omgeving. De ligging van 
objecten wordt bepaald door bestaande infrastructuur, terreincondities en wettelijke liggingseisen. 
Hierdoor bestaan veel raakvlakken met de omgeving. Om deze raakvlakken goed te beheersen is een 
nauwkeurige positionering van zowel het ontwerp als de omgeving essentieel. In Nederland gebeurt 
dit doorgaans met RD-coördinaten in combinatie met NAP-hoogten.

**Voorbeelden van infraprojecten**
- Snelwegen, tunnels en dijkversterkingen (langgerekt)  
- Bruggen, viaducten en sluizen (locatiegebonden)

### Werkwijze binnen Infra
Binnen infraprojecten wordt gewerkt met RD-coördinaten ten opzichte van NAP. Dit maakt directe 
aansluiting op bestaande infrastructuur mogelijk. Bestaande objecten en terreinpunten worden door 
landmeters ingemeten met GNSS- of tachymetrische metingen. GNSS-metingen worden daarbij eerst bepaald in een geodetisch referentiestelsel (zoals ETRS89) en vervolgens via officiële transformaties omgerekend naar RD- en NAP-coördinaten. Op basis van deze gegevens wordt het ontwerp opgesteld.

Ook andere geometrische projectinformatie wordt doorgaans in RD aangeleverd. Het RD-stelsel vormt 
daardoor de logische standaard voor gegevensuitwisseling en ontwerp binnen infraprojecten.

Het ontwerp wordt uitgewerkt in een geprojecteerd coördinatenreferentiesysteem (CRS), waarbij op 
tekeningen RD-coördinaten en NAP-hoogten worden vermeld om objectlocaties eenduidig vast te leggen. 
Op de bouwplaats worden ontwerpen uitgezet met meetapparatuur die is georiënteerd op bekende 
RD-grondslagpunten. Hierdoor kunnen ontwerpcoördinaten rechtstreeks in het veld worden gerealiseerd 
met de vereiste nauwkeurigheid.

Het RD-stelsel is historisch gebaseerd op het Bessel 1841-ellipsoïde. In de praktijk worden moderne 
transformaties tussen referentiestelsels uitgevoerd met officiële gridtransformaties, waardoor 
nauwkeurige omzettingen tussen internationale en nationale stelsels mogelijk zijn.



### Toepassing van 3D-software
Tijdens het ontwerp wordt software ingesteld op werken met RD-coördinaten, zodat de modelruimte 
overeenkomt met de projectrealiteit. Afhankelijk van het softwarepakket wordt intern nog met een 
lokaal systeem gerekend, maar dit heeft geen inhoudelijke betekenis voor het projectteam. In 
sommige toepassingen wordt bijvoorbeeld een intern referentiepunt gebruikt waarvan de positie 
projectmatig wordt gekozen, vaak als afgerond RD-coördinaat. Andere pakketten ondersteunen directe 
modellering op nationale coördinaten, waarbij ver van de interne oorsprong wordt gewerkt.

Gegevensuitwisseling tussen softwarepakketten vindt eveneens plaats op basis van RD-coördinaten. Dit 
verloopt niet altijd probleemloos, omdat niet alle software het gebruikte referentiestelsel automatisch 
herkent. Wanneer CRS-informatie ontbreekt of verkeerd wordt geïnterpreteerd, kunnen bestanden worden 
ingelezen alsof zij een lokaal stelsel met grote coördinaatwaarden bevatten. Dit kan leiden tot foutieve 
positionering.

### Gevolgen van projectievervorming
Ontwerpen worden opgesteld in een geprojecteerd CRS. Kaartprojecties hebben een schaalfactor die licht 
afwijkt van 1 (zie ook hoofdstuk 3.1.2). Hierdoor kan de afstand tussen twee punten in het ontwerp iets 
verschillen van de werkelijke afstand in het terrein. Dit effect wordt projectievervorming genoemd en 
is afhankelijk van de locatie binnen het projectiestelsel.

Voor geprefabriceerde elementen, zoals prefab liggers die in een fabriek worden geproduceerd, blijft 
dit effect zeer beperkt omdat de elementlengtes meestal ruim onder de 100 meter liggen. De afwijking 
blijft daardoor doorgaans beperkt tot millimeters en valt binnen constructietoleranties.

Voor objecten die over grote afstanden worden gerealiseerd, zoals wegen van meerdere kilometers lang, worden 
langs het tracé meerdere uitzetpunten gebruikt. Hierdoor wordt het effect van de projectieschaal verdeeld 
over de totale lengte. De afwijking bedraagt typisch millimeters tot centimeters per kilometer, afhankelijk 
van de ligging binnen het projectiestelsel. Dit vormt in de praktijk geen probleem omdat aansluitende 
infrastructuur in hetzelfde referentiestelsel is ingemeten.
