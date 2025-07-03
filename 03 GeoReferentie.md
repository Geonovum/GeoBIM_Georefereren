# Methodes van Georeferentie


Opties om het BIM ontwerp te georefereren
Optie 1: PBP/LCS vastleggen in RD, Noordgericht exporteren


Optie 2: Perceelgrenzen opnemen in model

bron: https://www.geobimexperts.nl/kennis/blog/ifc-tud

# Georeferentie in uitwisseling

# IFC

IFC (Industry Foundation Classes) is een open en neutraal bestandsformaat dat wordt ontwikkeld en beheerd door buildingSMART International. Het is bedoeld om interoperabiliteit tussen verschillende softwareplatformen in de bouwsector mogelijk te maken, en is een kernonderdeel van openBIM. [Buildingsmart](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/content/scope.htm).

In de meeste gevallen wordt een IFC bestand gemaakt middels een export uit een ander softwarepakket [^1]. Als gevolg hiervan is het de verantwoording van de leveringacier van het software pakket om de translatie te maken van de native bestanden naar een IFC bestand. Door verschillende implementatie in verschillende softwarepakketen is er een grote variatie ontstaat in IFC bestanden. Om hier meer consistentie in aan te brengen is Building Smart de [IFC Validation Service](https://www.buildingsmart.org/users/services/validation-service/) begonnen.

[^1]: Er bestaan wel software pakketen welke IFC bestanden direct kunnen maken en aanpassen maar deze zien beperkt gebruik in de industrie. 

## Georeferentie in IFC

In IFC wordt standaard gewerkt met een lokaal coordinaten stelsel. Dit wordt gedefineerd door een [IfcGeometricRepresentationContext](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcGeometricRepresentationContext.htm). Vanaf dit nulpunt wordt het 3D model opgebouwd. Hierbij wordt veelvoudige gebruik gemaakt van translaties middels een [IfcLocalPlacement](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcLocalPlacement.htm). Dit is een veel gebruikte methode in 3D software om coordinaten van geometrie klein te houden en geometrie op verschillende locaties te kunnen hergebruiken. (https://en.wikipedia.org/wiki/Local_coordinates)

Sinds IFC4 is het wel mogelijk om een referentie naar een geprojecteerd CRS te maken in een IFC bestand middels [IfcMapConversion](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcMapConversion.htm) en [IfcProjectedCRS](https://ifc43-docs.standards.buildingsmart.org/IFC/RELEASE/IFC4x3/HTML/lexical/IfcProjectedCRS.htm). Hiermee wordt het mogelijk om de relatie tussen het lokale nullpunt in het IFC bestand en een Geprojecteerd CRS vast te leggen in een IFC bestand. Dit wordt gedaan op basis van EPSG-codes. Het uitgangspunt is dat het importerende software pakket weer hoe met de EPSG-codes omgegaan moet worden. Er wordt geen aanvullende informatie gegeven over projecties. BIM software kan deze functionaliteit gebruik om translaties tussen IFC bestanden met de zelfde EPSG-codes correct te verwerkten. GIS software kan deze functionaliteit om geprojecteerd CRS om te zetten naar een Geografische CRS en het model te projecteren in de wereld.

# CityGML 
