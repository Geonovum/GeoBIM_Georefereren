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

<aside class="example" title="Voorbeeld van georeferentie met IfcMapConversion in IFC">
Voorbeeld van IfcMapConversionScaled in IFC:

```ifc 
#100= IFCCARTESIANPOINT((0.0, 0.0, 0.0));
#101= IFCMAPCONVERSION(
  'Local Engineering CRS',          -- Source CRS (coordinatenstelsel waarin gemodelleerd is)
  'EPSG:7415',                      -- Target CRS (coordinatenstelsel waarin gepositioneerd wordt)
  #100,                        -- Lokaal ankerpunt
  155000.0,                     -- Oostelijke verplaatsing
  463000.0,                     -- Noordelijke verplaatsing
  3.55,                        -- Hoogte verplaatsing
  1.0,                         -- Richting van de X-as
  0.0,                         -- Richting van de Y-as
  1.0                          -- Schaal
                              -- FactorX
                              -- FactorY
                              -- FactorZ 
);
```
</aside>