# Tooling
--- 

## IfcGref
IfcGref is a web-based software tool designed to set, enhance, and visualize the georeferencing of IFC (Industry Foundation Classes) models. IFC models often contain varying levels of georeferencing detail and geo information, ranging from a simple postal address (LoGeoRef10) to full projected coordinate reference system definitions (LoGeoRef50). The first step in IfcGref’s workflow is to detect the current geo information of an IFC file and determine what data is already georeferenced at the LoGeoRef50.

To improve accuracy, IfcGref allows users to input surveyed points. These are common points that exist both in the BIM model’s local Cartesian coordinates and in real-world coordinates from a chosen CRS. By aligning these two sets of points, IfcGref establishes a reliable link between the BIM environment and the Earth’s surface projection. The software then applies a Helmert transformation, which computes translations, rotation, and scale factors to align the two coordinate systems. This transformation is solved using the least squares method (via the SciPy library), ensuring that errors are minimized, especially when multiple surveyed points are provided.

Depending on the initial level of georeferencing in the IFC file, IfcGref can upgrade the model to LoGeoRef50. For example, two surveyed points are sufficient to georeference files that originally contain no geoinformation (LoGeoRef0–10), while only one additional surveyed point is required for models that already include partial georeferencing metadata (LoGeoRef20–40). To handle transformations between different geographic and projected coordinate systems, IfcGref uses the pyproj library, making the process robust across different regions and CRS definitions.

![IfcProjectedCRS attributen en waarden](media/ifcProjCRS.png "IfcProjectedCRS attributen en waarde")

![IfcMapConversion attributen en waarden](media/IfcMapconversion_attributen.png "IfcMapConversion attributen en waarde")

Finally, the IFC file is updated with georeferencing attributes, which the user can download and directly visualize on a map through IfcGref’s web interface. This allows users to verify the spatial alignment immediately.


![IfcGref visualization](media/ifcGref00.jpg "IfcGref visualization")


## IfcGeoRefChecker

https://github.com/dd-bim/City2BIM/tree/master/IFCGeoRefCheckerGUI
