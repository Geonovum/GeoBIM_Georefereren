# Voorbeeld van georeferentie in Python: 

Het is ook mogelijk om georeferentie te doen met python scripts. 

Transformeren met [Py-proj](https://pyproj4.github.io/pyproj): 

``` python 
from pyproj import Transformer

# Definieer de transformatie
transformer = Transformer.from_pipeline(
    "+proj=helmert +convention=coordinate_frame "
    "+x=154916.384 +y=462886.697 +s=229.695 +rx=-153603.216"
)

# Voorbeeldpunt
x_in, y_in = 500000, 200000

# Transformeer
x_out, y_out = transformer.transform(x_in, y_in)
print(x_out, y_out)

```


<aside class="example" title="Voorbeeld van python script voor georefereren IFC met IfcOpenShell">

Voorbeeld [IfcOpenshell](https://docs.ifcopenshell.org/autoapi/ifcopenshell/api/georeference/index.html#module-ifcopenshell.api.georeference): 
``` python
ifcopenshell.api.georeference.add_georeferencing(model)
# This is the simplest scenario, a defined CRS (GDA2020 / MGA Zone
# 56, typically used in Sydney, Australia) but with no local
# coordinates. This is only recommended for horizontal construction
# projects, not for vertical construction (such as buildings).
ifcopenshell.api.georeference.edit_georeferencing(model,
    projected_crs={"Name": "EPSG:7856"})

# For buildings, it is almost always recommended to specify map
# conversion parameters to a false origin and orientation to project
# north. See the diagram in the Bonsai Georeferencing
# documentation for correct calculation of the X Axis Abcissa and
# Ordinate.
ifcopenshell.api.georeference.edit_georeferencing(model,
    projected_crs={"Name": "EPSG:7856"},
    coordinate_operation={
        "Eastings": 335087.17, # The architect nominates a false origin
        "Northings": 6251635.41, # The architect nominates a false origin
        # Note: this is the angle difference between Project North
        # and Grid North. Remember: True North should never be used!
        "XAxisAbscissa": cos(radians(-30)), # The architect nominates a project north
        "XAxisOrdinate": sin(radians(-30)), # The architect nominates a project north
        "Scale": 0.99956, # Ask your surveyor for your site's average combined scale factor!
    })
```
</aside>