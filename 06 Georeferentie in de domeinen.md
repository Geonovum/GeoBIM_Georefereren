# Georeferentie in de domeinen B&U en Infra

## Georeferentie in de B&U
B&U projecten kenmerken zich vaak door projecten van beperkte omvang. Vaak worden deze modellen in een lokaal assenstelsel gemodelleerd. Dit verhoogt de nauwkeurigheid en vereenvoudigt de samenwerking. Vaak wordt bij integratie met IS, infra of stadsmodellen de koppeling gelegd aan een bekend (nationaal) coördinatenstelsel. 

Voorbeelden van B&U projecten zijn 
 - Vliegvelden, ziekenhuizen (langgerekt)
 - Woningen (beperkt in omvang)

Woningen, flats en ziekenhuizen beslaan meestal enkele tientallen tot honderden meters. De kromming van de aarde en de projectie-afwijkingen zijn over zo’n klein gebied verwaarloosbaar. Het gebruik van coördinaten in het platte vlak leveren hierdoor verwaarloosbare problemen op. 


## Georeferentie in de Infra
https://publications.cms.bgu.tum.de/2019_Jaud_I3CE.pdf

### Kenmerken van Infraprojecten
Infraprojecten kenmerken zich vaak door langgerekte projecten. De noodzaak en de positie van de objecten die gebouwd worden, wordt bepaald door de omgeving. Het is vaak ook noodzakelijk om aan te sluiten op de bestaande omgeving. Als gevolg hiervan zijn er veel raakvlakken met de omgeving. Om deze raakvlakken goed in kaart te brengen is het goed in kaart brengen van de omgeving zeer belangrijk. Om alle objecten in de omgeving te positioneren wordt gebruik gemaakt van RD-Coordinaten.

Voorbeelden van Infra projecten zijn 
 - snelwegen, tunnel, dijkverstrekingen (lang gerekt)
 - burgen, viaducten en sluizen (locatie bepaald door omgeving)

Oplossings-idee. Tussenpunten berekenen. https://gnss-data.kadaster.nl/misc/docs/langelijnenadvies.pdf

Misschien ook lange lijnen advies voor de Z- waarde.  

### Werkwijze in Infa
Binnen een project in de Infra denken we in RD coordinaten ten opzichten van NAP. Er wordt niet in een lokaal coordinaten stelsel gewerkt. Dit wordt 
gedaan omdat er vaak aagesloten moet worden op bestaande infrastructuur. Deze infrastructuur wordt door onze maatvoerder opgemeten in 
het RD-stelsel. Op basis hiervan kan verder worden ontworpen. Ook andere geometrische informatie welke benodigd is voor het project wordt
vaak in RD beschikbaar gesteld. Het RD-Stelsel is dus een logische afspraak om te gebruiken voor het ontwerp van een infraproject.

Het ontwerp wordt direct in het RD stelsel (een Geprojecteerd CRS) uitgewerkt, op tekeningen staan RD coordinaten en NAP niveau aangegeven om 
de locaties van (een deel van) een kustwerk aan te geven. Translate van het ontwerp in het RD-stelsel naar de werkelijkse situatie buiten wordt 
gedaan door maatvoerders. Zij vertalen (middels gespecialiseerde software en total stations) de RD coordinaten van het ontwerp naar een Geografische 
CRS zodat het in de werkelijke wereld geplaatst kan worden. Hierbij wordt gebruik gemaakt van grondslagen om de nauwkeurigheid tot op het gewenste 
niveau te krijgen.

### Toepassing van 3D Software
Tijdens het ontwerp proberen we onze ontwerpsoftware af te stellen op het feit dat we in RD coordinaten werken zodat dit overeenkomt met de manier
waarop wij denken binnen het project. Afhakelijk van de software wordt binnen de software nog steeds een lokaal stelsel gebruikt maar dit heeft geen waarde
voor het project team. In Revit wordt bijvoorbeeld nog steeds een Basepoint gebruikt maar de locatie hiervan is niet persee relevent voor
het project. Vaak wordt een mooi afgerond RD-coordinaat genomen. In andere software zoals AutoCAD of Civil3D wordt direct gewerkt op RD-coordinaten.
Er wordt in dit geval zeer ver van het orginele nulpunt getekend in de software.

Uitwisseling tussen verschillende software systemen gebeurt ook standaard op basis van RD-Coordinaten. Dit werkt echter niet feilloos binnen het 
huidige softwarelandschap omdat de gebruikte software niet altijd op de hoogte is of in staat is te begrijpen dat er op RD-Coordinaten gewerkt 
wordt. De software interpreteert de uitwisselbestanden bijvoorbeeld als bestanden met een lokaal coordinatenstelsel met zeer grote coordinaten in 
plaatst van RD-Coordinaten. Positionering gaat hierdoor niet altijd goed.
