<mark>
Wanneer men tekent in RD-NAP zou je eigenlijk rekening moeten houden met het feit dat een rechte lijn in RD-NAP in werkelijkheid geen rechte lijn is. Voor een lijn van 2 km is de horizontale uitbuiging maximaal 5 mm in Nederland. Dit is voor veel projecten verwaarloosbaar. Ook de lengte van lijnen in RD komt niet overeen met de lengte in de werkelijkheid. Wanneer men rechte lijn van 1 km tekent in RD-NAP, is dit in werkelijkheid een lijn die tot maximaal 9 cm langer of 10 cm korter is. Hier wordt in de BIM-modellering in RD NAP vaak geen rekening mee gehouden en zorgt vanwege de kleine afwijking vaak niet voor problemen voor constructie. 

Wanneer men modelleert in BIM in RD NAP en de conversie doet naar een GEO omgeving in RD NAP is een 1 op 1 conversie mogelijk. Bij lokale stelsels in BIM tekent men geroteerd en getransleerd RD NAP. De RDNAPTRANS transformeert het model naar de gekromde werkelijkheid. Alle punten uit het model worden hierbij omgerekend. De meeste software zal tussen deze punten rechte lijnen tekenen. De transformatie voorziet niet in de kromming van lijnen. Om problemen hiermee te voorkomen bestaat een (gnss-data.kadaster.nl/misc/docs/langelijnenadvies.pdf)[langelijnenadvies]. Dit document adviseert de maximale afstand tussen punten in een model, zodat de afwijking tussen de rechte lijnen tussen deze punten en de horizontale uitbuiging beperkt blijft. Ook zorgt dit ervoor dat de lijnen van het model in andere projecties de juiste vorm beter beschrijven. 

De verticale uitbuiging is groter, na 800 meter geeft dit een verschil van 1 cm **LET OP! er wordt in hoofdstuk projectie geschreven over 400 meter 1 cm. Maar dit geldt twee kanten op**. 8 meter bij 20 km lijn zonder tusenpunten. 
Voor een verticale uitbuiging van minder dan 1 cm mag de lengte van een lijnsegment niet meer dan 800 meter zijn. In veel BIM-modellen is dit het geval. 

Wanneer men het BIM-model niet naar RDNAP converteert maar met een 3D-Helmert via Geocentrisch naar Geografisch zal het BIM-model onvervomd blijven maar geen rekening houden met de kromming van de aarde. Dit leidt bij grote projecten tot problemen. 

Wanneer je gezamenlijk een digitale tweeling uit BIM-modellen willen maken. Federatief stelsel.
en iedereeen tekent in RD NAP en doet de transformatie RDNAPTRANS met voldoende tussenpunten kunnen we komen tot een landsdekkend, binnen nauwkeurigheid sluitend model.

De gemeten afstanden in BIM, de gemeten hoeken in BIM en de gemeten opperlvakten in BIM zullen na de RDNAPTRANS transformatie kleine verschillen vertonen. 
Dit betekent dat een weg van 20 km lang gemodelleerd in RD NAP BIM zonder correctie voor lijnvergroting in de werkelijkheid 2 meter langer of korter kan zijn. Het model zal na inmeting in RD NAP een afstand van 19.998 km kunnen tonen. 


Stel ik meet in BIM 10 meter (cartesisch) en ik meet in de werkelijkheid met een total station (cartesisch) met een meetlint meet je 10 meter (geodetische lijn). Deze verschillen (kleiner dan een mm) maken niet uit. Dit wordt opgelost in het werk. 

Als ik vervolgens mijn constructie inmeet. En ik heb alles met het meetlint gedaan. Dan is de afstand in 


Advies: Als je cartesisch tekent in een omgeving die via RDNAPTRANS is geimporteerd, dien je voor realisatie ook weer RDNAPTRANS te gebruiken. In theorie zou je alles wat je meet in BIM moeten corrigeren met de lijnvergrotingsformule. Ideale BIM-software zal dit in de software voor je oplossen. Of dit het geval is is niet bekend. 

Advies: Als je modelleert en de 3D-Helmert transformatie zonder schaalfactor doet. Kan je dit met een totalstation uitzetten/realiseren. Dit geeft geen problemen met de schaalfactor. Wel geeft dit problemen met verschillen tussen het BIM-model, de verticale kromming van de aarde en de RDNAPTRANS die een ander model zal tonen. 

De driehoekjes heb je drie keer. 1 Keer voor de lijnvergroting van de projectie. 1 Keer voor de uitbuiging x,y (horizontaal) en 1 keer voor de uitbuiging verticaal (z)
</mark>


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