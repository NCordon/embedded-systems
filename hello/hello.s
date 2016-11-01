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
        .type   _start, %function        


        
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
        tst     r7, #IN_S2
        ldreq   r5, =LED_RED_MASK

        tst     r7, #IN_S3
        ldreq   r5, =LED_GREEN_MASK
        
        mov     pc, lr


        
_start:
        bl      gpio_init
        @ Direcciones de los registros GPIO_DATA_SET1 y GPIO_DATA_RESET1
        ldr     r6, =GPIO_DATA_SET1
        ldr     r7, =GPIO_DATA_RESET1
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
        str     r5, [r6]

        @ Pausa corta
        ldr     r0, =DELAY
        bl      pause

        @ Bucle infinito
        b       loop
        
@
@ Función que produce un retardo
@ r0: iteraciones del retardo
@
        .type   pause, %function
pause:
        subs    r0, r0, #1
        bne     pause
        mov     pc, lr

