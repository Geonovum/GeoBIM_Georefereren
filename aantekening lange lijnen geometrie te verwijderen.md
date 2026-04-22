
<mark>
Uit de ISO 19107: 
6.2.2.4 Underlying geometric space Geometry systems inherently make assumptions about the "space" in which the geometric objects are defined. </mark> 

Classical Euclidean geometry assumes that the objects line in an infinite flat plane represented, for example, by a Cartesian coordinate space with a standard Pythagorean metric. Geographic information if restricted to relatively small areas can be analyzed using classical Euclidean methods or algebraic calculations in a Cartesian coordinate space that depend on the 'flat' Pythagorean metric. the way lines in flat Euclidean spaces define distances in the Pythagorean metric. Thus, the distance between points on a sphere is defined by the length of the great circle on the sphere joining the two points. 

For ellipsoids, the geodesics are more complex, but they are defined as curves of shortest distances between points, and their length defines the metric on the underlying surface. The surfaces in most general use are: 
— Maps, — a relatively local map projection onto a 2D plane where Euclidean geometry properly scaled is a close approximation to reality, 
— Spheres – a 2-sphere with a fixed radius, allowing the use of classical spherical geometry and trigonometry, 
— Ellipsoids – a bi-radial surface of revolution using an ellipse of revolution whose minor axis is approximately aligned with the Earth's polar axis, or 
— Calculated GeometricReferenceSurfaces or Geoids – an adjustment of an ellipsoid to an equipotential surface of gravity to adjust for the variations in Earth's local density and thus it gravity potential. 

In ISO 19111 a sphere can be considered to be a special case of an ellipsoid and no distinction need be made between them for CRS definitions. In this International Standard a distinction is made because geometric calculations on a sphere use simpler formulas based on the symmetries of a sphere, e.g. those based on "great circles" geodesics, whereas many geometric calculations on an ellipsoid are more complex and may require the use of more complex approximations. An approximation is not necessarily less accurate than a closed-form formula, which will use polynomial approximation for trigonometric functions, but different implementations may treat these differently. Issues of local usage can adjust CRS's to work particular well based on a local best fit of the Reference Surface. 


For example, in the United States local mapping agencies often use State Plane Coordinate system specifically to preserve the accuracy of Euclidean geometry. To do this, there are 124 distinct state plane systems used to cover the country. Such a system could use the "Reference Surface — Plane" parameter for the coordinate conformance class. For larger areas, the effects of the Earth's curvature become significant even for primitive surveying systems. EXAMPLE: Much of the United States is surveyed using the Land Ordinance of 1785, which defines Public Land Survey System (PLSS) commonly called "the Jeffersonian Grid". In this system, major boundaries are defined by "equally spaced" horizontal (east-west) lines of constant latitude and vertical (north south) lines of constant longitude. Since these lines are generally the boundary lines between owned parcels, roads often follow them. Since the lines are space by distances (6 or 24 miles, approximately 10 or 38 kilometers), they misalign due to the curvature of the Earth, the north-south roads often "jog" (meaning a brief abrupt double change in direction, "left then quick right" or vice versa) when they cross the major east-west lines also being used as rights-of-way for other roads. The further away from the origin of the "grid" the greater the width of the "jog". Similarly, on any UTM projection, the meters easting and northing for a grid square would not be sufficient to calculate the area of that square with the distortion of the area dependent on the square's position. 

In other words, Euclidean-based intuition is inaccurate on a curved, and therefore non-Euclidean, surface. To make such calculations more accurate, a more accurate model of the Earth's surface is needed. The most common models involve 2D surfaces embedded in a 3D space. The 3D space is a Euclidean space, with a Pythagorean metric represented by Cartesian coordinates. The geometric/metric structure of the surfaces is inherited from the embedding 3D Cartesian space. On the surface, the distance between points is defined by curves of shortest distance lying on the surface that joins the points in question, similarly to the way lines in flat Euclidean spaces define distances in the Pythagorean metric. Thus, the distance between points on a sphere is defined by the length of the great circle on the sphere joining the two points. 

For ellipsoids, the geodesics are more complex, but they are defined as curves of shortest distances between points, and their length defines the metric on the underlying surface. The surfaces in most general use are: — Maps, — a relatively local map projection onto a 2D plane where Euclidean geometry properly scaled is a close approximation to reality, 
— Spheres – a 2-sphere with a fixed radius, allowing the use of classical spherical geometry and trigonometry, 
— Ellipsoids – a bi-radial surface of revolution using an ellipse of revolution whose minor axis is approximately aligned with the Earth's polar axis, or 
— Calculated GeometricReferenceSurfaces or Geoids – an adjustment of an ellipsoid to an equipotential surface of gravity to adjust for the variations in Earth's local density and thus it gravity potential. 

In ISO 19111 a sphere can be considered to be a special case of an ellipsoid and no distinction need be made between them for CRS definitions. In this International Standard a distinction is made because geometric calculations on a sphere use simpler formulas based on the symmetries of a sphere, e.g. those based on "great circles" geodesics, whereas many geometric calculations on an ellipsoid are more complex and may require the use of more complex approximations. An approximation is not necessarily less accurate than a closed-form formula, which will use polynomial approximation for trigonometric functions, but different implementations may treat these differently. 

Issues of local usage can adjust CRS's to work particular well based on a local best fit of the Reference Surface. For example, in the United States local mapping agencies often use State Plane Coordinate system specifically to preserve the accuracy of Euclidean geometry. To do this, there are 124 distinct state plane systems used to cover the country. Such a system could use the "Reference Surface — Plane" parameter for the coordinate conformance class.

Requirement 14: If the GeometricReferenceSurface is not embedded in a Euclidean space, then it
shall have either a Riemannian metric or some other mechanism to determine
distance and area metrics within a documented level of accuracy.

Moet je Rieman gebruiken? Of Vincenty's Formula? 

Because many curves are defined using standard calculus in a standard, flat, Euclidean space 𝔼2, a local
engineering CRS is required, which can then transform to the CRS of the data set. The most universally
applicable Engineering CRS is the tangent plane at a particular point, which maps back to the
GeometricReferenceSurface using the exponential map.
Let ct    xt , y t  be a curve, which is represented by a function 2 c :  . The variable t is any
continuous parameterization of the curve. The derivative
ct   xt , yt  (59)
is a vector in the tangent space of vectors at c(t). The length of the derivative tangent is given by the
Pythagorean Theorem (t and s increase in the same direction of the curve)
(Yvet eens contacten en Jantien, Hugo Ledoux?, (John Herring))

Vraag 1: In het werk: 
Volgens mij het probleem: Men modelleert in een 3D Cartesiaans Stelsel. Dit is ook hoe men het in de fabriek (Pre-Fab) zal maken. Stel dat het 100% aansluit zonder foutmarge, dan gaat het mis over een afstand "x". 

Stel dat men het op het werk maakt, men maakt bekisting en gebruikt een waterpas. Dan kan men geen Kubus maken! 

Of, het is niet waterpas, Of, het is geen kubus. Wanneer wordt dit een probleem? 

Hoe zit dat dan met gecalculeerde m3 asfalt in snelwegen? Of m3 beton? Of voor hoekcalculaties? Wanneer wordt dit een probleem? 

Vraag 2: Hoe BIM-modellen aan te passen? Kunnen we dit eens proberen met de A20 Corridor van Loek?