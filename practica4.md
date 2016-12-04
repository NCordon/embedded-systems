# Práctica 4

Para ejecutar una imagen cargándola a través del puerto serie de la placa:

~~~
mc1322x-load -f <imagen.bin> -t /dev/ttyUSB1
~~~

Esta herramienta inserta 4 bytes indicando el tamaño de la imagen al principio de la misma, y la copia a la placa.


Para borrar el firmware existente en la placa, por si ha ocurrido algún error durante el flasheo, ejecutamos:

~~~
bbmc -l redbee-econotag erase
~~~

