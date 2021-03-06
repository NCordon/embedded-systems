# Práctica 2

Se pedía modificar el programa `hello.s` proporcionado por el profesor para que al presionar el pulsador S2 parpadeara el LED rojo de la placa, y al pulsar S3, el LED verde. Ambos pulsadores pueden consultarse en el esquemático de la placa para ver qué pines les corresponden.

A cada pulsador le corresponden dos pines. Habrá que fijar uno de ellos a 1, de modo que uno sea de entrada y otro de salida, y cuando pulsemos el pulsador, veamos en la entrada al chip un 1, lo cual querrá decir que se ha presionado el pulsador.

El código modificado, disponible en la carpeta [P2](./P2) se lista a continuación:

~~~
@
@ Sistemas Empotrados
@ El "hola mundo" en la Redwire EconoTAG
@

@
@ Constantes
@

        @ Registro de control de dirección del GPIO00-GPIO31
        @ Para fijar la direccion de los pines que gestionan los botones
        .set GPIO_PAD_DIR0,    0x80000000
        
        @ Registro de control de dirección del GPIO32-GPIO63
        @ Para fijar la direccion de los pines que gestionan los LEDS
        .set GPIO_PAD_DIR1,    0x80000004

        @ Registro de consulta del GPIO00-GPIO31
        @ Para comprobar la pulsacion de los botones
        .set GPIO_DATA0,       0x80000008

        @ Registro de activacion de bits del GPIO00-GPIO31
        @ Permite inicializar el valor de los pines de los pulsadores
        .set GPIO_DATA_SET0,   0x80000048

        @ Registro de activacion de bits del GPIO32-GPIO63
        @ Permite encender los LEDS
        .set GPIO_DATA_SET1,   0x8000004c

        @ Registro de limpieza de bits del GPIO32-GPIO63
        @ Permite apagar los LEDS
        .set GPIO_DATA_RESET1, 0x80000054

        @ El LED rojo está en el GPIO 44 (el bit 12 de los registros GPIO_X_1)
        @ El LED verde está en el GPIO 45
        .set LED_RED_MASK,     (1 << 12)
        .set LED_GREEN_MASK,   (1 << 13)
        .set LED_ALL_MASK,     (3 << 12)


        @ Direcciones en los GPIO_X_0 de las entradas y salidas de los pulsadores
        .set IN_S2,            (1 << 23)
        .set IN_S3,            (1 << 22)
        .set OUT_S2,           (1 << 27)
        .set OUT_S3,           (1 << 26)
        .set IN_ALL,           (3 << 22)
        .set OUT_ALL,          (3 << 26)
        
        @ Retardo para el parpadeo
        .set DELAY,            0x00080000

@
@ Punto de entrada
@

        .code 32
        .text
        .global _start
        .type   _start,         %function        
        .type   gpio_init,      %function
        .type   pause,          %function
        
gpio_init:
        @ Configuramos el GPIO44 y el GPIO45 para que ambos sean de salida
        ldr     r4, =GPIO_PAD_DIR1
        ldr     r3, =LED_ALL_MASK
        str     r3, [r4]

        @ Configuramos salidas de los pulsadores con un 1
        ldr     r6, =GPIO_PAD_DIR0
        ldr     r7, =OUT_ALL
        str     r7, [r6]
        ldr     r4, =GPIO_DATA_SET0
        str     r7, [r4]

        mov     pc, lr


        
test_buttons:
        @ Fija el valor del registro 5 dependiendo de los pulsadores
        ldr     r9, =GPIO_DATA0
        ldr     r7, [r9]
        and     r1, r7, #IN_S2
        teq     r1, #IN_S2
        ldreq   r5, =LED_RED_MASK

        ldr     r8, [r9]
        and     r2, r8, #IN_S3
        teq     r2, #IN_S3
        ldreq   r5, =LED_GREEN_MASK


        @ Apagamos el LED no escogido
        eor     r3, r5, #LED_ALL_MASK
        str     r3, [r10]
        
        mov     pc, lr

        
_start:
        bl      gpio_init
        @ Direcciones de los registros GPIO_DATA_SET1 y GPIO_DATA_RESET1
        ldr     r6, =GPIO_DATA_SET1
        ldr     r10, =GPIO_DATA_RESET1
        @ Inicialmente el LED rojo encendido
        ldr     r5, =LED_RED_MASK
        
loop:
        @ Encendemos el led
        bl      test_buttons
        str     r5, [r6]

        @ Pausa corta
        ldr     r0, =DELAY
        bl      pause

        @ Apagamos el led
        bl      test_buttons
        str     r5, [r10]

        @ Pausa corta
        ldr     r0, =DELAY
        bl      pause

        @ Bucle infinito
        b       loop
        
@
@ Función que produce un retardo
@ r0: iteraciones del retardo
@
pause:
        subs    r0, r0, #1
        bne     pause
        mov     pc, lr

~~~


El proceso empleado para depurar el código, a grandes rasgos, usando `gdb` desde Emacs ha sido el siguiente.

En una terminal independiente conectamos con `openocd` mediante la orden:
~~~
openocd -f interface/ftdi/redbee-econotag.cfg -f board/redbee.cfg
~~~

Desde Emacs:

~~~
M-x gdb
M-x gdb-many-windows

(gdb) target remote localhost:3333
(gdb) monitor soft_reset_halt
(gdb) load
// To execute one step
(gdb) s
// If we want to exit a function
(gdb) finish
~~~



