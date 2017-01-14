# Práctica 6


| Num int | Fuente  |
|---------|---------|
| 15 - 11 | no usada|
|   10    |   SPI   |
|    9    |   ADC   |
|    8    |   SSI   |
|    7    |   MACA  |
|    6    |   SPIF  |
|    5    |   TMR   |
|    4    |   I2C   |
|    3    |   CRM   |
|    2    |  UART2  |
|    1    |  UART1  |
|    0    |   ASM   |

## Mapa de interrupciones de memoria

Dirección base: 0x80020000

- INTENABLE: 0x80020010 (habilitar, deshabilitar todas las fuentes de interrupción en paralelo)
- INTENNUM:  0x80020008 (habilitar unas fuentes de interrupción)
- INTDISNUM: 0x8002000C (deshabilitar unas fuentes de interrupción)
- INTTYPE:   0X80020014 (registro de tipo de interrupción)
- NIVECTOR:  0X80020028 (registro de interrupción normal)
- FIVECTOR:  0X8002002C (registro de interrupciones rápidas)
- INTFRC:    0X80020034 (registro para forzar interrupciones)
- INTCNTL:   0X80020000 (registro de control de interrupción)

Variable para guardar el estado de habilitación de las interrupciones: drivers/itc.c como static

Se usa el INTTYPE para indicar el tipo de interrupción (I o Q). Si el bit se fija a 0 -> IRQ. Si el bit se fija a 1 -> FIQ.

`itc_handlers` declarada como `static` en `drivers/itc.c`. El driver debe incorporar funciones para asignar y consultar las ISR correspondientes a cada fuente de interrupción.


## Manejador de nivel 1
`itc_service_normal_interrupt`
`itc_service_fast_interrupt`

Hacen uso de la tabla de manejadores `itc_handlers` y de los registros `NIVECTOR` y `FIVECTOR`, que indican el número de fuente de interrupción activa más prioritaria en cada momento.


Debemos implementar: `itc_init`:
    - Inicializa a NULL la tabla `itc_handlers`
    - Inicializa `INTFRC` a 0 para que no se provoque ninguna instrucción simulada al activar el controlador
    - Poner a 0 todos los bits de `INTENABLE`, ya que inicialmente todas las fuentes de interrupción estarán deshabilitadas.
    - Poner a 0 los bits 19 y 20 del registro `INTCNTL` para activar el arbitraje de las IRQ y FIQ.
    
    
En `include/itc.h` está la definición de `itc_handler_t` como una función sin argumentos que no retorna nada.

¡IMPORTANTE!: Cuando se atiende una interrupción, hay que "marcarla" como atendida para que no se vuelva a atender de forma indefinida en bucle.
