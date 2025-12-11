# Voorbeeld van georeferentie met API's 

<aside class="example" title="Voorbeeld van bevraging naar beschikbare collecties in een API-features">
 Voorbeeld van API - gebruik en georeferentie: 

    {uri}/collections

    Voor van de PDOK-API van de BGT: 

    https://api.pdok.nl/lv/bgt/ogc/v1/collections

</aside>

Voorbeeld bevraging van een specifieke collectie: 

<aside class="example" title="Voorbeeld van een speicifieke collectiebevraging in een API-features">
 Voorbeeld van API - gebruik en georeferentie:

    {uri}/collections/collections/{collectionId}

    Voor van de PDOK-API van de BGT: 

    https://api.pdok.nl/lv/bgt/ogc/v1/collections/bak

</aside>

<aside class="example" title="Voorbeeld van een speicifieke collectiebevraging in een API-features">
  Zo levert de call: 

  GET: https://api.pdok.nl/lv/bgt/ogc/v1/collections/pand/items/83acbb08-48d6-5f5f-aa45-d45d8a52a95d

  het model in CRS84, dat is de default

  en 

  GET: https://api.pdok.nl/lv/bgt/ogc/v1/collections/pand/items/83acbb08-48d6-5f5f-aa45-d45d8a52a95d?crs=http%3A%2F%2Fwww.opengis.net%2Fdef%2Fcrs%2FEPSG%2F0%2F28992

  Geeft ditzelfde Pand in EPSG:28992

Door, wanneer beschikbaar, een JSONFG te vragen geeft dit ook het gevraagde CRS in de reactie mee. 

    https://api.pdok.nl/lv/bgt/ogc/v1/collections/pand/items/83acbb08-48d6-5f5f-aa45-d45d8a52a95d?crs=http%3A%2F%2Fwww.opengis.net%2Fdef%2Fcrs%2FEPSG%2F0%2F28992&f=jsonfg

</aside>