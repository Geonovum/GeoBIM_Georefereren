# Voorbeeld van georeferentie bestanden 

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

<aside class="example" title="Voorbeeld van Engineering CRS in GML">
  Onderstaande voorbeeld geeft aan hoe in men in GML een Engineering Coordinatenstelsel duidt.

```gml 
<gml:EngineeringCRS 
gml:id="localEngineeredCRS3D">
    <gml:srsname>Lokaal 3D Stelsel Project ABC<</gml:srsname>
    <gml:usesCS>
        <gml:CartesianCS gml:id="lokaal3DStelsel">
            <gml:csName> Lokaal 3D Cartesiaans Grid</gml:csName>
            <gml:usesAxis>
                <gml:CoordinateSystemAxis gml:id="xAxis" gml:uom="urn:x-si:v1999:uom:metre">
                    <gml:axisAbbrev>"X"</gml:axisAbbrev>
                    <gml:axisDirection>east</gml:axisDirection>
            </gml:usesAxis>
            <gml:usesAxis>
                <gml:CoordinateSystemAxis gml:id="yAxis" gml:uom="urn:x-si:v1999:uom:metre">
                    <gml:axisAbbrev>"Y"</gml:axisAbbrev>
                    <gml:axisDirection>north</gml:axisDirection>
            </gml:usesAxis>
            <gml:usesAxis>
                <gml:CoordinateSystemAxis gml:id="zAxis" gml:uom="urn:x-si:v1999:uom:metre">
                    <gml:axisAbbrev>"Z"</gml:axisAbbrev>
            <gml:axisDirection>up</gml:axisDirection>
            </gml:usesAxis
        </gml:CartesianCS>
    </gml:usesCS>
    <gml:usesEngineeringDatum>
        <gml:EngineeringDatum gml:id="localDatum3D">
            <gml:datumName>Referentiepunt 0,0,0</gml:datumName>
            <gml:anchorPoint> O </gml:anchorPoint>
           </gml:EngineeringDatum>
    </gml:usesEngineeringDatum>
</gml:EngineeringCRS>
 ```
</aside>



<aside class="example" title="Voorbeeld van Engineering CRS en een city-object in CityGML">
  Onderstaande voorbeeld geeft aan hoe in CityGML een Coordinatenstelsel voor een enkele elemeent duidt.

```gml 
 <?xml version="1.0" encoding="UTF-8"?>
<core:CityModel
    xmlns:core="http://www.opengis.net/citygml/3.0"
    xmlns:bldg="http://www.opengis.net/citygml/building/3.0"
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.opengis.net/gml/3.2
                          http://schemas.opengis.net/gml/3.2.1/gml.xsd
                        http://www.opengis.net/citygml/building/3.0
                          https://schemas.opengis.net/citygml/building/3.0/building.xsd
                        http://www.opengis.net/citygml/3.0
                          https://schemas.opengis.net/citygml/3.0/core.xsd">

<gml:EngineeringCRS gml:id="localEngineeredCRS3D">
    <gml:name>Lokaal 3D Stelsel Project ABC<</gml:name>
    <gml:usesCS>
        <gml:CartesianCS gml:id="lokaal3DStelsel">
            <gml:csName> Lokaal 3D Cartesiaans Grid</gml:csName>
            <gml:axis>
                <gml:CoordinateSystemAxis gml:id="xAxis"
                    gml:uom="m"
                    gml:axisAbbrev="X"
                    gml:axisDirection="east"/>
            </gml:axis>
            <gml:axis>
                <gml:CoordinateSystemAxis gml:id="yAxis"
                    gml:uom="m"
                    gml:axisAbbrev="Y"
                    gml:axisDirection="north"/>
            </gml:axis>
            <gml:axis>
                <gml:CoordinateSystemAxis gml:id="zAxis"
                    gml:uom="m"
                    gml:axisAbbrev="Z"
                    gml:axisDirection="up"/>
            </gml:axis>
        </gml:CartesianCS>
    </gml:usesCS>
    <gml:usesEngineeringDatum>
        <gml:EngineeringDatum gml:id="localDatum3D">
            <gml:datumName>Local Datum – 3D Map Conversion</gml:datumName>
            <!-- Ankerpunt en orientatie in EPSG:7415 (X, Y, Z) -->
            <gml:anchorPoint>
                <gml:Point gml:id="anchor_7415" srsName="urn:ogc:def:crs:EPSG::7415">
                    <gml:pos>155000.0 463000.0 3.55</gml:pos>
                </gml:Point>
            </gml:anchorPoint>
            <gml:orientation>
                <gml:Vector gml:id="orientation_7415" srsName="urn:ogc:def:crs:EPSG::7415">
                    <gml:pos>1.0 0.0 0.0</gml:pos>
                </gml:Vector>
            </gml:orientation>
        </gml:EngineeringDatum>
    </gml:usesEngineeringDatum>
</gml:EngineeringCRS>

  <!-- Voorbeeld gebouwmodel dat het lokaal stelsel gebruikt -->
  <core:cityObjectMember>
    <bldg:Building gml:id="bldg_001">
      <gml:name> Vorbeeldgebouw </gml:name>
      <bldg:lod0Geometry>
        <gml:Point gml:id="pt_bldg" srsName="#Lokaal 3D Stelsel Project ABC">
          <gml:pos>10.0 20.0 0.0</gml:pos>
        </gml:Point>
      </bldg:lod0Geometry>
    </bldg:CityObject>
  </corelcityObjectMember>
</core:CityModel>
```
</aside>






