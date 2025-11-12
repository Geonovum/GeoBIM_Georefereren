# Voorbeeld van georeferentie bestanden 

Coordinate operation:
Dus heb je gewerkt in een cartesiaans assenstelsel waarbij een as (y-as) ook het Noorden is. Dan heb je een proj met een topocentric 
x,y,z (Vanaf het middelpunt van de aard) of lat lon (niet gebruiken, QGIS snapt dit niet.)

Zo niet, dan krijg je een Concattenated operation: 

Stap 1: Kies een RD of een Lat Lon coordinaat waar dit op moet landen
Stap 2: Reken deze om naar Geocentrisch met een X,Y,Z
Stap 3: Maak een proj aan of wkt met

## IFC
<aside class="example" title="Voorbeeld van georeferentie met IfcMapConversion in IFC">
Voorbeeld van IfcMapConversion in IFC:

```ifc 
#100= IFCCARTESIANPOINT((0.0, 0.0, 0.0));
#101= IFCMAPCONVERSION(
  'Local Engineering CRS',          -- Source CRS (coordinatenstelsel waarin gemodelleerd is)
  'EPSG:7415',                      -- Target CRS (coordinatenstelsel waarin gepositioneerd wordt)
  #100,                          -- Lokaal ankerpunt
  155000.0,                     -- Oostelijke verplaatsing
  463000.0,                     -- Noordelijke verplaatsing
  3.55,                        -- Hoogte verplaatsing
  1.0,                         -- Richting van de X-as
  0.0,                         -- Richting van de Y-as
  1.0                          -- Schaal
);
```
</aside>

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

## GML

<aside class="example" title="Voorbeeld van CRS van totaal model in de Envelope in CityGML">
  Het onderstaande voorbeeld geeft aan hoe men in CityGML een Coordinatenstelsel voor een totaal model duidt:

  ```gml 
  <gml:boundedBy>
    <gml:Envelope srsName="urn:ogc:def:crs:EPSG::28992">
  </gml:boundedBy>
  ```
</aside>

  Ook is het mogelijk om per element een coordinatenstelsel mee te geven.
  Individuele georeferentie:

  <aside class="example" title="Voorbeeld van CRS van een enkel element in CityGML">
  Onderstaande voorbeeld geeft aan hoe in CityGML een Coordinatenstelsel voor een enkele elemeent duidt.

  ```gml 
  <gml:Point srsName="urn:ogc:def:crs:EPSG::28992">
    <gml:pos>123456 456789</gml:pos>
  </gml:Point>
  ```
</aside>

## WKT

```wkt (Geen idee of dit werkt)
PROJCRS["unknown",
    BASEGEODCRS["unknown",
        DATUM["World Geodetic System 1984",
            ELLIPSOID["WGS 84",6378137,298.257223563,
                LENGTHUNIT["metre",1]],
            ID["EPSG",6326]],
        PRIMEM["Greenwich",0,
            ANGLEUNIT["degree",0.0174532925199433],
            ID["EPSG",8901]]],
    CONVERSION["unknown",
        METHOD["Geocentric/topocentric conversions",
            ID["EPSG",9836]],
        PARAMETER["Geocentric X of topocentric origin",3871060.4331,
            LENGTHUNIT["metre",1],
            ID["EPSG",8837]],
        PARAMETER["Geocentric Y of topocentric origin",385968.7003,
            LENGTHUNIT["metre",1],
            ID["EPSG",8838]],
        PARAMETER["Geocentric Z of topocentric origin",5037479.6781,
            LENGTHUNIT["metre",1],
            ID["EPSG",8839]]],
    CS[Cartesian,3],
        AXIS["topocentric East (U)",east,
            ORDER[1],
            LENGTHUNIT["metre",1,
                ID["EPSG",9001]]],
        AXIS["topocentric North (V)",north,
            ORDER[2],
            LENGTHUNIT["metre",1,
                ID["EPSG",9001]]],
        AXIS["topocentric Up (W)",up,
            ORDER[3],
            LENGTHUNIT["metre",1,
                ID["EPSG",9001]]]]


```


<aside class="example" title="Voorbeeld van een engineered CRS van  in WKT">
```wkt 
ENGCRS["Lokaal 3D Stelsel Project ABC",
 EDATUM["Referentiepunt van het gebouw",ANCHOR["Hoek van het kavel"]],
 CS[Cartesian,3],
 AXIS["(x)",Deze as staat haaks op de kopgevel en de voordeur. Een positieve rotatie van deze as brengt de rechterkant van het gebouw, gezien van voren, naar beneden.],
 AXIS["(y)",Deze as staat evenwijdig aan de kopgevel en de voordeur. Een positieve rotatie van de as brengt de achterkant van het gebouw naar beneden.],
 AXIS["(z)",Deze as wijst omhoog. Een positieve rotatie van de as draait tegen de klok in.],
 LENGTHUNIT["metre",1.0]
]
```
</aside>


<aside class="example" title="Voorbeeld van een engineered CRS naar RDNAP in WKT">
```wkt
COORDINATEOPERATION["EngineeredCRS naar RDNAP",
 SOURCECRS[
  ENGCRS["Lokaal 3D Stelsel Project ABC",
    EDATUM["Referentiepunt van het gebouw",
    ANCHOR["Hoek van het kavel"]],
    CS[Cartesian,3],
    AXIS["(x)",Deze as staat haaks op de kopgevel en de voordeur. Een positieve rotatie van deze as brengt de rechterkant van het gebouw, gezien van voren, naar beneden.],
    AXIS["(y)",Deze as staat evenwijdig aan de kopgevel en de voordeur. Een positieve rotatie van de as brengt de achterkant van het gebouw naar beneden.],
    AXIS["(z)",Deze as wijst omhoog. Een positieve rotatie van de as draait tegen de klok in.],
    LENGTHUNIT["metre",1.0]
    ]
  ],
 TARGETCRS[COMPD_CS["Amersfoort / RD New + NAP height",
    PROJCS["Amersfoort / RD New",
        GEOGCS["Amersfoort",
            DATUM["Amersfoort",
                SPHEROID["Bessel 1841",6377397.155,299.1528128,
                    AUTHORITY["EPSG","7004"]],
                AUTHORITY["EPSG","6289"]],
            PRIMEM["Greenwich",0.0,
                AUTHORITY["EPSG","8901"]],
            UNIT["degree",0.0174532925199433,
                AUTHORITY["EPSG","9122"]],
            AXIS["Geodetic latitude",NORTH],
            AXIS["Geodetic longitude",EAST]],
        PROJECTION["Oblique_Stereographic",
            AUTHORITY["EPSG","9809"]],
        PARAMETER["latitude_of_origin",52.15616055555556],
        PARAMETER["central_meridian",5.38763888888889],
        PARAMETER["scale_factor",0.9999079],
        PARAMETER["false_easting",155000],
        PARAMETER["false_northing",463000],
        UNIT["metre",1.0],
        AXIS["Easting",EAST],
        AXIS["Northing",NORTH],
        AUTHORITY["EPSG","28992"]],
    VERT_CS["NAP height",
        VERT_DATUM["Normaal Amsterdams Peil",2005,
            AUTHORITY["EPSG","5109"]],
        UNIT["metre",1.0],
        AXIS["Gravity-related height",UP],
        AUTHORITY["EPSG","5709"]],
    AUTHORITY["EPSG","7415"]
    ]
  ],
 METHOD["Coordinate Frame"],
 PARAMETER["X-axis translation",565.2369,LENGTHUNIT["metre",1.0]],
 PARAMETER["Y-axis translation",50.0087,LENGTHUNIT["metre",1.0]],
 PARAMETER["Z-axis translation",465.658,LENGTHUNIT["metre",1.0]],
 PARAMETER["X-axis rotation",1.9725,ANGLEUNIT["microradian",1E-06]],
 PARAMETER["Y-axis rotation",-1.7004,ANGLEUNIT["microradian",1E-06]],
 PARAMETER["Z-axis rotation",9.0677,ANGLEUNIT["microradian",1E-06]],
 PARAMETER["Scale difference",4.0812,SCALEUNIT["parts per million",1E-06]]
 ]
```
</aside>

## PROJ-String

<aside class="example" title="Voorbeeld van een proj-string RDNAP in WKT">
```proj
+proj=tmerc +lat_0=52.508803 +lon_0=5.694315 +k=1 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs +type=crs
```
</aside>

DEZE WERKT!!! 
+proj=topocentric +X_0=3871060.4331 +Y_0=385968.7003 +Z_0=5037479.6781



## CityJSON
<aside class="example" title="Voorbeeld van een CityJSON CRS en verplaatsing">
CRS duiding: 

```json
  "metadata": {
  "referenceSystem": "https://www.opengis.net/def/crs/EPSG/0/7415"
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
  "metadata": {},
  "CityObjects": {},
  "vertices": [],
  "appearance": {},
  "geometry-templates": {}
}
```





