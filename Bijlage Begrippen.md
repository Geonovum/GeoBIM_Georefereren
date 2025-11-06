# Bijlagen 
## Definities en afkortingen
<dfn>CRS</dfn>: Coördinaat Referentie Systeem. Een systeem waarmee een gebied wordt ingedeeld zodat ieder punt binnen dat gebied eenduidig kan worden bepaalt.

<dfn>RD</dfn> Stelsel Rijksdriehoekmeting. Ook wel RD-stelsel of (foutief) RD-new of Amersfoort genoemd. Een CRS die voor het Nederlands grondgebied wordt gebruikt met de code EPSG:28992.

<dfn>Nulpunt</dfn>: 
- De oorsprong in modelleersoftware (internal origin in Revit).
- Referentiepunt voor uitwisseling van BIM-modellen (project base point in Revit).
- Referentiepunt voor het RD-stelsel in het BIM-model (survey point in Revit).
- De referentiekubus zelf die op het nulpunt staat.
- De oorsprong van het RD-stelsel (in Amersfoort).
- De oorsprong van het RD-stelsel na translatie (Parijs).

Het begrip “Nulpunt” is meervoudig interpreteerbaar en dient vermeden te worden. In de praktijk heeft het meerdere betekenissen.


<dfn>CRS-coördinatiepunt</dfn>:
referentiepunt dat gebruikt wordt voor de translatie van een BIM-model naar een CRS (MapConversion). Een CRS-coördinatiepunt staat op bij voorkeur op hele X- en Y-coördinaten van het CRS.

<dfn>Lokaal-coördinatiepunt</dfn>:
referentiepunt voor het uitwisselen van BIM-modellen zonder georeferentie. Een Lokaal-coördinatiepunt staat op een vaste afstand (meestal 5 of 10 meter) ten opzichte van de eerste gridlijnen van een BIM-model.

<dfn>Grid north</dfn>:
de richting van de Y-as in een CRS (het noorden). Alternatief: Grid noord, CRS noord. NB: hebben we dan ook het begrip Lokaal noord nodig?

<dfn>MapConversion</dfn>
beschrijving van de translatie (verplaatsing, hoekverdraaiing en schaal) ten opzichte van een CRS-coördinatiepunt.