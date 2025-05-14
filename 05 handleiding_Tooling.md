# Tooling
--- 

## Ifc2Gref
Wanneer nog geen geo-locatie is vastgelegd kan de bim modelleur gebruik maken van de tool: IFCgref. Ten minste één bekend RD punt als invoer om de translatie te beschrijven. Geldige waarden Easting, Northing (X,Y) voor Nederland vallen in dit bereik (in km.)

 ![Kaart met RD Coördinaten](media\kaart-met-rd-coordinaten.gif "Kaart met RD-coördinaten")

 ![IfcMapConversion attributen en waarden](media\IfcMapconversion_attributen.png "IfcMapConversion attributen en waarde")

## Optioneel

De onderstaande secties (_Conformiteit_ e.d.) zijn optioneel, zie `index.html`:

```
<body>
  <section id="abstract" data-include-format="markdown" data-include="abstract.md"></section>
  <section id="sotd"></section><!-- Wordt automatisch gevuld -->
  <section data-include-format="markdown" class="informative" data-include="ch01.md"></section>
  <section data-include-format="markdown" data-include="ch02.md"></section>
  <!-- Hieronder optionele secties. Worden automatisch gevuld -->
  <section id='conformance'></section>
  <section id='tof'></section>
  <section id="index"></section>
</body>
```
