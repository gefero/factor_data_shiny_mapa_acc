![](img/logo.png)


## Introducción

## Metodología empleada
Para calcular las distancias agregadas a nivel de radio censal se replicó parte de la metodología para la construcción del [Índice de Vulnerabilidad Sanitaria](https://www.researchsquare.com/article/rs-10738/v1). 

* La cartorafía censal fue obtenida del [Instituto Nacional de Estadística y Censos](https://www.indec.gob.ar/)
* La información sobre la localización de los supermercados, almacenes, tiendas, bancos y cajeros automáticos fue obtenida de Google Places por [Antonio Vázquez Brust](https://www.linkedin.com/in/avazquez/?originalSubdomain=ar) y corresponde al año 2018
 

Para la confección del mapa se siguieron los siguientes pasos:

1. se utilizaron los últimos puntos dispoibles de lugares de Google Places (2018)
2. se filtraron las cinco categorías que se presentan 
3. para cada radio censal se meustrearon cinco puntos al azar,

- para cada punto se buscó el punto de cada categoría más cercano
- para cada punto y cada lugar cercano se calculó la distancia y el tempo a pie vía calles (no en línea recta) usando el servicio Open Streem Map Router
- se tomó el tiempo y la distancia mediana de los cinco puntos para cada categoría, es es la métrica que se grafica

## Descarga de datos
Para descargar el dataset a nivel radio censal

-![img/Download.png][/docs/data_uploaded/distancias_radios_sin_geom.csv)]


