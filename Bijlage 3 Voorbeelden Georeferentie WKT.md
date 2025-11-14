## WKT

<aside class="example" title="Voorbeeld van een engineered CRS in WKT">
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
