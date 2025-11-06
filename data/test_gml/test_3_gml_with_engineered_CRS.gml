<?xml version="1.0" encoding="UTF-8"?>
<gml:FeatureCollection
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:ex="http://example.com"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://example.com http://example.com/schema.xsd">

  <!-- Engineering datum met ankerpunt en oriëntatie in Amersfoort / RD New -->
  <gml:usesEngineeringDatum>
    <gml:EngineeringDatum gml:id="localDatum3D">
      <gml:datumName>Local Datum – 3D Map Conversion</gml:datumName>
      <gml:anchorPoint>
        <gml:Point gml:id="anchor_28992" srsName="urn:ogc:def:crs:EPSG::28992">
          <!-- Bijvoorbeeld ankerpunt op RD coordinaat -->
          <gml:pos>155000.0 463000.0 3.55</gml:pos>
        </gml:Point>
      </gml:anchorPoint>
      <gml:orientation>
        <gml:Vector gml:id="orientation_28992" srsName="urn:ogc:def:crs:EPSG::28992">
          <!-- Oriëntatievector (bijv. geen rotatie, richting X) -->
          <gml:pos>1.0 0.0 0.0</gml:pos>
        </gml:Vector>
      </gml:orientation>
    </gml:EngineeringDatum>
  </gml:usesEngineeringDatum>

  <!-- Punten in lokaal coördinatensysteem (bijv. meters vanaf ankerpunt) -->
  <gml:featureMember>
    <ex:SampleFeature gml:id="point1">
      <ex:location>
        <gml:Point srsName="localDatum3D">
          <gml:pos>0 0 0</gml:pos>
        </gml:Point>
      </ex:location>
    </ex:SampleFeature>
  </gml:featureMember>

  <gml:featureMember>
    <ex:SampleFeature gml:id="point2">
      <ex:location>
        <gml:Point srsName="localDatum3D">
          <gml:pos>10 0 0</gml:pos>
        </gml:Point>
      </ex:location>
    </ex:SampleFeature>
  </gml:featureMember>

  <gml:featureMember>
    <ex:SampleFeature gml:id="point3">
      <ex:location>
        <gml:Point srsName="localDatum3D">
          <gml:pos>10 20 0</gml:pos>
        </gml:Point>
      </ex:location>
    </ex:SampleFeature>
  </gml:featureMember>

</gml:FeatureCollection>
