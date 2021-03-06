@
@ Sistemas Empotrados
@ El "hola mundo" en la Redwire EconoTAG
@

@
@ Punto de entrada
@

        .data
        
@ El LED rojo está en el GPIO 44 (el bit 12 de los registros GPIO_X_1)
@ El LED verde está en el GPIO 45
LED_RED_MASK: .word (1 << 12)
LED_GREEN_MASK: .word (1 << 13)
LED_ALL_MASK: .word (3 << 12)

@ Direcciones en los GPIO_X_0 de las entradas y salidas de los pulsadores
IN_S2: .word (1 << 23)
IN_S3: .word (1 << 22)
OUT_S2: .word (1 << 27)
OUT_S3: .word (1 << 26)
IN_ALL: .word (3 << 22)
OUT_ALL: .word (3 << 26)
        
@ Retardo para el parpadeo
DELAY: .word 0x00080000;

        .code 32
        .text
        .global _start
        .type   _start, %function
        .type   gpio_init, %function
        
gpio_init:
        @ Configuramos el GPIO44 y el GPIO45 para que ambos sean de salida
        ldr     r4, =GPIO_PAD_DIR1
        ldr     r3, =LED_ALL_MASK
        ldr     r3, [r3]
        str     r3, [r4]

        @ Configuramos salidas de los pulsadores con un 1
        ldr     r6, =GPIO_PAD_DIR0
        ldr     r7, =OUT_ALL
        ldr     r7, [r7]
        str     r7, [r6]
        ldr     r4, =GPIO_DATA_SET0
        str     r7, [r4]

        mov     pc, lr

@ En r5 escribe el LED a encender
@ r10 no puede sobreescribirse
test_buttons:
        @ Fija el valor del registro 5 dependiendo de los pulsadores
        ldr     r7, =GPIO_DATA0
        ldr     r7, [r7]
        ldr     r8, =IN_S2
        ldr     r8, [r8]
        and     r1, r7, r8
        teq     r1, r8
        ldreq   r5, =LED_RED_MASK
        ldreq   r5, [r5]
        
        ldr     r8, =IN_S3
        ldr     r8, [r8]
        and     r2, r7, r8
        teq     r2, r8
        ldreq   r5, =LED_GREEN_MASK
        ldreq   r5, [r5]

        @ Apagamos el LED no escogido
        ldr     r8, =LED_ALL_MASK
        ldr     r8, [r8]
        eor     r3, r5, r8
        str     r3, [r10]
        
        mov     pc, lr

        
_start:
        bl      gpio_init
        @ Direcciones de los registros GPIO_DATA_SET1 y GPIO_DATA_RESET1
        ldr     r6, =GPIO_DATA_SET1
        ldr     r10, =GPIO_DATA_RESET1
        ldr     r5, =LED_RED_MASK
        ldr     r5, [r5]
        
loop:
        @ Encendemos el led
        bl      test_buttons
        str     r5, [r6]

        @ Pausa corta
        ldr     r0, =DELAY
        ldr     r0, [r0]
        bl      pause

        @ Apagamos el led
        bl      test_buttons
        str     r5, [r10]

        @ Pausa corta
        ldr     r0, =DELAY
        ldr     r0, [r0]
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

