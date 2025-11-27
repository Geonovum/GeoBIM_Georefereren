# Validatie van gegeorefereerde IFC-modellen
Dit hoofdstuk beschrijft hoe de gegeorefereerde IFC-modellen zijn getest in verschillende GIS-omgevingen om de interoperabiliteit en bruikbaarheid te beoordelen.

## Doel van de validatie 
Het doel van deze validatie is om te beoordelen in hoeverre de informatie van de gegeorefereerde IFC-modellen over komen in gangbare GIS-omgevingen. Door de modellen te testen in zowel ArcGIS Pro als QGIS wordt inzicht verkregen in welke mate de volgende informatie mee komt:
•	Locatie
•	Hoogte
•	Oriëntatie
•	Schaal

De gebruikte datasets zijn:
•	Van Brienenoordbrug-IFC4X3.ifc
•	ifcbridge-model01_georeferenced.ifc
•	ifcbridge-model02_georeferenced.ifc
•	ifcbridge-model03_georeferenced.ifc
•	Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef.ifc
•	Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef10.ifc
•	Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef20.ifc
•	Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef30.ifc
•	Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef40.ifc
•	Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef50.ifc


## Resultaten in ArcGIS
De IFC modellen zijn direct ingelezen in ArcGIS Pro zonder extra tools of andere (referentie) bestanden. De validatie is uitgevoerd met ArcGIS Pro 3.5.

| Naam | Afbeelding | Locatie | Hoogte | Oriëntatie| Schaal | Opmerkingen |
|-|-|-|-|-|-|-|
| Van Brienenoordbrug-IFC4X3.ifc| <afbeelding>| ✅ | ✅ | ✅| ✅ | Komt goed over |
| ifcbridge-model01_georeferenced.ifc | <afbeelding> | ✅ | ✅ | ✅| ✅ | Komt goed over |
| ifcbridge-model02_georeferenced.ifc| <afbeelding> | ✅  | ❌ | ❌ | ✅ | Ligt onder maaiveld |
| ifcbridge-model03_georeferenced.ifc| <afbeelding> |🔶 | ❌ | 🔶| 🔶 | Ligt ver boven het maaiveld, mogelijk verkeerde locatie |
|Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef.ifc| <afbeelding> | ✅  | ✅ | ✅ | ✅ | Komt goed over |
|Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef10.ifc| <afbeelding> | ❌  | 🔶 | ✅ | ✅ | 0,0 punt van RD |
|Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef20.ifc| <afbeelding> | ❌  | 🔶 | ✅ | ✅ |  0,0 punt van RD |
|Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef30.ifc| <afbeelding> | ❌  | 🔶 | ✅ | ✅ |  0,0 punt van RD |
|Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef40.ifc| <afbeelding> | ❌  | 🔶 | ✅ | ✅ |  0,0 punt van RD en het gebouw is ‘exploded’ |
|Kievitsweg_R25_ILS Spaces 20250815_LoGeoRef50.ifc| <afbeelding> | ✅  | ✅ | ✅ | ✅ | Komt goed over |

✅ = volledige support
🔶 = gedeeltelijke/non-standaard support
❌ = geen support

De validatie toont aan dat zodra een IFC-model correct is gegeorefereerd op level 50, zoals aanbevolen in dit paper, het model probleemloos wordt ingelezen in ArcGIS Pro. Het model verschijnt op de juiste geografische locatie, met correcte hoogte, rotatie en schaal, waardoor de ruimtelijke context volledig behouden blijft. Dit bevestigt dat het toepassen van de georeferentie op het juiste niveau cruciaal is voor een consistente integratie van BIM-data in GIS-omgevingen. 

## Resultaten in QGIS
<mark> Aangeleverd door Daan </mark>
