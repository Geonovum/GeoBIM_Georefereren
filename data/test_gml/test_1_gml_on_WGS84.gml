<?xml version="1.0" encoding="UTF-8"?>
<!-- This is a GML with coordinates on EPSG 4326 (WGS84)-->
<gml:FeatureCollection
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:ex="http://example.com"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://example.com http://example.com/schema.xsd">

  <gml:featureMember>
    <ex:SampleFeature gml:id="point1">
      <ex:location>
        <gml:Point srsName="urn:ogc:def:crs:EPSG::4326">
          <gml:pos>0 0</gml:pos>
        </gml:Point>
      </ex:location>
    </ex:SampleFeature>
  </gml:featureMember>

  <gml:featureMember>
    <ex:SampleFeature gml:id="point2">
      <ex:location>
        <gml:Point srsName="urn:ogc:def:crs:EPSG::4326">
          <gml:pos>10 0</gml:pos>
        </gml:Point>
      </ex:location>
    </ex:SampleFeature>
  </gml:featureMember>

  <gml:featureMember>
    <ex:SampleFeature gml:id="point3">
      <ex:location>
        <gml:Point srsName="urn:ogc:def:crs:EPSG::4326">
          <gml:pos>10 20</gml:pos>
        </gml:Point>
      </ex:location>
    </ex:SampleFeature>
  </gml:featureMember>

</gml:FeatureCollection>
