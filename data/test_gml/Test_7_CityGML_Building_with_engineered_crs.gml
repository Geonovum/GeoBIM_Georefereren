<?xml version="1.0" encoding="UTF-8"?>
<core:CityModel
    xmlns:core="http://www.opengis.net/citygml/3.0"
    xmlns:bldg="http://www.opengis.net/citygml/building/3.0"
    xmlns:gml="http://www.opengis.net/gml/3.2"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="
        http://www.opengis.net/gml/3.2
            http://schemas.opengis.net/gml/3.2.1/gml.xsd
        http://www.opengis.net/citygml/3.0
            https://schemas.opengis.net/citygml/3.0/core.xsd
        http://www.opengis.net/citygml/building/3.0
            https://schemas.opengis.net/citygml/building/3.0/building.xsd">

    <!-- Definieer een lokaal engineered coördinatenstelsel afgeleid van RD New -->
    <gml:EngineeringCRS gml:id="LokaalCoordinatenstelsel">
        <gml:name>Lokaal 3D Stelsel Project ABC</gml:name>
        <gml:derivedCRSType>engineering</gml:derivedCRSType>

        <gml:usesBaseCRS xlink:href="urn:ogc:def:crs:EPSG::28992"/>

        <gml:definedByConversion>
            <gml:Transformation gml:id="trans_RD_lokaal">
                <gml:method>
                    <gml:OperationMethod gml:id="simple_translation">
                        <gml:name>Simple 3D translation</gml:name>
                    </gml:OperationMethod>
                </gml:method>

                <!-- Eenvoudige translatie tov RD New -->
                <gml:parameterValue>
                    <gml:ParameterValue>
                        <gml:value>300000.0</gml:value> <!-- ΔX -->
                        <gml:operationParameter>
                            <gml:OperationParameter>
                                <gml:name>translation in X</gml:name>
                            </gml:OperationParameter>
                        </gml:operationParameter>
                    </gml:ParameterValue>
                </gml:parameterValue>

                <gml:parameterValue>
                    <gml:ParameterValue>
                        <gml:value>15000.0</gml:value> <!-- ΔY -->
                        <gml:operationParameter>
                            <gml:OperationParameter>
                                <gml:name>translation in Y</gml:name>
                            </gml:OperationParameter>
                        </gml:operationParameter>
                    </gml:ParameterValue>
                </gml:parameterValue>

                <gml:parameterValue>
                    <gml:ParameterValue>
                        <gml:value>5</gml:value> <!-- ΔZ -->
                        <gml:operationParameter>
                            <gml:OperationParameter>
                                <gml:name>translation in Z</gml:name>
                            </gml:OperationParameter>
                        </gml:operationParameter>
                    </gml:ParameterValue>
                </gml:parameterValue>
            </gml:Transformation>
        </gml:definedByConversion>

        <gml:usesCS>
            <gml:CartesianCS gml:id="3DAssenStelsel">
                <gml:csName>Lokaal 3D Orthogonaal Assenstelsel</gml:csName>
                <gml:usesAxis>
                    <gml:CoordinateSystemAxis gml:id="xAxis" gml:uom="urn:ogc:def:uom:OGC::metre">
                        <gml:axisName>X-as</gml:axisName>
                        <gml:axisAbbrev>X</gml:axisAbbrev>
                        <gml:axisDirection>east</gml:axisDirection>
                    </gml:CoordinateSystemAxis>
                </gml:usesAxis>
                <gml:usesAxis>
                    <gml:CoordinateSystemAxis gml:id="yAxis" gml:uom="urn:ogc:def:uom:OGC::metre">
                        <gml:axisName>Y-as</gml:axisName>
                        <gml:axisAbbrev>Y</gml:axisAbbrev>
                        <gml:axisDirection>north</gml:axisDirection>
                    </gml:CoordinateSystemAxis>
                </gml:usesAxis>
                <gml:usesAxis>
                    <gml:CoordinateSystemAxis gml:id="zAxis" gml:uom="urn:ogc:def:uom:OGC::metre">
                        <gml:axisName>Z-as</gml:axisName>
                        <gml:axisAbbrev>Z</gml:axisAbbrev>
                        <gml:axisDirection>up</gml:axisDirection>
                    </gml:CoordinateSystemAxis>
                </gml:usesAxis>
            </gml:CartesianCS>
        </gml:usesCS>

        <gml:usesEngineeringDatum>
            <gml:EngineeringDatum gml:id="localDatum3D">
                <gml:datumName>Lokaal nulpunt – RD New referentie</gml:datumName>
            </gml:EngineeringDatum>
        </gml:usesEngineeringDatum>
    </gml:EngineeringCRS>

    <!-- Jouw gebouwfragment komt hier, na de CRS-definitie -->
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
