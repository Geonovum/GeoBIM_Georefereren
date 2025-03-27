## ReSpec template instructies

ReSpec is een tool om html en pdf documenten te genereren op basis van markdown content.

Gebruik de knop [_Use this template_](https://github.com/Geonovum/NL-ReSpec-GN-template/generate) om aan de slag te gaan. Dit maakt een kopie van de template in uw eigen GitHub repository die dan aangepast en uitgebreid kan worden.

De dynamische pagina is van het template document [hier](https://geonovum.github.io/NL-ReSpec-GN-template/) te zien.

Deze repository bevat ook de GitHub Workflows om een statische HTML-pagina en PDF-document te genereren en enkele controles uit te voeren. Deze workflows worden automatisch gerund zodra er een aanpassing gedaan wordt aan de main branch.

### Vereiste voor gebruik
- Kennis van git/github
- Kennis van markdown en/of HTML
- Een webserver om de documentatie te hosten

### Gebruikersinstructie
Om het gebruik van dit template makkelijker te maken raden we het aan om een IDE te gebruiken. Die geeft een voorbeeld van hoe de markdown eruit zal zien, kan laten zien of de config files nog in de correcte vorm zijn en kan helpen in het gebruik van git.  
Een gratis voorbeeld van een IDE is: [Visual studio code](https://code.visualstudio.com/).

Aanpassingen maken aan het document gaat op 2 manieren:
- De configuratie van het document aanpassing in de config files
- Markdown files toevoegen/veranderen
- Plaatsen waar de template ingevuld moeten worden zijn gemarkeerd met 'TODO:'.

De **configuratie files** bevatten informatie over de organisatie en over 
de status van het document. Bekijk de [Logius ReSpec wiki](https://github.com/Logius-standaarden/respec/wiki) 
voor meer informatie over de configuratie opties. De files zijn gesplitst in 2 files:
[organisation-config.js](https://github.com/Geonovum/NL-ReSpec-GN-beheer/tree/9a606242041171dbf507c439863e4ffb94701463/js) en [config.js](js/config.js).
Deze laatste is te vinden in de `js` folder.

De organisation_config bevat informatie over de organisatie, de informatie in deze file 
zal bijna nooit veranderen zoals de naam van de organisatie. Het wordt aangeraden de file 
zelf te hosten zodat hij in alle documentatie van de organisatie gebruikt kan worden en
niet elke keer gekopieerd hoeft te worden. Geonovum host dit file onder de naam `geonovum-config.js` op https://tools.geostandaarden.nl/respec/config, zodat deze configuratie centraal ingevuld is en hergebruikt kan worden. 

De document_config in [config.js](js/config.js) bevat informatie die alleen relevant is voor het huidige document. Hier kun je instellingen regelen voor het document dat je gaat schrijven, zoals documenttype, status, auteurs, etc. 

Beide configuratie bestanden worden gelinkt in de `index.html` file.

**Markdown files** bevatten de content van het document. Alle content
kan in 1 document, maar het is aan te raden om de content te splitsen
in verschillende files, bijvoorbeeld per hoofdstuk, met een toepasselijke naam om onderhoud 
makkelijker te maken. HTML is overigens ook mogelijk.

Na het toevoegen van een nieuwe markdown file moet hij toegevoegd worden
aan de [index.html](index.html). Je voegt hem toe door de naam en eventueel relevante CSS class 
toe te voegen aan de lijst met "data includes":

<pre>
  &lt;section data-include-format="markdown" data-include="ch01.md" class="informative">&lt;/section>
  &lt;section data-include-format="markdown" data-include="ch02.md">&lt;/section>
</pre>

Dat wil zeggen, voeg een `<section>` toe met op de plaats van "ch01.md" de naam van het bestand. 

Voor een volledige lijst van CSS classes zie de [ReSpec Documentation](https://respec.org/docs/#css-classes)

Deze classes zijn ook binnen de markdown files te gebruiken op de volgende manier:  
```<div class="example">voorbeeld</div>```

### Automatische controles
Bij het uploaden van een nieuwe versie naar github worden er via github actions 2 controles 
uitgevoerd:  

Een WCAG-check (Web Content Accessibility Guidelines), deze guidelines
gemaakt door W3C zorgen voor een verbetering van de toegankelijkheid
van webapplicaties verbeterd voor zowel verschillende apparaten 
als voor mensen met een beperking.

Een link-check, deze check controleert of alle links die in het 
document staan ook naar iets wijzen.

outputs van deze tests zijn te vinden in het tabblad `Actions` in de GitHub repository.

### Publiceren van documenten
Na een update in de main branch wordt er een statische HTML en een PDF-versie gemaakt.
Dit zijn `snapshot.html` en `template.pdf` deze bestanden zijn te vinden in de root file van het project. Deze files kunnen daarna gepubliceerd worden.
De PDF-versie wordt aangemaakt indien `alternateFormats` in `config.js` geconfigureerd staat:
```js
alternateFormats: [
  {
	  label: "pdf",
	  uri: "template.pdf",
  },
]
```

### Transitie van 'oude' Geonovum ReSpec naar NL-ReSpec van Logius

Hieronder staan de instructies voor gebruikers van Geonovum ReSpec die willen overstappen naar de nieuwe NL-ReSpec. 

Als je een gepubliceerd document wilt omzetten naar de nieuwe ReSpec:
- Dit hoeft niet. Eenmaal op docs gepubliceerde documenten hoeven niet aangepast te worden.

Als je een bestaand werkdocument wilt omzetten naar de nieuwe ReSpec:
- Pas de `<head>` van index.html aan. Wat er in moet staan kun je afkijken in [template index.html](https://github.com/Geonovum/NL-ReSpec-GN-template/blob/main/index.html). Het is belangrijk dat je in ieder geval de link naar `geonovum-config.js`, `respec-nlgov.js`, en `Geonovum.ico` overneemt. Vraag eventueel hulp aan de ReSpec beheerders.
 - Pas in `config.js` de `specStatus aan. De afkortingen zijn veranderd (!): 
   - `wv` of `WV` = Werkversie
   - `cv` of `CV` = Consultatieversie
   - `vv` of `VV` = Versie ter vaststelling
   - `def` of `DEF` = Vastgestelde versie
   - `basis` of `BASIS` = Basis Document
- Pas in `config.js` de `title` aan. Dit is een nieuwe config optie. De hoofdtitel van je document zet je voortaan in `config.js` in plaats van bovenin `index.html`. Voorbeeld: 

`title: "Informatiemodel Golf",`

Als je een nieuw werkdocument gaat maken: 
- gebruik de [template](https://github.com/Geonovum/NL-ReSpec-GN-template). Klik op `Use this template` en kies `Create a new repository`. Er wordt dan een nieuwe repository (dat al wel aangemaakt moet zijn) ingericht op basis van de nieuwe respec, waarmee je direct aan de slag kunt. Pas in `config.js` de titel van je document aan zoals hierboven beschreven. Neem contact op met een van de github beheerders als je zelf geen github repository kan aanmaken. 
