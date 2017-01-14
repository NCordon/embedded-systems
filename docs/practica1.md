# Práctica 1

Se pide encender la luz roja de la placa `Econotag`.

![Placa Econotag](./imgs/board.JPG)

Tenemos que conectarnos con `opencd` a la placa

~~~
openocd -f interface/ftdi/redbee-econotag.cfg -f board/redbee.cfg
~~~

Y hacer un `telnet` desde otra terminal para ejecutar órdenes con `opencd` en la placa:

~~~
telnet localhost 4444
~~~

Una vez conectados, reseteamos el `target` mediante:

~~~
> soft_reset_halt
~~~

Y seteamos los valores correspondientes al pin `GPIO_44` para habilitarlo como salida y para escribir un 1 en ella (encender la luz roja):

~~~
> mww 0x8000004c 0x1000
> mww 0x8000005c 0x1000
~~~

![Luz roja](./imgs/red_light.JPG)

Si queremos apagarla:

~~~
> mww 0x80000064 0x1000
~~~

Si queremos encender la luz verde, basta sustituir en lo anterior el valor `0x1000` por `0x2000`, y para ambas encendidas a la vez, por `0x3000`.


![Ambas luces encendidas](./imgs/all_lights.JPG)


To load the image of a program at the beginning of RAM we could do:

~~~
load_image "path/ficheros/hello/hello.elf" 0x00400000
~~~
