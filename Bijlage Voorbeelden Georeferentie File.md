<aside class="example" title="Twee voorbeelden van georeferentie metadatabestand in JSON">
Voorbeeld van georeferentie metadatabestand in JSON:

```json 
{
  "MapConversion": {
    "SourceCRS": {
      "type": "ProjectedCRS",
      "identifier": "EPSG:28992",
      "name": "Amersfoort / RD New"
    },
    "TargetCRS": {
      "type": "ProjectedCRS",
      "identifier": "EPSG:28992",
      "name": "Amersfoort / RD New"
    },
    "Eastings": 0,
    "Northings": 0,
    "OrthogonalHeight": 0,
    "XAxisAbscissa": 1.0,       
    "XAxisOrdinate": 0.0,       
    "Scale": 1.0        
  }
}
```



```json 
{
  "MapConversion": {
    "SourceCRS": {
      "type": "Local Engineering CRS",
      "dimension": "2",
      "Precision": "0.001"
    },
    "TargetCRS": {
      "type": "ProjectedCRS",
      "identifier": "EPSG:28992",
      "name": "Amersfoort / RD New"
    },
    "Eastings": 155000.0,
    "Northings": 463000.0,
    "OrthogonalHeight": 3.55,
    "XAxisAbscissa": 1.0,       
    "XAxisOrdinate": 0.0,       
    "Scale": 1.0         
  }
}
```
</aside>