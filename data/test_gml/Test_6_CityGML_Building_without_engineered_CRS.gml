<?xml version="1.0" encoding="UTF-8"?>
<core:CityModel
    xmlns:core="http://www.opengis.net/citygml/3.0"
    xmlns:bldg="http://www.opengis.net/citygml/building/3.0"
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="
        http://www.opengis.net/gml/3.2
            http://schemas.opengis.net/gml/3.2.1/gml.xsd
        http://www.opengis.net/citygml/3.0
            https://schemas.opengis.net/citygml/3.0/core.xsd
        http://www.opengis.net/citygml/building/3.0
            https://schemas.opengis.net/citygml/building/3.0/building.xsd">

    <!-- Voorbeeld gebouwmodel dat een lokaal coördinatenstelsel gebruikt -->
    <core:cityObjectMember>
        <bldg:Building gml:id="bldg_001">
            <gml:name>Voorbeeldgebouw</gml:name>
            <bldg:lod0Geometry>
                <gml:Polygon gml:id="surface_building_001">
                    <gml:exterior>
                        <gml:LinearRing>
                            <gml:posList srsDimension="3">
                                0.00 0.00 0.00
                                0.00 10.00 0.00
                                10.00 10.00 0.00
                                10.00 0.00 0.00
                                0.00 0.00 0.00
                            </gml:posList>
                        </gml:LinearRing>
                    </gml:exterior>
                </gml:Polygon>
            </bldg:lod0Geometry>
        </bldg:Building>
    </core:cityObjectMember>
</core:CityModel>

