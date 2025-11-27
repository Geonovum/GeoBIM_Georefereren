
# PROJ

Coordinate operation:
Wanneer men werkt in een cartesiaans assenstelsel waarbij een as (y-as) ook het Noorden is. Dan heb je een proj met een topocentric x,y,z (Vanaf het middelpunt van de aarde) of lat lon (niet gebruiken, QGIS snapt dit niet.)

Stap 1: Kies een RD of een Lat Lon coordinaat waar dit op moet landen
Stap 2: Reken deze om naar Geocentrisch met een X,Y,Z
Stap 3: Maak een proj aan of wkt met met deze waarden.

Zo niet, dan krijg je een Concattenated operation: 

## PROJ-String

<mark>Het is niet mogelijk om deze te verdraaien en te schalen</mark>

<aside class="example" title="Voorbeeld van een proj-string van topocentrische projectie bij dronten">
```proj
+proj=topocentric +X_0=3871060.4331 +Y_0=385968.7003 +Z_0=5037479.6781
```
</aside>




<aside class="example" title="Voorbeeld van een proj-string van topocentrische projectie bij dronten">
```proj
-ct
```
</aside>
<mark></mark>

## PROJJSON
<aside class="example" title="Voorbeeld van een engineeredCRS in PROJJSON">

Het voorbeeld hieronder toont een definitie van een EngineeredCRS in PROJJSON
 
  ```json 
  { "$schema": "https://proj.org/en/latest/schemas/v0.7/projjson.schema.json", 
      "type": "EngineeringCRS", 
      "name": "Lokaal 3D Stelsel Project ABC", 
      "datum": { 
        "type": "EngineeringDatum", 
        "name": "Referentiepunt van het gebouw (Hoek van het Kavel)" }, 
        "coordinate_system": { 
          "subtype": "Cartesian", 
          "axis": [ 
            { 
              "name": "X-as", 
              "abbreviation": "x", 
              "direction": "starboard", 
              "unit": "metre" 
            }, 
            { 
              "name": "Y-as", 
              "abbreviation": "y", 
              "direction": "forward", 
              "unit": "metre" 
            }, 
            { 
              "name": "Z-as", 
              "abbreviation": "z", 
              "direction": "up", 
              "unit": "metre" 
            } 
          ] 
        }
  }
```
Het voorbeeld hieronder toont een definitie van een EngineeredCRS met tranformatie naar RDNAP in PROJJSON

```json 
  {
    "$schema": "https://proj.org/en/latest/schemas/v0.7/projjson.schema.json",
    "type": "Transformation",
    "name": "EngineeredCRS naar RDNAP",
    "source_crs": {
      "type": "EngineeringCRS",
      "name": "Lokaal 3D Stelsel Project ABC",
      "datum": {
        "type": "EngineeringDatum",
        "name": "Referentiepunt van het gebouw (Hoek van het Kavel)"
      },
      "coordinate_system": {
        "subtype": "Cartesian",
        "axis": [
          {
            "name": "X-as",
            "abbreviation": "x",
            "direction": "starboard",
            "unit": "metre"
          },
          {
            "name": "Y-as",
            "abbreviation": "y",
            "direction": "forward",
            "unit": "metre"
          },
          {
            "name": "Z-as",
            "abbreviation": "z",
            "direction": "up",
            "unit": "metre"
          }
        ]
      }
    },
    "target_crs": {
      "type": "CompoundCRS",
      "name": "Amersfoort / RD New + NAP Height",
      "components":[
          {
              "type": "ProjectedCRS",
              "name": "Amersfoort / RD New",
              "base_crs":{
                  "type": "GeographicCRS",
                  "name": "Amersfoort",
                  "datum": {
                      "type": "GeodeticReferenceFrame",
                      "name": "Amersfoort",
                      "ellipsoid": {
                          "name": "Bessel 1841",
                          "semi_major_axis": 6377397.155,
                          "inverse_flattening": 299.1528128
                      }
                  },
                  "coordinate_system": {
                      "subtype": "ellipsoidal",
                      "axis": [
                          {
                              "name": "Geodetic latitude",
                              "abbreviation": "lat",
                              "direction": "north",
                              "unit": "degree" 
                          },
                          {
                              "name": "Geodetic longitude",
                              "abbreviation": "lon",
                              "direction": "east",
                              "unit": "degree" 
                          }
                      ]
                  }
              },
              "conversion": {
                  "name": "Oblique_Stereographic",
                  "method": {
                      "name": "Oblique_Stereographic",
                      "id":{
                          "authority": "EPSG",
                          "code": "9809"
                      }
                  },
                  "parameters": [
                      {"name": "latitude_of_origin", "value": 52.15616055555556,"unit":"degree"},
                      {"name": "central_meridian", "value": 5.38763888888889,"unit":"degree"},
                      {"name": "scale_factor", "value": 0.9999079},
                      {"name": "false_easting", "value": 155000, "unit": "metre"},
                      {"name": "false_nprthing", "value": 463000, "unit": "metre"}
                  ]
              },
              "coordinate_system": {
                  "subtype": "Cartesian",
                  "axis": [
                      {"name": "Easting", "abbreviation": "E", "direction": "east", "unit": "metre"},
                      {"name": "Northing", "abbreviation": "N", "direction": "north", "unit": "metre"}
                  ]
              }        
          },
          {
                  "type": "VerticalCRS",
                  "name": "NAP height",
                  "datum": {
                      "type": "DynamicVerticalReferenceFrame",
                      "name": "Normaal Amsterdams Peil",
                      "frame_reference_epoch": 2005
                  },
                  "coordinate_system": {
                      "subtype": "vertical",
                      "axis": [
                          {"name": "Gravity-related height", "abbreviation": "z", "direction": "up", "unit": "metre"}
                      ]
                  }                  
          }
      ]
    },
    "method": {
      "name": "coordinateframe"
    },
    "parameters": [
          {"name": "X-axis translation", "value": 181127.0, "unit": "metre"},
          {"name": "Y-axis translation", "value": 457026.0, "unit": "metre"},
          {"name": "Z-axis translation", "value": 5.2, "unit": "metre"},
          {"name": "X-axis rotation", "value": 0, "unit": "degree"},
          {"name": "Y-axis rotation", "value": 0, "unit": "degree"},
          {"name": "Z-axis rotation", "value": 0, "unit": "degree"},
          {"name": "Scale difference", "value": 1.000, "unit": "unity"}
      ]
  }
```
</aside>