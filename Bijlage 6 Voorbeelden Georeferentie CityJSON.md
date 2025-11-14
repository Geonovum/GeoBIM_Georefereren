## CityJSON
<aside class="example" title="Voorbeeld van een CityJSON CRS en verplaatsing">
CRS duiding: 

```json
{
  "type": "CityJSON",
  "version": "2.0",
  "extensions": {},
  "metadata": {
  "referenceSystem": "https://www.opengis.net/def/crs/EPSG/0/7415"
  }
}
```
Verplaatsing: 

```json
{
  "type": "CityJSON",
  "version": "2.0",
  "extensions": {},
  "transform": {
    "scale": [1.0, 1.0, 1.0],
    "translate": [0.0, 0.0, 0.0]
  },
  "metadata": {"referenceSystem": "https://www.opengis.net/def/crs/EPSG/0/7415"
  },
  "CityObjects": {},
  "vertices": [],
  "appearance": {},
  "geometry-templates": {}
}
```
</aside>