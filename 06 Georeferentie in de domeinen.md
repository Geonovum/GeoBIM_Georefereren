# Georeferentie in de domeinen B&U en Infra

## Georeferentie in de B&U
B&U projecten kenmerken zich vaak door projecten van beperkte omvang. Vaak worden deze modellen in een lokaal assenstelsel gemodelleerd. Dit verhoogt de nauwkeurigheid en vereenvoudigt de samenwerking. Vaak wordt bij integratie met IS, infra of stadsmodellen de koppeling gelegd aan een bekend (nationaal) coördinatenstelsel. 

Voorbeelden van B&U projecten zijn 
 - Vliegvelden, ziekenhuizen (langgerekt)
 - Woningen (beperkt in omvang)

Woningen, flats en ziekenhuizen beslaan meestal enkele tientallen tot honderden meters. De kromming van de aarde en de projectie-afwijkingen zijn over zo’n klein gebied verwaarloosbaar. Het gebruik van coördinaten in het platte vlak leveren hierdoor verwaarloosbare problemen op. 


## Georeferentie in de Infra


### Kenmerken van Infraprojecten
Infraprojecten kenmerken zich vaak door langgerekte projecten. De noodzaak en de positie van de objecten die gebouwd worden, wordt bepaald door de omgeving. Het is vaak ook noodzakelijk om aan te sluiten op de bestaande omgeving. Als gevolg hiervan zijn er veel raakvlakken met de omgeving. Om deze raakvlakken goed te beheersen is het goed in kaart brengen van de omgeving zeer belangrijk. Om alle objecten in de omgeving te positioneren wordt gebruik gemaakt van RD-Coordinaten.

Voorbeelden van Infra projecten zijn 
 - snelwegen, tunnel, dijkverstrekingen (lang gerekt)
 - burgen, viaducten en sluizen (locatie bepaald door omgeving)

### Werkwijze in Infa
Binnen een project in de Infra wordt gewerkt in RD coordinaten ten opzichten van NAP. Er wordt niet in een lokaal coordinaten stelsel gewerkt. 
Dit wordt gedaan omdat er vaak aangesloten moet worden op bestaande infrastructuur. Deze infrastructuur wordt door landmeters/maatvoerders 
opgemeten in het RD-stelsel. Dit is het ook het moment waarop het Geodetisch coordinaat zoals opgenemen door de landmeter wordt opgerekend 
naar een Geprojecteerd coordinaat in het RD-Stelsel. Op basis hiervan kan verder worden ontworpen. Ook andere geometrische informatie welke 
benodigd is voor het project wordt vaak in RD beschikbaar gesteld. Het RD-Stelsel is dus een logische afspraak om te gebruiken voor het 
ontwerp van een infraproject.

Het ontwerp wordt direct in het RD stelsel (een Geprojecteerd CRS) uitgewerkt, op tekeningen staan RD coordinaten en NAP niveau aangegeven om 
de locaties van (een deel van) een kustwerk aan te geven. De translatie van het ontwerp in het RD-stelsel naar de werkelijkse situatie wordt op de 
bouwplaats gedaan door maatvoerders. Zij vertalen (middels gespecialiseerde software en total stations) de RD coordinaten van het ontwerp naar een Geodetisch
CRS zodat het in de werkelijke wereld geplaatst kan worden. Hierbij wordt gebruik gemaakt van grondslagen om de nauwkeurigheid tot op het gewenste 
niveau te krijgen.

In de standaard Infra projecten in Nederland wordt Ellipsoid Bessel 1841 gebruikt voor de translatie van het RD-stelsel naar het Geodetisch CRS. In bijzondere 
gevallen kan er voor gekozen worden een project specifieke Geodetisch CRS te gebruiken zoals gedaan bij de [Brenner Base Tunnel (BBT)](https://publications.cms.bgu.tum.de/2019_Jaud_I3CE.pdf)

### Toepassing van 3D Software
Tijdens het ontwerp wordt de ontwerpsoftware ingesteld op het feit dat er in RD coordinaten gewerkt wordt. Dit komt overeenkomt met de manier
waarop gedacht wordt binnen het project. Afhakelijk van het softwarepakket wordt binnen de software nog steeds met een lokaal stelsel gewerkt maar dit heeft geen waarde
voor het project team. In Revit wordt bijvoorbeeld nog steeds een Basepoint gebruikt maar de locatie hiervan is niet relevent voor
het project. Vaak wordt een mooi afgerond RD-coordinaat genomen. In andere softwarepakketen zoals AutoCAD of Civil3D wordt direct gewerkt op RD-coordinaten.
Er wordt in dit geval zeer ver van het orginele nulpunt getekend in de software.

Uitwisseling tussen verschillende software systemen gebeurt ook standaard op basis van RD-Coordinaten. Dit werkt echter niet feilloos binnen het 
huidige softwarelandschap. De gebruikte software is niet altijd op de hoogte of in staat te begrijpen dat er op RD-Coordinaten gewerkt 
wordt. De software interpreteert de uitwisselbestanden bijvoorbeeld als bestanden met een lokaal coordinatenstelsel met zeer grote coordinaten in 
plaatst van RD-Coordinaten. Positionering gaat hierdoor niet altijd goed.

### Gevolgens door afwijkening translatie geprojecteerd CRS naar geodetisch CRS
Zoals hierboven genoemd wordt het ontwerp in een geprojecteerd CRS gemaakt en pas op de bouwplaats omgezet naar een geodetisch CRS. Zoals hoofdstuk 3.1.2
aangegeven zorgt dit voor een lijnvergroting. De afstand tussen 2 punten in het ontwerp kan dus anders zijn als de werkelijke afstand tussen 2 punten
op de bouwplaats. Voor pregefabriceerde elementen zoals prefab liggers welke off-site in een fabriek gemaakt worden confrom het ontwerp is dit effect zeer 
beperkt omdat de lengtes ver onder de 100m blijven. De lijnvergroting blijft dus beperkt tot enkele milimeters. Dit wordt opgevangen in de tolleranties
van het elementen. Voor objecten welke op de bouwplaats gemaakt worden zoals uitgestrekte wegen van kiliometers lang worden meerdere punten
langs de as van de weg uitgezet. Hierdoor word de lijnvergroting verspreid over de gehele lengte van het object. Een weg van 10km lang in het ontwerp zal als deze 
op de bouwplaatst wordt opgemeten enkele centimeters korter zijn als het ontwerp. Dit is niet erg omdat deze wel zal aansluiten op de aansluitende bestaande wegen
welke ook middels RD zijn opgemeten.


