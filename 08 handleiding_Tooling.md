# Tooling
--- 
## IfcGref
[IfcGref](https://ifcgref.bk.tudelft.nl/) is een webgebaseerde softwaretool die is ontwikkeld om de georeferentie van IFC (Industry Foundation Classes)-modellen vast te leggen, te verbeteren en te visualiseren. IFC-modellen bevatten vaak uiteenlopende niveaus van georeferentie en geo-informatie, variërend van een eenvoudig postadres (LoGeoRef10) tot volledige projectie- en coördinatenstelselspecificaties (LoGeoRef50). De eerste stap in de workflow van IfcGref is het detecteren van de bestaande geo-informatie in een IFC-bestand en het vaststellen welke gegevens reeds op het niveau LoGeoRef50 zijn gegeorefereerd.

Ter verbetering van de nauwkeurigheid biedt IfcGref de mogelijkheid om ingemeten punten in te voeren. Dit zijn gemeenschappelijke punten die zowel in de lokale Cartesiaanse coördinaten van het BIM-model als in reële coördinaten binnen een gekozen CRS (Coordinate Reference System) bekend zijn. Door deze twee puntensets op elkaar af te stemmen, legt IfcGref een link tussen het (lokale) BIM-model en de omgeving vastgelegd in de aardoppervlakteprojectie. Vervolgens past de software een Helmert-transformatie toe, waarbij translaties, rotaties en schaalfactoren worden berekend om de twee coördinatenstelsels op elkaar af te stemmen. Deze transformatie wordt opgelost met behulp van de kleinste-kwadratenmethode (via de SciPy-bibliotheek), waardoor de fouten tot een minimum worden beperkt, vooral wanneer meerdere ingemeten punten beschikbaar zijn.

Afhankelijk van het initiële georeferentieniveau van het IFC-bestand kan IfcGref het model upgraden tot LoGeoRef50. Twee ingemeten punten volstaan om bestanden die oorspronkelijk geen geo-informatie bevatten (LoGeoRef0–10) te georefereren, terwijl slechts één aanvullend ingemeten punt nodig is voor modellen die reeds gedeeltelijke georeferentie-metagegevens bevatten (LoGeoRef20–40). Voor de omzetting tussen verschillende geografische en geprojecteerde coördinatenstelsels maakt IfcGref gebruik van de pyproj-bibliotheek, wat het proces robuust maakt voor uiteenlopende regio’s en CRS-definities.

![IfcProjectedCRS attributen en waarden](media/ifcProjCRS.png "IfcProjectedCRS attributen en waarde")

![IfcMapConversion attributen en waarden](media/IfcMapconversion_attributen.png "IfcMapConversion attributen en waarde")

Aan het einde van het IfcGref georeferentie-proces wordt het IFC-bestand bijgewerkt met georeferentieattributen, waarna de gebruiker het bewerkte IFC-bestand kan downloaden en direct kan visualiseren op een kaart via de webinterface van IfcGref. Hierdoor kunnen gebruikers de ruimtelijke uitlijning onmiddellijk controleren.
![IfcGref visualization](media/ifcGref00.jpg "IfcGref visualization")

